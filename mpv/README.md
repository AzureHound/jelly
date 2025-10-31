`~/.config/mpv/`

```
 .
├──  fonts
│   ├──  fluent-system-icons.ttf
│   └──  material-design-icons.ttf
├── 󱁻 input.conf
├──  mpv.conf
├──  script-opts
│   ├── 󱁻 modernz.conf
│   ├── 󱁻 -sponsorblock-minimal.conf
│   ├── 󱁻 stats.conf
│   └── 󱁻 thumbfast.conf
├──  scripts
│   ├──  modernz.lua
│   └──  thumbfast.lua
└──  shaders
    ├──  adaptive-sharpen.glsl
    ├──  filmgrain.hook
    ├──  FSRCNNX_x2_8-0-4-1.glsl
    ├──  KrigBilateral.glsl
    ├──  SSimDownscaler.glsl
    └──  SSimSuperRes.glsl
```

### Clone the Repo

```sh
https://github.com/AzureHound/jelly.git
```

**Make sure to backup you existing mpv config**

```
mv ~/.config/mpv/ ~/.config/mpv.bak
```

**Move mpv Config**

```
mv jelly/mpv/* ~/.config/mpv/
```

Repo based on - <https://github.com/Samillion/ModernZ>
