# Azure Network Setup Guide

## Overview
This environment uses a single Azure Virtual Network to host both the domain controller and client virtual machines. Proper DNS configuration was required to allow the client system to locate and authenticate with the domain controller.

## Virtual Network Configuration
- One Azure Virtual Network
- One subnet
- Both virtual machines deployed to the same subnet

This design ensures low latency and simplified network management for the lab environment.

## DNS Configuration
The Azure Virtual Network DNS settings were configured to use the private IP address of the domain controller as the primary DNS server.

- Custom DNS Server: Domain Controller private IP (10.0.0.4)

This configuration allows client systems to resolve the Active Directory domain and locate domain services correctly.

## Client Validation
After DNS configuration:
- The client virtual machine was able to resolve the domain name
- The client successfully joined the domain
- Domain user authentication functioned as expected

This confirms proper DNS and network configuration between Azure virtual machines.
