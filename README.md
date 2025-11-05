**<p align="center">A simple command-line tool to explore & stream your Jellyfin media right from terminal. 🚀</p>**

<https://github.com/user-attachments/assets/f0b47cb3-6e19-4cd1-929a-c38f8a9fb5cf>

### 🌟 Features

- **Browse & Search**: Interactively explore Jellyfin libraries or search across all content instantly
- **Continue Watching**: Resume playback from exactly where you left off
- **Next Up Queue**: See next episodes ready to stream
- **Media Previews**: View cover images + metadata (title, year, runtime, overview) while browsing
- **Multi-Format Support**: Stream movies & TV shows with season/episode navigation
- **Smart Progress Tracking**: Auto-mark watched (configurable %) & save resume positions
- **fzf Integration**: Smooth keyboard-driven terminal navigation with custom colors
- **Customizable Config**: Editor, player, preview settings, progress thresholds, FZF styling
- **Cross-Platform**: Works on Arch Linux, Debian/Ubuntu, macOS

### 📋 Requirements

- **Jellyfin Server**: v10.8+
- **Terminals**: Any terminal supporting ANSI colors (image previews best on kitty, xterm-kitty, or sixel-compatible terminals)
- **Dependencies**: `chafa curl fzf jq mpv socat`

---

### 📦 Installation

#### Arch Linux

Using `yay`:

```sh
yay -S jelly
```

Using `paru`:

```sh
paru -S jelly
```

#### macOS

```sh
brew tap AzureHound/jelly https://github.com/AzureHound/jelly.git
brew install jelly
```

#### Windows

> **NOTE:** _Jelly_ requires a Linux environment.
>
> Use WSL (Windows Subsystem for Linux) on Windows 10/11.

##### **Open WSL Terminal** & ensure you're on Arch/Debian/Ubuntu

```sh
git clone https://github.com/AzureHound/jelly.git
cd jelly
chmod +x ./install.sh
/install.sh
cd .. && rm -rf jelly
```

#### Build from Source

Arch Linux:

```sh
git clone https://github.com/AzureHound/jelly.git
cd jelly
makepkg -si
cd .. && rm -rf jelly
```

Debian/Ubuntu:

```sh
git clone https://github.com/AzureHound/jelly.git
cd jelly
chmod +x ./install.sh
/install.sh
cd .. && rm -rf jelly
```

---

### 🚀 Usage

Open a new terminal and run:

```sh
jelly
```

On first run, Jelly generates a **config** file at `~/.config/jelly/config`.
Edit it with your Jellyfin Server URL & API Key.

### 🛠️ API Key

1. Log in to your Jellyfin server as an Admin.
2. Go to **Dashboard** > **API Keys**.
3. Click **+**, add a description (e.g., "Jelly"), and **Generate**.
4. Copy the API key and paste it into your config file in `api_key`.

> [!TIP]
>
> **Tiling Window Manager users can use keybind**
>
> `bind = $hyper, J, exec, hyprctl dispatch exec "[size 90% 90%; center 1; float] $term jelly"`

### 📖 Wiki

- **[Configuration](../../wiki/Configuration)** – Setup config file, API key, & options
- **[Usage Guide](../../wiki/Usage)** – Main menu, navigation, and playback features
- **[Troubleshooting](../../wiki/Troubleshooting)** – Common issues and solutions

## Disclaimer

> [!IMPORTANT]
>
> This project currently fetches all its content from user hosted Jellyfin Server.
> The developer(s) of this application does not have any affiliation with the content providers available, and this application hosts zero content.
> [DISCLAIMER](https://github.com/AzureHound/jelly/blob/main/DISCLAIMER.md)

---

**<p align="center">🎉 Happy Streaming!</p>**

<p align="center">
 <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>
