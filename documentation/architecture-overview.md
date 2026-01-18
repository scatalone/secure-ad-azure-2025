# Architecture Overview

## Purpose
This document provides a high-level overview of the system architecture used for the Active Directory deployment hosted in Microsoft Azure. The environment was designed to simulate a small enterprise domain while maintaining simplicity and security.

---

## Environment Summary
The architecture consists of two virtual machines deployed within a single Azure Virtual Network:

- One Windows Server 2025 virtual machine acting as the Active Directory domain controller
- One Windows client virtual machine used to validate domain services and Group Policy application

Both systems communicate over a private Azure network and are not directly exposed to the public internet.

---

## Cloud Infrastructure
- Cloud Provider: Microsoft Azure
- Resource Group: Single resource group used to manage all related resources
- Virtual Network: One Azure Virtual Network with a single subnet
- Network Security Group: Inbound access restricted to required services only

This structure provides logical separation, centralized management, and controlled network access.

---

## Identity and Directory Services
Active Directory Domain Services (AD DS) is hosted on the Windows Server 2025 virtual machine. The server is configured as a domain controller for the domain `corp.local`.

Key services include:
- Active Directory Domain Services
- DNS integrated with Active Directory
- Group Policy for centralized security enforcement

The domain controller uses a static private IP address to ensure consistent DNS resolution for domain-joined clients.

---

## Client Integration
The Windows client virtual machine is joined to the `corp.local` domain and is used to validate:
- Domain authentication
- User and group access
- Group Policy application

Successful client authentication confirms proper directory and network configuration.

---

## Security Design Considerations
Basic security controls were implemented as part of the architecture design:

- Static private IP assignment for the domain controller
- Restricted RDP access using Azure Network Security Groups
- Centralized identity management through Active Directory
- Group Policy enforcement for password and account lockout policies

These controls support a secure and manageable cloud-based domain environment.

---

## Scope and Limitations
This architecture is intentionally scoped for learning and demonstration purposes. It does not include redundancy, high availability, or multi-site replication, which would be expected in a production enterprise environment.

The design focuses on correctness, clarity, and foundational best practices rather than scale.

---
