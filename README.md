# 🎬 Jellyfin CLI Tool 🍿

### Showcase

<https://github.com/user-attachments/assets/1f43a895-11aa-4796-abd4-ec222c1ee7cb>

A lightweight command-line tool to explore and stream your Jellyfin media directly in the terminal. 🚀

---

## 🌟 Features

- Browse your Jellyfin libraries interactively.
- Search and play movies or shows instantly.
- Smooth terminal navigation with `fzf`.

---

## 📦 Installation

### Install via AUR (Arch Linux)

```bash
yay -S jelly
```

### Build from Source

1. Clone the repository & build the package:

   ```bash
   git clone https://github.com/AzureHound/jelly.git
   cd jelly
   makepkg -si
   ```

2. Install `curl jq fzf mpv` [dependencies]:

For Arch Linux:

```bash
sudo pacman -S curl jq fzf mpv
```

For Debian/Ubuntu:

```bash
sudo apt install curl jq fzf mpv
```

For Fedora:

```bash
sudo dnf install curl jq fzf mpv
```

For macOS:

```bash
brew install curl jq fzf
brew install --cask iina  # Recommended media player for macOS
```

---

## 🔧 Setup

Create a config file at `~/.config/jelly/config`:

```ini
server=http://your-jellyfin-server:8096
api_key=your-api-key
player=mpv  # Use 'mpv' for Linux
```

For macOS, replace `player=mpv` with:

```ini
player=iina  # Use 'iina' for macOS
```

Replace `your-jellyfin-server` and `your-api-key` with your Jellyfin server details.

### 🛠️ Get Your Jellyfin API Key

1. Log in to your Jellyfin server as an admin.
2. Go to **Dashboard** > **API Keys**.
3. Click **+**, add a description (e.g., "CLI Tool"), and **Generate**.
4. Copy the API key and paste it into your config file under `api_key`.

---

## 🚀 Usage

Open a new terminal and run:

```bash
jelly
```

Enjoy browsing and streaming your media right from the terminal!

---

🎉 **Happy Streaming!**

## Disclaimer

> [!IMPORTANT]
>
> This project currently fetches all it's content from user hosted Jellyfin Server.
> The developer(s) of this application does not have any affiliation with the content providers available, and this application hosts zero content.
> [DISCLAIMER](https://github.com/AzureHound/jelly/blob/main/DISCLAIMER.md)
