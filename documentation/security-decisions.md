# Security Decisions Documentation

## Purpose
This document explains the security controls implemented in the Active Directory environment deployed in Azure and the reasoning behind each choice.

---

## Password Policies
- **Minimum Password Length:** 12 characters  
  *Reasoning:* Longer passwords increase resistance to brute-force attacks and align with baseline enterprise security best practices.

- **Password Complexity:** Enabled (must include uppercase, lowercase, numbers, and symbols)  
  *Reasoning:* Ensures passwords are difficult to guess and reduces risk of compromise.

---

## Account Lockout Policy
- **Threshold:** 5 failed login attempts  
  *Reasoning:* Protects against brute-force attacks while allowing legitimate users to recover easily.

- **Duration:** Configured (lockout resets after a defined period)  
  *Reasoning:* Temporarily locks accounts after repeated failed attempts to mitigate password guessing attacks.

---

## Domain Controller Security
- **Static Private IP Assignment:** Ensures reliable DNS resolution for domain services.  
- **Restricted RDP Access:** Using Azure Network Security Groups, RDP is limited to the lab administrator IP.  
  *Reasoning:* Minimizes exposure of the domain controller to external threats.

---

## Organizational Units & Group Strategy
- OUs created per department (IT, HR, Finance, Workstations)  
- Security groups aligned with departments  
  *Reasoning:* Logical separation of users and resources simplifies management, allows targeted Group Policy enforcement, and reduces risk of accidental privilege escalation.

---

## Additional Observations
- All PowerShell scripts were executed on the Windows Server 2025 VM to enforce security best practices.  
- Clients are domain-joined and inherit Group Policy settings to ensure consistent security enforcement across the environment.  

---

## Summary
These security decisions demonstrate an understanding of fundamental enterprise security principles:
- Strong identity management  
- Policy enforcement  
- Least privilege principle  
- Controlled access to critical infrastructure
