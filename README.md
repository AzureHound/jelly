# 🎬 Jelly

<https://github.com/user-attachments/assets/f0b47cb3-6e19-4cd1-929a-c38f8a9fb5cf>

**<p align="center">A simple command-line tool to explore & stream your Jellyfin media right from terminal. 🚀</p>**

### 🌟 Features

- **Browse & Search**: Interactively explore Jellyfin libraries or search across all content instantly
- **Continue Watching**: Resume playback from exactly where you left off
- **Next Up Queue**: See next episodes ready to stream
- **Media Previews**: View cover images + metadata (title, year, runtime, overview) while browsing
- **Multi-Format Support**: Stream movies & TV shows with season/episode navigation
- **Smart Progress Tracking**: Auto-mark watched (configurable %) & save resume positions
- **Dual Player Support**: mpv (Linux) or IINA (macOS)
- **fzf Integration**: Smooth keyboard-driven terminal navigation with custom colors
- **Customizable Config**: Editor, player, preview settings, progress thresholds, FZF styling
- **Cross-Platform**: Works on Arch Linux, Debian/Ubuntu, Fedora, macOS

### 📋 Requirements

- **Jellyfin Server**: v10.8+
- **Terminals**: Any terminal supporting ANSI colors (image previews best on kitty, xterm-kitty, or sixel-compatible terminals)
- **Dependencies**: `chafa`, `curl`, `fzf`, `jq`, `mpv` (or `iina` on macOS), `socat`

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

#### Build from Source

1. Clone the repository & build the package:

   ```sh
   git clone https://github.com/AzureHound/jelly.git
   cd jelly
   makepkg -si
   cd .. && rm -rf jelly
   ```

2. Install `chafa curl fzf jq mpv socat` [dependencies]:

For Arch Linux:

```sh
sudo pacman -S chafa curl fzf jq mpv socat
```

For Debian/Ubuntu:

```sh
sudo apt install chafa curl fzf jq mpv socat
```

For Fedora:

```sh
sudo dnf install chafa curl fzf jq mpv socat
```

For macOS:

```sh
brew install chafa curl fzf jq mpv socat
brew install --cask iina  # Recommended media player for macOS
```

---

### 🚀 Usage

Open a new terminal and run:

```sh
jelly
```

On first run, Jelly generates a **config** file at `~/.config/jelly/config`.
Edit it with your Jellyfin Server URL & API Key.

### 🛠️ Jellyfin API Key

1. Log in to your Jellyfin server as an Admin.
2. Go to **Dashboard** > **API Keys**.
3. Click **+**, add a description (e.g., "Jelly"), and **Generate**.
4. Copy the API key and paste it into your config file in `api_key`.

### 📖 Documentation

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
