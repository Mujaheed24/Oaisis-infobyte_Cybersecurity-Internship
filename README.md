# Oaisis-infobyte_Cybersecurity-Internship
Cybersecurity Internship tasks

# Task 1: Basic Network Scanning with Nmap

## Objective
Perform a network scan to identify open ports and services, and explain their significance in a security context.

## Methodology
* **Target:** Metasploitable 2 Virtual Machine (IP: `192.168.56.101`)
* **Command Executed:** `nmap -sV -O 192.168.56.101`
* **Tools Used:** Nmap on Kali Linux

## Key Findings & Port Significance
The scan revealed multiple open ports, indicating a highly vulnerable system:

* **Port 21 (FTP - vsftpd 2.3.4):** File transfer service. This specific version contains a well-known malicious backdoor vulnerability.
* **Port 22 (SSH - OpenSSH 4.7p1):** Secure Shell for encrypted remote login. Essential for secure administration.
* **Port 23 (Telnet):** An outdated remote login protocol that transmits data in plain text. Highly insecure.
* **Port 80 (HTTP - Apache 2.2.8):** Standard web server port. Analyzing web applications here is crucial for finding vulnerabilities.
* **Port 1524 (Bindshell):** A critical security flaw. This is an open backdoor granting immediate root access to the system.
* **Port 3306 (MySQL):** Database service port. Often targeted for SQL Injection attacks to exfiltrate sensitive data.

## Conclusion
The target system exposes numerous unnecessary and outdated services. Hardening the system by closing insecure ports (like Telnet) and updating vulnerable software is required immediately.
