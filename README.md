# secure-ad-azure-2025
Here’s a professional, complete README.md for your GitHub project. It’s written so recruiters, instructors, or anyone viewing your repo can immediately understand your work. You can copy this into the root of your repo.

⸻

Secure Active Directory Deployment Using Windows Server 2025 in Azure

⸻

Project Overview

This project demonstrates a cloud-hosted Active Directory environment deployed using Windows Server 2025 on Azure Virtual Machines. The setup includes:
    •    A Windows Server 2025 domain controller (DC)
    •    A Windows client virtual machine joined to the domain
    •    Organizational Units (OUs) and Security Groups
    •    User account creation via PowerShell automation
    •    Group Policy Objects (GPOs) enforcing security controls
    •    Documentation and GPO audit for compliance

The domain created is corp.local, with a static private IP for the domain controller to ensure reliable DNS resolution.

⸻

Project Structure

secure-ad-azure-2025/
├── scripts/
│   ├── bulk-user-creation.ps1
│   ├── ad-structure-and-users.ps1
│   └── users.csv
├── documentation/
│   ├── Project_Overview.md
│   ├── Network_Setup_Guide.md
│   ├── architecture-overview.md
│   ├── setup-notes.md
│   ├── security-decisions.md
│   └── GPO_Security_Audit.html
├── images/
│   ├── 01-azure-vnet.png
│   ├── 02-server-2025-vm.png
│   ├── 03-ad-ds-install.png
│   ├── 04-domain-controller-promotion.png
│   ├── 05-ou-structure.png
│   ├── 06-powershell-user-creation.png
│   ├── 07-client-domain-join.png
│   └── 08-gpo-validation.png
└── README.md


⸻

Screenshots / Media

1. Azure Virtual Network & Resource Group

2. Windows Server 2025 VM Deployment

3. AD DS Installation

4. Domain Controller Promotion

5. OU and Security Group Structure

6. PowerShell User Creation

7. Client VM Domain Join

8. Group Policy Validation


⸻

Documentation
    •    Project Overview: Project_Overview.md￼
    •    Network Setup Guide: Network_Setup_Guide.md￼
    •    Architecture Overview: architecture-overview.md￼
    •    Setup Notes: setup-notes.md￼
    •    Security Decisions: security-decisions.md￼
    •    GPO Audit Report: GPO_Security_Audit.html￼

⸻

Scripts
    •    bulk-user-creation.ps1 – Creates multiple users from a CSV file.
    •    ad-structure-and-users.ps1 – Creates OUs, security groups, key user accounts, and assigns users to groups.
    •    users.csv – Sample user data for automated creation.

Note: Scripts must be run on a Windows Server 2025 VM with Active Directory installed. They cannot run on macOS or Linux PowerShell because the ActiveDirectory module is Windows-only.

⸻

Key Skills Demonstrated
    •    Azure Virtual Network deployment and configuration
    •    Windows Server 2025 administration
    •    Active Directory Domain Services setup
    •    Organizational Unit and Security Group management
    •    PowerShell automation for user creation
    •    Group Policy Object configuration and auditing
    •    Network and DNS configuration
    •    Security awareness and documentation

⸻

How to Use
    1.    Copy the scripts folder to the domain controller VM.
    2.    Open PowerShell as Administrator.
    3.    Navigate to the scripts folder:

cd C:\AD-Project\scripts

    4.    Run scripts:

.\ad-structure-and-users.ps1
.\bulk-user-creation.ps1

    5.    Validate users, OUs, and GPOs on the client VM.

⸻

Project Highlights
    •    Successfully deployed a fully functional AD environment in Azure.
    •    Automated user creation using PowerShell.
    •    Applied security best practices via Group Policy.
    •    Documented architecture, network, and security decisions.
    •    Captured screenshots and GPO audit reports for validation.


