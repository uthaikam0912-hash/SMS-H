#!/data/data/com.termux/files/usr/bin/bash

# ==========================================
#          ARTIST HUB | TERMINAL UI
# ==========================================

PROJECT_DIR="$HOME/SMS-Spam"

clear
echo ""
echo "  ╔══════════════════════════════════════════════════╗"
echo "  ║                                                  ║"
echo "  ║              A R T I S T   H U B                 ║"
echo "  ║                                                  ║"
echo "  ║               SYSTEM MANAGER                     ║"
echo "  ║                                                  ║"
echo "  ║                by Artist hub                     ║"
echo "  ║                                                  ║"
echo "  ╚══════════════════════════════════════════════════╝"
echo ""

# ==========================================
#             PROJECT VALIDATION
# ==========================================

echo "  [01] PROJECT VALIDATION"
echo "  --------------------------------------------------"
echo "  [*] ตรวจสอบตำแหน่งโปรเจกต์..."
echo ""

if [ ! -d "$PROJECT_DIR" ]; then
    echo "  [ERROR] ไม่พบโฟลเดอร์โปรเจกต์"
    echo "  [PATH]  $PROJECT_DIR"
    exit 1
fi

echo "  [OK] พบโฟลเดอร์โปรเจกต์แล้ว"
echo "  [PATH] $PROJECT_DIR"
echo ""

# ==========================================
#              STATUS DISPLAY
# ==========================================

echo "  ╔══════════════════════════════════════════════════╗"
echo "  ║                  SYSTEM STATUS                   ║"
echo "  ╠══════════════════════════════════════════════════╣"
echo "  ║                                                  ║"
echo "  ║  [OK] Project directory verified                 ║"
echo "  ║  [--] Update status not checked                  ║"
echo "  ║  [--] Web server not started                     ║"
echo "  ║                                                  ║"
echo "  ╠══════════════════════════════════════════════════╣"
echo "  ║                                                  ║"
echo "  ║                by Artist hub                     ║"
echo "  ║                                                  ║"
echo "  ╚══════════════════════════════════════════════════╝"
echo ""
