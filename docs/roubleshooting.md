🛠️ JumpServer Troubleshooting Guide

This document provides solutions to common issues encountered during or after installing JumpServer with the official quick start script on Ubuntu.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

1. Docker Installation Issues

### Problem:
`docker` command not found or permission denied.

### Solutions:
- Ensure Docker is installed properly. Check with:
  ```bash
  docker --version
````

* If permission denied, make sure your user is in the `docker` group:

  ```bash
  sudo usermod -aG docker $USER
  newgrp docker
  ```
* Log out and back in if `newgrp` doesn’t work.

------------------------------------------------------------------------------------------------------------

## 2. Quick Start Script Fails to Download

### Problem:

`curl` fails with network or SSL errors.

### Solutions:

* Verify internet connection.
* Try downloading manually:

  ```bash
  sudo curl -v -sSL https://github.com/jumpserver/jumpserver/releases/latest/download/quick_start.sh -o quick_start.sh
  ```
* Check if corporate firewall or proxy blocks downloads.

---------------------------------------------------------------------------------------------------------------------------------

## 3. JumpServer Containers Won't Start or Crash

### Problem:

Containers exit or restart continuously.

### Solutions:

* Check container logs:

  ```bash
  docker logs <container_name>
  ```
* Verify ports (default 80/443) are not occupied by other services.
* Ensure enough system resources (CPU, RAM, Disk).
* Restart Docker service:

  ```bash
  sudo systemctl restart docker
  ```

---------------------------------------------------------------------------------------------------------------------------------

## 4. Cannot Access JumpServer Web UI

### Problem:

Browser times out or connection refused.

### Solutions:

* Confirm JumpServer containers are running:

  ```bash
  docker ps
  ```
* Verify firewall rules allow inbound traffic on ports 80/443.
* Use server’s IP or configured domain in browser.
* Check proxy or VPN settings that might block access.

-----------------------------------------------------------------------------------------------------------------------------------------

## 5. Forgot Admin Password

### Problem:

Lost or don’t know the default admin password.

### Solutions:

* Check the terminal output after running `quick_start.sh` — the password is usually displayed.
* If lost, reset password inside the JumpServer container:

  ```bash
  docker exec -it jumpserver_web python3 manage.py changepwd admin
  ```

  Then follow the prompts to set a new password.

--------------------------------------------------------------------------------------------------------------------------------------------

## 6. Data Persistence Issues

### Problem:

Data or configurations lost after container restart or update.

### Solutions:

* Confirm volumes are mounted correctly by inspecting Docker Compose files.
* Avoid deleting volumes accidentally.
* Backup volumes regularly.

------------------------------------------------------------------------------------------------------------------------------------

## 7. Script Uninstall Doesn’t Remove All Data

### Problem:

After running uninstall, some files or Docker volumes remain.

### Solutions:

* Manually remove leftover volumes:

  ```bash
  docker volume ls
  docker volume rm <volume_name>
  ```
* Delete `/opt/jumpserver` or related directories if safe.

------------------------------------------------------------------------------------------------------------------------------

## 8. Updates and Upgrades

### Problem:

Updating JumpServer causes errors or downtime.

### Recommendations:

* Always back up before updating.
* Follow official upgrade instructions from [JumpServer Docs](https://docs.jumpserver.org/).
* Use the quick start script carefully for updates, or perform manual upgrades.

------------------------------------------------------------------------------------------------------------------------------------

## 📞 Need More Help?

* JumpServer GitHub Issues: [https://github.com/jumpserver/jumpserver/issues](https://github.com/jumpserver/jumpserver/issues)
* JumpServer Discussions: [https://github.com/jumpserver/jumpserver/discussions](https://github.com/jumpserver/jumpserver/discussions)
* Official Documentation: [https://docs.jumpserver.org/](https://docs.jumpserver.org/)
