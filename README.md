# AUG_OS_V1
Progress: 65%

## Test
cd opt/nyrelika
python3 -m uvicorn enavae_bridge:app --port 8000 &
python3 -m http.server 8080
# open http://localhost:8080
