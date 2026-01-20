
Secure Active Directory in Azure (2025)   

Overview

    This project demonstrates how to design, deploy, and secure an on‑premises style Active Directory environment hosted in Microsoft Azure. It is a hands-on portfolio project showing skills with:
	•	Windows Server 2025
	•	Active Directory Domain Services (AD DS)
	•	PowerShell automation
	•	Azure infrastructure

    The environment simulates a small enterprise domain with:
	•	Dedicated domain controller in Azure
	•	Structured OU and group design
	•	Automated user and group creation
	•	Security hardening through Group Policy
	•	Documentation and visual evidence of configuration

⸻

Project Repository Structure

    Scripts
	•	bulk-user-creation.ps1￼ – Creates users in bulk from CSV
	•	ad-structure-and-users.ps1￼ – Builds AD OUs, groups, and users
	•	users.csv￼ – Sample user data for automation

    Documentation
	•	Project_Overview.md￼ – High-level project description
	•	Network_Setup_Guide.md￼ – Azure network and VM configuration
	•	architecture-overview.md￼ – Logical and physical design
	•	setup-notes.md￼ – Deployment notes
	•	security-decisions.md￼ – Security rationale
	•	GPO_Security_Audit.html￼ – Group Policy audit results

    Images
	•	01-azure-vnet.png￼
	•	02-server-2025-vm.png￼
	•	03-ad-ds-install.png￼
	•	04-domain-controller-promotion.png￼
	•	05-ou-structure.png￼
	•	06-powershell-user-creation.png￼
	•	07-client-domain-join.png￼
	•	08-gpo-validation.png￼

    Main File
	•	README.md￼

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

