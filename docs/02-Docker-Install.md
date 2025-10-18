🚀 Install Docker on Ubuntu

This guide provides step-by-step instructions to install Docker Engine, Docker CLI, and Docker Compose Plugin on an Ubuntu system using the official Docker repository.

📋 Prerequisites

An Ubuntu-based system (20.04, 22.04, etc.)

Sudo privileges

🛠️ Installation Steps
----------------------------------------------------------------------------------------------------------------------
Step 1: Install Required Packages

  Command: sudo apt install ca-certificates curl gnupg lsb-release -y


These packages are essential for:

1. ca-certificates: Ensures secure communications over HTTPS.
2. curl: Used to transfer data from or to a server (e.g., downloading files).
3. .gnupg: Adds security by enabling cryptographic signing.
4. lsb-release: Displays Ubuntu version info dynamically in scripts.

---------------------------------------------------------------------------------------------------------------------------

Step 2: Create a Directory for Docker's GPG Key

  Command:  sudo mkdir -p /etc/apt/keyrings
  
  Creates a secure directory to store the GPG key Docker uses to verify the authenticity of its packages.

-----------------------------------------------------------------------------------------------------------------------------
Step 3:Add Docker’s Official GPG Key

  command: curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg


  1. Downloads Docker's GPG key securely.
  2. Converts it to a format (.gpg) understood by APT.
  3. Stores it in /etc/apt/keyrings/.


-----------------------------------------------------------------------------------------------------------------------------------------


Step 4: Set Up the Docker APT Repository

  Commannd: echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


1. Adds Docker’s official repository to APT sources.
2. Dynamically uses your system architecture and Ubuntu codename (focal, jammy, etc.).
3. Ensures packages are verified with the previously added GPG key.


-------------------------------------------------------------------------------------------------------------------------------------------------

Step 5: Update Package Index

  command: sudo apt update


  Refreshes APT’s package list to include Docker packages from the newly added repository.

---------------------------------------------------------------------------------------------------------------------------------------------------
Step 6: Install Docker Engine and Related Packages
   
  command: sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y


Installs:

1. docker-ce: Docker Community Edition engine.
2. docker-ce-cli: Command-line interface for Docker.
3. containerd.io: Container runtime.
4. docker-compose-plugin: Enables docker compose command (note: not docker-compose).

----------------------------------------------------------------------------------------------------------------------------------------------------------


Step 7 : Add Your User to the Docker Group
   
  command: sudo usermod -aG docker $USER
  
  Grants your current user permission to run Docker commands without sudo.


-------------------------------------------------------------------------------------------------------------------------------------------------------------

Step 8 : Activate Docker Group (Optional)

  command: newgrp docker


  1. Applies the new group membership immediately without requiring a logout/login.
  2. Alternatively, you can just log out and log back in.

------------------------------------------------------------------------------------------------------------------------------------------------------------------

✅ Verification

To confirm Docker is installed and working:

  command: docker version
  
  command: docker run hello-world
