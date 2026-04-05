#!/bin/bash
# ================================================================
# PORTABLE UNCENSORED AI - LINUX LAUNCHER
# ================================================================
# Run this script to start your portable AI from the USB drive.
# Everything runs from the USB — nothing installed on the host.
# Press Ctrl+C or Enter to shut down cleanly.
# ================================================================

cd "$(dirname "$0")"
USB_DIR="$(pwd)"

OLLAMA_BIN="$USB_DIR/ollama_linux/ollama"
OLLAMA_MODELS="$USB_DIR/ollama_linux/data"
APPIMAGE="$USB_DIR/anythingllm/AnythingLLM.AppImage"
STORAGE_DIR="$USB_DIR/anythingllm_data"

echo "==================================================="
echo "   Launching Portable AI Engine from USB (Linux)   "
echo "==================================================="

# ---- Check everything exists ----
if [ ! -f "$OLLAMA_BIN" ]; then
    echo "Error: Ollama binary not found at $OLLAMA_BIN"
    echo "Please run install.sh first to download everything."
    exit 1
fi

if [ ! -f "$APPIMAGE" ]; then
    echo "Error: AnythingLLM AppImage not found at $APPIMAGE"
    echo "Please run install.sh first to download everything."
    exit 1
fi

# ---- Set up portable paths ----
export OLLAMA_MODELS="$OLLAMA_MODELS"
export STORAGE_DIR="$STORAGE_DIR"
mkdir -p "$OLLAMA_MODELS"
mkdir -p "$STORAGE_DIR"

# ---- Start Ollama in background ----
echo "Starting Ollama Engine..."
"$OLLAMA_BIN" serve > /dev/null 2>&1 &
OLLAMA_PID=$!

sleep 3

# ---- Launch AnythingLLM ----
echo "Starting AnythingLLM Interface..."
if command -v xdg-open > /dev/null 2>&1; then
    STORAGE_DIR="$STORAGE_DIR" "$APPIMAGE" &
    ANYTHING_PID=$!
else
    echo "Error: Could not find xdg-open. Please install it or launch the AppImage manually."
fi

echo ""
echo "==================================================="
echo "   SYSTEM ONLINE: Your AI is running from the USB!  "
echo "==================================================="
echo ""
echo "Keep this terminal open while you chat!"
echo "Press [ENTER] to shut down the AI safely."
echo ""

# ---- Wait for user, then clean shutdown ----
read -p ""

echo "Shutting down..."
kill $OLLAMA_PID 2>/dev/null
kill $ANYTHING_PID 2>/dev/null
wait $OLLAMA_PID 2>/dev/null
wait $ANYTHING_PID 2>/dev/null
echo "AI shut down. You may safely eject the USB."
