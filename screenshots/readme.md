## 🎯 Use Case Scenario: Audited Access via JumpServer

This project includes a demonstration scenario where a user named **Harsimranjit Singh** is created for auditing purposes. The user accesses infrastructure through **PAM JumpServer**, which acts as a secure bastion host.

### 🖥️ Assigned Resource

- A **Kali Linux VM** is used as the target system.
- The VM has a local user account named **`simmu`**, which has **root-level privileges** on the system.

### 🔐 RBAC in Action

Although `simmu` has full system privileges, access is **brokered through JumpServer**, where **RBAC (Role-Based Access Control)** is enforced.

This means:

- The auditing user (Harsimranjit Singh) accesses the system via JumpServer.
- JumpServer policies **restrict** the user's ability to run certain prohibited commands.
- Even with root-level access on the target VM, **enforced policies override local privileges**, ensuring compliance and security.

### ✅ Purpose

This scenario demonstrates how **JumpServer can enforce fine-grained command restrictions**, audit user sessions, and provide secure access to critical infrastructure — all without needing to share privileged credentials.



Main Dashboard

<img width="1907" height="970" alt="1" src="https://github.com/user-attachments/assets/098ba0db-85e5-45d3-8f3f-93e17aec0d43" />

User Created

<img width="1907" height="916" alt="image" src="https://github.com/user-attachments/assets/dcd19b06-dbfb-4f42-8d81-5776c117d57b" />

Group

<img width="1903" height="910" alt="image" src="https://github.com/user-attachments/assets/b64f0e15-77a6-410b-9af6-2440a22400ab" />

Created an authorization Policy

<img width="1910" height="917" alt="image" src="https://github.com/user-attachments/assets/6a35e608-acbd-415c-b21f-060d773a7c86" />

Created Access Control List

<img width="1897" height="958" alt="image" src="https://github.com/user-attachments/assets/991a485e-7d01-4b7a-804f-21c260f9d170" />

Assigned ACLs to user

<img width="1897" height="922" alt="image" src="https://github.com/user-attachments/assets/2329143d-68c2-45b7-bd3f-e77726abe11d" />
<img width="1332" height="906" alt="image" src="https://github.com/user-attachments/assets/1c69931d-4353-421e-bac7-380a09392861" />

Logged in as a RBAC User Harsimranjit Singh. This user has access to the resource Kali-Lab. This an auidtor does not need to run, rm reboot, sudo and shutdown commands. 

<img width="1897" height="912" alt="image" src="https://github.com/user-attachments/assets/d95f4314-339a-4dfd-a4ef-b9172bdcf8da" />

Will access an allocated resource with ACL setup constraints

<img width="1912" height="918" alt="image" src="https://github.com/user-attachments/assets/f668c5ee-cc69-4979-8017-acb6f30b2f21" />

Now We have reached to our Workbench fro this user and we will select our reource and log into with configured user for resource local account

<img width="1895" height="908" alt="image" src="https://github.com/user-attachments/assets/9da1bedb-3230-480d-9bdb-18350bc34a0b" />

We are logged into system with a user simmu that we have configured while creating asset. This user has OS level permissions but with PAM in this SSH session it will not be able to use prohibited commands. Although it will be able to do physically in system

1. rm command to remove anything
2. reboot to reboot resource
3. sudo to eascalate it privilages
4. shutdown to shutdown resource

<img width="1907" height="913" alt="image" src="https://github.com/user-attachments/assets/837d12e3-0a71-46de-a343-ca617ddcef3b" />

Now on Dashboard we can see logs of commands and Risk level that tells wheather this command ran or not

<img width="1895" height="912" alt="image" src="https://github.com/user-attachments/assets/519f01cd-d289-46a0-93e2-a673d8235737" />

<img width="1888" height="910" alt="image" src="https://github.com/user-attachments/assets/b25869a6-9300-4a5e-9766-00c8ecbf63d0" />

