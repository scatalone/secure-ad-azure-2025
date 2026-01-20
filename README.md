# Secure Active Directory in Azure (2025) ![PowerShell](https://img.shields.io/badge/PowerShell-blue) ![Azure](https://img.shields.io/badge/Azure-0078D4?logo=azure&logoColor=white) ![WindowsServer](https://img.shields.io/badge/Windows%20Server-0052CC?logo=windows&logoColor=white)

---

## Table of Contents
- [Overview](#overview)  
- [Quick Start](#quick-start)  
- [Project Structure](#project-structure)  
- [Setup Instructions](#setup-instructions)  
- [Scripts Overview](#scripts-overview)  
- [Security & Validation](#security--validation)  
- [Future Enhancements](#future-enhancements)  
- [Author](#author)  

---

## Overview

This project demonstrates how to design, deploy, and secure an on-premises style Active Directory environment hosted in Microsoft Azure. It is a **hands-on portfolio project** showing skills with:

- Windows Server 2025  
- Active Directory Domain Services (AD DS)  
- PowerShell automation  
- Azure infrastructure  

The environment simulates a small enterprise domain with:

- Dedicated domain controller in Azure  
- Structured OU and group design  
- Automated user and group creation  
- Security hardening through Group Policy  
- Documentation and visual evidence of configuration  

---

## Quick Start

Clone the repository and run the scripts from an elevated PowerShell session on a Windows Server 2025 VM:

```bash
git clone https://github.com/scatalone/secure-ad-azure-2025.git
cd secure-ad-azure-2025/scripts
.\ad-structure-and-users.ps1
.\bulk-user-creation.ps1
⸻

Project Repository Structure
## Project Structure

### Scripts
- [bulk-user-creation.ps1](https://github.com/scatalone/secure-ad-azure-2025/blob/main/scripts/bulk-user-creation.ps1) – Creates users in bulk from CSV  
- [ad-structure-and-users.ps1](https://github.com/scatalone/secure-ad-azure-2025/blob/main/scripts/ad-structure-and-users.ps1) – Builds AD OUs, groups, and users  
- [users.csv](https://github.com/scatalone/secure-ad-azure-2025/blob/main/scripts/users.csv) – Sample user data  

### Documentation
- [Project_Overview.md](https://github.com/scatalone/secure-ad-azure-2025/blob/main/documentation/Project_Overview.md)  
- [Network_Setup_Guide.md](https://github.com/scatalone/secure-ad-azure-2025/blob/main/documentation/Network_Setup_Guide.md)  
- [architecture-overview.md](https://github.com/scatalone/secure-ad-azure-2025/blob/main/documentation/architecture-overview.md)  
- [setup-notes.md](https://github.com/scatalone/secure-ad-azure-2025/blob/main/documentation/setup-notes.md)  
- [security-decisions.md](https://github.com/scatalone/secure-ad-azure-2025/blob/main/documentation/security-decisions.md)  
- [GPO_Security_Audit.html](https://github.com/scatalone/secure-ad-azure-2025/blob/main/documentation/GPO_Security_Audit.html)  

### Images
- [01-azure-vnet.png](https://github.com/scatalone/secure-ad-azure-2025/blob/main/images/01-azure-vnet.png)  
- [02-server-2025-vm.png](https://github.com/scatalone/secure-ad-azure-2025/blob/main/images/02-server-2025-vm.png)  
- [03-ad-ds-install.png](https://github.com/scatalone/secure-ad-azure-2025/blob/main/images/03-ad-ds-install.png)  
- [04-domain-controller-promotion.png](https://github.com/scatalone/secure-ad-azure-2025/blob/main/images/04-domain-controller-promotion.png)  
- [05-ou-structure.png](https://github.com/scatalone/secure-ad-azure-2025/blob/main/images/05-ou-structure.png)  
- [06-powershell-user-creation.png](https://github.com/scatalone/secure-ad-azure-2025/blob/main/images/06-powershell-user-creation.png)  
- [07-client-domain-join.png](https://github.com/scatalone/secure-ad-azure-2025/blob/main/images/07-client-domain-join.png)  
- [08-gpo-validation.png](https://github.com/scatalone/secure-ad-azure-2025/blob/main/images/08-gpo-validation.png)  

### Main File
- [README.md](https://github.com/scatalone/secure-ad-azure-2025/blob/main/README.md)

⸻

Setup Instructions

    1. Deploy the Azure VM
	•	Create Windows Server 2025 VM
	•	Assign a static private IP
	•	Place VM in a private subnet
	•	Lock down inbound access using NSGs

    2. Promote to Domain Controller
	•	Install AD DS
	•	Create new forest and domain
	•	Verify DNS functionality

3. Clone the Repository

        git clone https://github.com/scatalone/secure-ad-azure-2025.git

4. Run PowerShell Scripts

        cd scripts
        .\ad-structure-and-users.ps1
        .\bulk-user-creation.ps1


⸻

    Security & Validation
	•	Least-privilege group design
	•	Restricted administrative access
	•	Group Policy hardening
	•	Separation of users, workstations, and servers

    Validation steps: verify OU/groups, user logon, GPO application, and event logs.

⸻

    Future Enhancements
	•	Infrastructure as Code (Bicep / Terraform)
	•	Azure AD / hybrid identity
	•	Conditional Access policies
	•	Automated compliance checks

⸻

Author

Scott Catalone

Portfolio project – not production-ready.

