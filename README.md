# 🚀 JumpServer Deployment (Docker-Based)

This repository provides a complete setup for deploying [JumpServer](https://www.jumpserver.org/) — an open-source bastion host (jump server) — using **Docker Compose**.

It includes:

- 🐳 Docker Compose config
- 📂 Environment variable templates
- 🖥️ Start/Stop/Backup scripts
- 🛠️ Troubleshooting guide
- 📜 Real-world command history

---

## 📁 Repository Structure

```
│
├── README.md
├── docs/
│ ├── 01-Network-Setup.md
│ ├── 02-Docker-Install.md
│ ├── 03-JumpServer-Install.md
│ └── 04-Troubleshooting.md
│
├── configs/
│ ├── docker-compose.yml
│ └── jumpserver.env
│
├── scripts/
│ ├── start_jumpserver.sh
│ ├── stop_jumpserver.sh
│ └── backup_jumpserver.sh
│
├── notes/
│ └── commands_history.txt
│
└── screenshots/
├── dashboard.png
├── policy.png
└── asset_access.png
```

---

## ⚙️ Prerequisites

- Ubuntu 20.04 or 22.04
- Docker installed (`sudo apt install docker.io`)
- Docker Compose plugin installed
- Ports `80`, `443`, `3306`, `6379` should be free

---

## 🚀 Quick Start

1. **Clone the repo**

```bash
git clone https://github.com/yourusername/jumpserver-setup.git
cd jumpserver-setup
```

2. **Prepare environment file**

```bash
cp configs/jumpserver.env.example configs/jumpserver.env
# Then edit configs/jumpserver.env with your secrets
```

3. **Start JumpServer**

```bash
./scripts/start_jumpserver.sh
```

4. **Access Web UI**

Open your browser and go to:  
👉 `http://<your-server-ip>`

Login credentials are usually shown after the first start.

---

## 🖥️ Management Scripts

| Script                  | Description                                 |
|-------------------------|---------------------------------------------|
| `start_jumpserver.sh`   | Start all JumpServer containers             |
| `stop_jumpserver.sh`    | Stop all containers                         |
| `backup_jumpserver.sh`  | Backup volumes and env config               |

Make them executable if needed:

```bash
chmod +x scripts/*.sh
```

---

## 🛠️ Troubleshooting

A full troubleshooting guide is available:

📄 [Troubleshooting.md](./Troubleshooting.md)

Covers issues like:

- Docker not starting
- Port conflicts (Apache using port 80)
- Access issues with Web UI
- Admin password reset
- Volume backups & persistence

---

## 📜 Command History

Want to know what exact shell commands were run to install and debug this setup?

📄 [command-history.md](./command-history.md)

---

## 📦 Backup & Restore

To back up your data (MySQL, Redis, JumpServer volume):

```bash
./scripts/backup_jumpserver.sh
```

Backups are stored in the `backups/` directory with timestamped `.tar.gz` files and a copy of the `.env`.

---

## 🧼 Uninstall / Cleanup

To stop and remove containers:

```bash
./scripts/stop_jumpserver.sh
```

To delete volumes:

```bash
docker volume ls
docker volume rm <volume_name>
```

---

## 📚 Official Resources

- 🔗 [JumpServer Docs](https://docs.jumpserver.org/)
- 🐙 [JumpServer GitHub](https://github.com/jumpserver/jumpserver)

---

## 📄 License

This project is provided under the MIT License.

---

> Maintained by: Harsimranjit Singh
