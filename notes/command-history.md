# 📜 JumpServer Installation Command History

This document captures the essential shell commands used during the manual installation and debugging of JumpServer using the official quick start script.

---

## 🗂️ Initial Setup and Downloads

```bash
cd /opt
sudo curl -sSL https://github.com/jumpserver/jumpserver/releases/latest/download/quick_start.sh -o quick_start.sh
sudo chmod +x quick_start.sh
sudo ./quick_start.sh
```

---

## 🌐 Network Debugging

```bash
ping google.com
ip a
ip route
sudo ip route del default via 192.168.56.1
ping google.com
```

---

## 🧹 Folder Cleanup & Reinstall

```bash
sudo mv /opt/jumpserver-installer-v4.10.10 /opt/jumpserver-installer-old
sudo mkdir /opt/jumpserver-installer
cd /opt/jumpserver-installer
sudo curl -sSL https://github.com/jumpserver/jumpserver/releases/latest/download/quick_start.sh -o quick_start.sh
sudo chmod +x quick_start.sh
sudo ./quick_start.sh
```

---

## 🐳 Docker Compose Lifecycle

```bash
sudo docker compose down
sudo docker compose up -d
sudo nano docker-compose.yml
sudo nano .env
```

---

## 🔁 Reconfig / Restart

```bash
sudo mv /opt/jumpserver-installer-old /opt/jumpserver-installer-old-backup
sudo mv /opt/jumpserver-installer-v4.10.10 /opt/jumpserver-installer-v4.10.10-backup
sudo rm -rf /opt/jumpserver-installer
sudo mkdir /opt/jumpserver-installer
cd /opt/jumpserver-installer
sudo curl -sSL https://github.com/jumpserver/jumpserver/releases/latest/download/quick_start.sh -o quick_start.sh
sudo chmod +x quick_start.sh
sudo ./quick_start.sh
```

---

## ⚠️ Port Conflict Debug

```bash
sudo lsof -i :80
sudo systemctl stop apache2
```

---

## 🔁 Legacy Installer Script

```bash
cd /opt/jumpserver-installer-v4.10.10
./jmsctl.sh restart
```

---

## 📁 Folder Navigation

```bash
cd /opt
ls
cd jumpserver/
sudo ls /opt/jumpserver/
sudo cat /opt/jumpserver/config
sudo ls /opt/jumpserver/config
```

---

## 🔍 Search for Compose File

```bash
sudo find / -name docker-compose.yml
```

---

## 🔄 JumpServer Legacy Scripts

```bash
cd jumpserver-installer-v4.10.10-backup/scripts/
ls
cd docker/
cat docker.service
```

---

## 📜 View Quick Start Script

```bash
cat quick_start.sh
```

---

## 🧠 End of Command History

```bash
history
```
