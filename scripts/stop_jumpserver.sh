#!/bin/bash
set -e

echo "[!] Stopping JumpServer..."
docker compose -f configs/docker-compose.yml --env-file configs/jumpserver.env down
echo "[✔] JumpServer stopped."
