#!/bin/bash

echo "=========================================="
echo "Initializing Cyber Defense Pipeline..."
echo "=========================================="

# 1. Generate a synthetic log file mimicking a real web server under attack
echo "[*] Generating synthetic threat telemetry..."
cat << 'EOF' > server_telemetry.log
2026-06-24 10:00:00 | 192.168.1.50 | SEARCH | 200 | query=shoes
2026-06-24 10:00:01 | 10.0.0.99 | LOGIN | 401 | user=admin pass=123
2026-06-24 10:00:02 | 10.0.0.99 | LOGIN | 401 | user=admin pass=admin
2026-06-24 10:00:03 | 10.0.0.99 | LOGIN | 401 | user=admin pass=root
2026-06-24 10:00:04 | 10.0.0.99 | LOGIN | 401 | user=admin pass=password
2026-06-24 10:00:05 | 10.0.0.99 | LOGIN | 401 | user=admin pass=qwerty
2026-06-24 10:00:06 | 172.16.0.5 | SEARCH | 200 | query=1' UNION SELECT * FROM users --
EOF

# 2. Execute the Python SIEM engine
if command -v python3 &>/dev/null; then
    echo "[+] Booting Python SIEM/IPS Engine..."
    echo "------------------------------------------"
    python3 defense_engine.py
else
    echo "[-] Error: python3 is not installed or not in PATH."
    exit 1
fi

echo "=========================================="
echo "Simulation Complete."
echo "=========================================="