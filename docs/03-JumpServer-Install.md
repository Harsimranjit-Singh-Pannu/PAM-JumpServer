# 🛡️ Install JumpServer on Ubuntu (Quick Start Script)

[JumpServer](https://www.jumpserver.org/) is an open-source bastion host (jump server) that provides secure access, auditing, and management for your IT infrastructure.

This guide walks you through the **quick installation** of JumpServer using the official script from their GitHub releases.

---

## 📋 Prerequisites

- ✅ Ubuntu or another Linux distribution
- ✅ Docker and Docker Compose installed
- ✅ Root or sudo privileges
- ✅ Internet access

---

## 📦 Installation Steps

### 1. Navigate to the `/opt` Directory

The `/opt` directory is a standard location for third-party applications.

```bash
cd /opt
# Download the latest quick start script
sudo curl -sSL https://github.com/jumpserver/jumpserver/releases/latest/download/quick_start.sh -o quick_start.sh

# Make the script executable
sudo chmod +x quick_start.sh

# Run the installation script
sudo ./quick_start.sh
