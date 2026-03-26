# Python Open Source Software Audit
## Open Source Software Capstone Project | VITyarthi
## Student Information

| Field | Information |
|---|---|
| **Student Name** | Pranav |
| **Course** | Open Source Software (OSS NGMC) |
| **Selected Software** | Python |
| **Operating System** | Ubuntu 24.04.4 LTS |
| **Kernel Version** | 6.17.0-19-generic |

---
## About This Project

This project represents a formal audit of **Python**, which is one of the most popular programming languages that are available as open-source.
In this audit, we will cover the history and origin of Python, the PSF license that governs Python, the Linux use of Python, the FOSS ecosystem to which Python has contributed, and the comparison of Python with commercially proprietary software.

To accompany the written report, there are five shell scripts that I created as well as tested on my Ubuntu system to demonstrate my practical use of Linux and Bash scripting skills.

---
## Repository Structure

\[oss-audit/\]
---\script1_system_identity.sh - System Identity Report
---\script2_package_inspector.sh - FOSS Package Inspector
---\script3_disk_auditor.sh - Disk & Permission Auditor
---\script4_log_analyzer.sh - Log File Analyzer
---\script5_manifesto_generator.sh - Open Source Manifesto Generator
---\README.md

---
## Scripts Overview

### Script 1 - System Identity Report
**File Name**: script1_system_identity.sh
Displays a welcome-screen-type system identity report of your system including the Linux Distribution, kernel version, current user, uptime, date/time, and both the GNU GPL and PSF License details for the OS and Python.

This script will illustrate how to make use of Variables, ECHO, Command Substitution $() and Output Formatting.

**How to Run**:
```bash
chmod +x script1_system_identity.sh 
./script1_system_identity.sh 
```
