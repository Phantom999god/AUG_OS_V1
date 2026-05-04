#!/bin/bash
cd "$(dirname "$0")"
echo "[ AUG_OS_V1 ] Starting Nyrelika Bridge..."
pkill -f "uvicorn opt.nyrelika" 2>/dev/null
pkill -f "http.server 8080" 2>/dev/null
python3 -m pip install -r requirements.txt --quiet
python3 -m uvicorn opt.nyrelika.enavae_bridge:app --host 0.0.0.0 --port 8000 &
sleep 2
python3 -m http.server 8080 --bind 0.0.0.0 &
echo ""
echo "✓ Bridge: http://localhost:8000"
echo "✓ UI: http://localhost:8080/opt/nyrelika/"
echo "✓ Phantom icon loaded"
echo ""
wait
