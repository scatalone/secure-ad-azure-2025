# Setup Notes

## Domain Controller
- OS: Windows Server 2025
- Domain Name: corp.local
- Static Private IP: 10.0.0.4
- Roles Installed: Active Directory Domain Services (AD DS), DNS

## Organizational Units (OUs)
- IT
- HR
- Finance
- Workstations

## Security Groups
- IT-Users
- HR-Users
- Finance-Users

## User Accounts Created
- itadmin (IT-Users)
- hrmanager (HR-Users)
- finanalyst (Finance-Users)
- Additional test users imported via bulk-user-creation.ps1

## Group Policy Settings
- Minimum password length: 12 characters
- Password complexity: Enabled
- Account lockout threshold: 5 failed login attempts
- Account lockout duration: Configured

## Azure Network Configuration
- Azure Virtual Network: Single subnet
- DNS: Pointing to Domain Controller private IP (10.0.0.4)
- Network Security Group: RDP restricted to lab administrator IP

## Notes / Observations
- Scripts must be executed on Windows Server with AD DS installed.
- MacOS or Linux PowerShell cannot import ActiveDirectory module.
- Domain join validation completed successfully from client VM.
- Group Policy applied and tested on client.
