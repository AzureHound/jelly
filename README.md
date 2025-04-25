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
   chmod +x jelly
   mkdir -p ~/.local/bin
   mv jelly ~/.local/bin/
   ```

3. Install `curl jq fzf mpv`:

   ```bash
   sudo apt install curl jq fzf mpv  # For Debian/Ubuntu
   ```

   ```bash
   sudo pacman -S curl jq fzf mpv  # For Arch Linux
   ```

---

## 🔧 Setup

Create a config file at `~/.config/jelly/config`:

```ini
server_url=http://your-jellyfin-server:8096
api_key=your-api-key
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
