#!/bin/bash
apt update && apt install -y python3-fastapi uvicorn
cp -r opt/nyrelika /opt/
cp configs/nyrelika.service /etc/systemd/system/
systemctl enable nyrelika
