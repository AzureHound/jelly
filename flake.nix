{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:

    let
      systems = [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-darwin"
        "x86_64-linux"
      ];
      forAllSystems = nixpkgs.lib.genAttrs systems;
    in

    {
      packages = forAllSystems (
        system:
        let
          pkgs = import nixpkgs { inherit system; };
        in

        {
          default = pkgs.stdenv.mkDerivation {
            pname = "jelly";
            version = "3.5.0";
            src = ./.;
            nativeBuildInputs = [ pkgs.makeWrapper ];
            installPhase = ''
              install -Dm755 src/jelly $out/bin/jelly

              wrapProgram $out/bin/jelly \
                --prefix PATH : ${
                  pkgs.lib.makeBinPath (
                    with pkgs;
                    [
                      chafa
                      curl
                      fzf
                      jq
                      mpv
                      socat
                    ]
                  )
                }
            '';
          };
        }
      );

      homeManagerModules.default =
        {
          config,
          lib,
          pkgs,
          options,
          ...
        }:

        let
          cfg = config.programs.jelly;

          configFileContent = apiKey: ''
            server=${cfg.server}
            api_key=${apiKey}
            editor=${cfg.editor}
            media_preview=${lib.boolToString cfg.mediaPreview}
            autoplay_next_episode=${lib.boolToString cfg.autoplayNextEpisode}
            mark_continue_percentage=${toString cfg.markContinuePercentage}
            mark_watched_percentage=${toString cfg.markWatchedPercentage}

            FZF_DEFAULT_OPTS='
            ${cfg.fzfDefaultOpts}'
            ${cfg.extraConfig}
          '';
        in

        {
          options.programs.jelly = {
            enable = lib.mkEnableOption "jelly";
            package = lib.mkOption {
              type = lib.types.package;
              default = self.packages.${pkgs.stdenv.hostPlatform.system}.default;
            };
            server = lib.mkOption { type = lib.types.str; };
            apiKey = lib.mkOption {
              type = lib.types.nullOr lib.types.str;
              default = null;
            };
            apiKeySopsSecret = lib.mkOption {
              type = lib.types.nullOr lib.types.str;
              default = null;
            };
            editor = lib.mkOption {
              type = lib.types.str;
              default = "vim";
            };
            mediaPreview = lib.mkOption {
              type = lib.types.bool;
              default = true;
            };
            autoplayNextEpisode = lib.mkOption {
              type = lib.types.bool;
              default = true;
            };
            markContinuePercentage = lib.mkOption {
              type = lib.types.int;
              default = 5;
            };
            markWatchedPercentage = lib.mkOption {
              type = lib.types.int;
              default = 95;
            };
            fzfDefaultOpts = lib.mkOption {
              type = lib.types.str;
              default = ''
                --color=fg:#cad3f5,fg+:#cad3f5,bg:-1,bg+:-1,gutter:#24273a
                --color=header:#8aadf4,hl:#eed49f,hl+:#a6da95,query:#a6da95
                --color=prompt:#c6a0f6,pointer:#a6da95,info:#f4dbd6
                --color=border:#494d64,separator:#b7bdf8,scrollbar:#f0c6c6
                --prompt="󰥨 Search: " --pointer="❯" --separator="─" --scrollbar="│"
                --height=100% --padding=1
              '';
            };
            extraConfig = lib.mkOption {
              type = lib.types.lines;
              default = "";
            };
          };

          config = lib.mkIf cfg.enable (
            lib.mkMerge [
              { home.packages = [ cfg.package ]; }
              (lib.mkIf (cfg.apiKey != null) {
                xdg.configFile."jelly/config".text = configFileContent cfg.apiKey;
              })
              (lib.mkIf (cfg.apiKeySopsSecret != null && options ? sops) {
                sops.templates."jelly-config" = {
                  path = "${config.xdg.configHome}/jelly/config";
                  content = configFileContent config.sops.placeholder.${cfg.apiKeySopsSecret};
                };
              })
            ]
          );
        };
    };
}
