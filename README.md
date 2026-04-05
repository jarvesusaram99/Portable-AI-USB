# 🔒 Portable Uncensored AI — Runs Entirely from a USB Drive

A **fully private, portable, uncensored AI assistant** that runs 100% from a USB flash drive. No internet needed after setup. No data leaves the USB. Works on all three platforms: **Windows**, **Mac**, and **Linux**.


## 📺 Watch the Tutorial

[![Portable AI USB Tutorial](https://img.youtube.com/vi/cqrMfO6AZRU/maxresdefault.jpg)](https://youtu.be/cqrMfO6AZRU)

## ⚡ What's Inside

| Component | Purpose |
|-----------|---------|
| **Dolphin 2.9 LLaMA 3 8B** | Uncensored AI model (~5.7 GB) |
| **Ollama** | Lightweight AI engine that runs the model |
| **AnythingLLM** | Beautiful chat interface |

## 🚀 Setup (One Time Only)

### What You Need
- A USB flash drive with **at least 16 GB** of free space (32 GB recommended)
- Format the USB as **exFAT** (works on both Windows and Mac)
- An internet connection for the initial download (~6 GB total)

### Steps

1. **Download this repo** and copy ALL files to your USB drive
2. **Double-click `install.bat`** on the USB drive
3. Wait for everything to download (~15-30 minutes depending on internet speed)
4. **Done!** Your portable AI is ready to use

## ▶️ How to Use

### On Windows
- Double-click **`start-windows.bat`** on the USB drive
- The AnythingLLM chat window will open automatically
- Keep the black terminal window open while chatting
- Press any key in the terminal to safely shut down

### On Mac
- Double-click **`start-mac.command`** on the USB drive  
- First time: It will automatically download the Mac engine (~2 min)
- The AnythingLLM window will open automatically
- Press ENTER in the terminal to safely shut down

### On Linux
- Run **`./start-linux.sh`** from the terminal on the USB drive
- First time: It will automatically download the Linux engine (~2 min)
- The AnythingLLM AppImage window will open automatically
- Press ENTER in the terminal to safely shut down

## 🔐 Privacy

- **Zero footprint** — nothing is installed on the host computer
- All AI data, chats, and settings stay on the USB drive
- Works completely offline after initial setup
- No telemetry, no cloud, no tracking

## 📁 USB Drive Structure (After Setup)

```
USB Drive/
├── install.bat             ← Run this first (one time only)
├── install-core.ps1        ← Setup script (called by install.bat)
├── install.sh              ← Linux setup script
├── start-windows.bat       ← Windows launcher
├── start-mac.command       ← Mac launcher
├── start-linux.sh          ← Linux launcher
├── ollama/                 ← AI engine (Windows)
├── ollama_mac/             ← AI engine (Mac, auto-downloaded)
├── ollama_linux/           ← AI engine (Linux, auto-downloaded)
├── models/                 ← AI model files
├── anythingllm/            ← Chat interface app
└── anythingllm_data/       ← Your chats & settings (portable!)
```

## ⚠️ Important Notes

- **First launch on a new computer** may take 30-60 seconds to load
- The AI runs on your **CPU** — responses take 10-30 seconds depending on hardware
- If you have a **GPU**, responses will be much faster
- Always **safely eject** the USB before unplugging

## 📜 License

MIT License — See [LICENSE](LICENSE) for details.
