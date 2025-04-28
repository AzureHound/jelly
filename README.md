# 🎬 Jellyfin CLI Tool 🍿

A lightweight command-line tool to explore and stream your Jellyfin media directly in the terminal. 🚀

---

## 🌟 Features

- Browse your Jellyfin libraries interactively.
- Search and play movies or shows instantly.
- Smooth terminal navigation with `fzf`.

---

## 📦 Installation

1. Clone and enter the repository:

   ```bash
   git clone https://github.com/AzureHound/jelly.git
   cd jelly
   ```

2. Make the script executable and move it to your `$PATH`:

   ```bash
   mv jelly /usr/local/bin/
   chmod +x /usr/local/bin/jelly
   ```

3. Install `curl jq fzf mpv`:

   ```bash
   sudo pacman -S curl jq fzf mpv  # For Arch Linux (via pacman)
   ```

   ```bash
   yay -S curl jq fzf mpv  # For Arch Linux (via yay)
   ```

   ```bash
   sudo apt install curl jq fzf mpv  # For Debian/Ubuntu
   ```

   ```bash
   sudo dnf install curl jq fzf mpv  # For Fedora
   ```

   ```bash
   brew install curl jq fzf  # For macOS
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

Simply run:

```bash
jelly
```

Enjoy browsing and streaming your media right from the terminal!

---

🎉 **Happy Streaming!**
