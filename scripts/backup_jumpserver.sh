#!/bin/bash
set -e

BACKUP_DIR="backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_PATH="$BACKUP_DIR/jumpserver_backup_$TIMESTAMP.tar.gz"

mkdir -p "$BACKUP_DIR"

echo "[📦] Backing up JumpServer volumes and env files..."

docker run --rm \
  -v jumpserver_core_data:/core_data \
  -v jumpserver_mysql_data:/mysql_data \
  -v jumpserver_redis_data:/redis_data \
  -v "$(pwd)/$BACKUP_DIR":/backup \
  alpine \
  tar czvf "/backup/jumpserver_backup_$TIMESTAMP.tar.gz" /core_data /mysql_data /redis_data

cp configs/jumpserver.env "$BACKUP_DIR/jumpserver.env.$TIMESTAMP.bak"

echo "[✔] Backup completed: $BACKUP_PATH"
