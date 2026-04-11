#!/usr/bin/env bash
# ===================================================
#     PORTABLE AI - Multi-Model Setup (Linux)
# ===================================================

# Make terminal output pretty
RED='\033[0;31m'; YELLOW='\033[1;33m'; CYAN='\033[0;36m'; NC='\033[0m'

clear
echo -e "${CYAN}==================================================="
echo -e "     PORTABLE UNCENSORED AI - USB SETUP"
echo -e "===================================================${NC}"
echo ""
echo "This will download and configure AI models onto"
echo "your USB drive. You'll get to CHOOSE which models"
echo "to install from a curated list."
echo ""
echo "  - 6 preset models (uncensored + standard)"
echo "  - Custom model support (bring your own GGUF)"
echo "  - Minimum USB space: 16 GB (32 GB recommended)"
echo ""
echo "Make sure you have a good internet connection!"
echo ""
echo -e "${YELLOW}Press Enter to continue (Ctrl+C to cancel)...${NC}"
read -r

# Run the preflight check first to ensure we target the correct USB drive
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [[ -f "$SCRIPT_DIR/linux/preflight-check.sh" ]]; then
    bash "$SCRIPT_DIR/linux/preflight-check.sh"
    EXIT_CODE=$?
else
    # Fallback if preflight is missing
    bash "$SCRIPT_DIR/linux/install-core.sh"
    EXIT_CODE=$?
fi

echo ""
if [ $EXIT_CODE -eq 0 ]; then
    echo -e "${CYAN}==================================================="
    echo -e "     SETUP COMPLETE! You're ready to go!"
    echo -e "===================================================${NC}"
    echo ""
    echo "To start your AI, run:  bash start-linux.sh"
    echo "Or make it executable:  chmod +x start-linux.sh && ./start-linux.sh"
else
    echo -e "${RED}Setup encountered errors. Check the output above.${NC}"
    echo "You can re-run install.sh to retry failed downloads."
fi

echo ""
echo -e "${YELLOW}Press Enter to close...${NC}"
read -r
