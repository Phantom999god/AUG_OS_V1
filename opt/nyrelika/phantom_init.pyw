import subprocess, time
subprocess.Popen(["python3","-m","uvicorn","enavae_bridge:app","--host","0.0.0.0","--port","8000"], cwd="/opt/nyrelika")
subprocess.Popen(["python3","-m","http.server","8080"], cwd="/opt/nyrelika")
