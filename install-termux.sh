#!/data/data/com.termux/files/usr/bin/bash

# ========================================================
#                  ARTIST HUB SYSTEM
# ========================================================

clear
echo ""
echo "  ╔══════════════════════════════════════════════════╗"
echo "  ║                                                  ║"
echo "  ║              A R T I S T   H U B                 ║"
echo "  ║                                                  ║"
echo "  ║             INSTALLATION MANAGER                 ║"
echo "  ║                                                  ║"
echo "  ║                by Artist hub                     ║"
echo "  ║                                                  ║"
echo "  ╚══════════════════════════════════════════════════╝"
echo ""

echo "  [01] SYSTEM INITIALIZATION"
echo "  --------------------------------------------------"
echo "  [*] กำลังเตรียมระบบติดตั้ง..."
echo ""

# -----------------------------
# 1. ตรวจ Python
# -----------------------------

if ! command -v python >/dev/null 2>&1; then
    echo "  [*] ไม่พบ Python -> กำลังติดตั้ง..."
    pkg update -y
    pkg install python -y
else
    echo "  [OK] พบ Python แล้ว"
fi

# -----------------------------
# 2. ตรวจ pip
# -----------------------------

echo ""
echo "  [02] CHECKING PACKAGE MANAGER"
echo "  --------------------------------------------------"

if ! command -v pip >/dev/null 2>&1; then
    echo "  [*] ไม่พบ pip -> กำลังติดตั้ง..."
    pkg install python-pip -y
else
    echo "  [OK] พบ pip แล้ว"
fi

# -----------------------------
# 3. ตรวจไฟล์ dependencies
# -----------------------------

echo ""
echo "  [03] CHECKING INSTALLATION FILES"
echo "  --------------------------------------------------"

REQ_FILE="setup/requirements.txt"

if [ ! -f "$REQ_FILE" ]; then
    echo "  [!] ไม่พบไฟล์ $REQ_FILE"
    exit 1
fi

echo "  [OK] พบไฟล์ requirements.txt"
echo ""
echo "  =================================================="
echo "              by Artist hub"
echo "  =================================================="

# หมายเหตุ:
# ส่วนติดตั้ง dependencies และจัดการไฟล์เดิม
# ให้คงคำสั่งต้นฉบับไว้ในตำแหน่งเดิม
# เพื่อไม่ให้เปลี่ยนพฤติกรรมของโปรเจกต์โดยไม่ตั้งใจ

echo ""
echo "  [OK] ตรวจสอบไฟล์เบื้องต้นเสร็จแล้ว"
echo "  =================================================="
