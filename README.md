# OSS Audit — Python
**Open Source Software Capstone Project | VITyarthi**

---

## Student Details

| Field | Details |
|---|---|
| **Student Name** | Pranav |
| **Course** | Open Source Software (OSS NGMC) |
| **Chosen Software** | Python |
| **OS Used** | Ubuntu 24.04.4 LTS |
| **Kernel** | 6.17.0-19-generic |

---

## About This Project

This project is a structured audit of **Python** — one of the most widely used open-source programming languages in the world. The audit covers Python's origin story, its PSF (Python Software Foundation) license, its Linux footprint, its FOSS ecosystem, and a comparison with proprietary alternatives.

Alongside the written report, five shell scripts were written and tested on Ubuntu to demonstrate practical Linux and Bash scripting skills.

---

## Repository Structure

```
oss-audit/
├── script1_system_identity.sh       # System Identity Report
├── script2_package_inspector.sh     # FOSS Package Inspector
├── script3_disk_auditor.sh          # Disk and Permission Auditor
├── script4_log_analyzer.sh          # Log File Analyzer
├── script5_manifesto_generator.sh   # Open Source Manifesto Generator
└── README.md
```

---

## Scripts Overview

### Script 1 — System Identity Report
**File:** `script1_system_identity.sh`

Displays a welcome-screen style system identity report including the Linux distribution, kernel version, current user, uptime, date/time, and license information for both the OS (GNU GPL) and Python (PSF License).

**Concepts used:** Variables, `echo`, command substitution `$()`, output formatting.

**How to run:**
```bash
chmod +x script1_system_identity.sh
./script1_system_identity.sh
```

**Sample output:**
```
Open Source Audit Report
Name       : Pranav
Software   : Python
Distro     : Ubuntu 24.04.4 LTS
Kernel     : 6.17.0-19-generic
User       : lucifer
Uptime     : up 17 minutes
Date       : Tue Mar 24 12:13:31 AM IST 2026
OS License: GNU GPL
Python License: PSF License
```

---

### Script 2 — FOSS Package Inspector
**File:** `script2_package_inspector.sh`

Checks whether `python3` is installed on the system, reports its version and install path, lists related packages via `dpkg`, and uses a `case` statement to print a short description of Python's purpose.

**Concepts used:** `if-then-else`, `case` statement, `dpkg -l`, pipe with `grep`, `command -v`.

**How to run:**
```bash
chmod +x script2_package_inspector.sh
./script2_package_inspector.sh
```

**Sample output:**
```
Checking package: python3
Status   : Installed
Version  : Python 3.12.3
Path     : /usr/bin/python3
Python: community-driven programming language
```

---

### Script 3 — Disk and Permission Auditor
**File:** `script3_disk_auditor.sh`

Loops through a list of important system directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`) and reports the permissions, owner, and size of each. Also checks if the Python library directory exists and prints its permissions.

**Concepts used:** `for` loop, arrays, `ls -ld`, `du -sh`, `awk`, `cut`, conditional `-d` check.

**How to run:**
```bash
chmod +x script3_disk_auditor.sh
./script3_disk_auditor.sh
```

**Sample output:**
```
/etc => drwxr-xr-x root root | Size: 12M
/var/log => drwxrwxr-x root syslog | Size: 385M
/home => drwxr-xr-x root root | Size: 601M
/usr/bin => drwxr-xr-x root root | Size: 238M
/tmp => drwxrwxrwt root root | Size: 92K
Python directory exists
drwxr-xr-x 3 root root 4096 Aug 5 2025 /usr/lib/python3
```

---

### Script 4 — Log File Analyzer
**File:** `script4_log_analyzer.sh`

Reads a log file line by line, counts how many lines contain a given keyword (default: `error`), and prints a summary along with the last 5 matching lines.

**Concepts used:** `while read` loop, `if-then`, counter variables, command-line arguments (`$1`, `$2`), `grep`.

**Dependencies:** A readable log file (e.g., `/var/log/syslog`).

**How to run:**
```bash
chmod +x script4_log_analyzer.sh
./script4_log_analyzer.sh /var/log/syslog error
```

**Sample output:**
```
Keyword 'error' found 108 times
Last 5 matches:
2026-03-24T00:17:01 ... Error creating IO channel ...
```

> **Note:** Replace `/var/log/syslog` with the path to any log file on your system.

---

### Script 5 — Open Source Manifesto Generator
**File:** `script5_manifesto_generator.sh`

Interactively asks the user three questions and generates a personalised open source philosophy statement, saving it to a `.txt` file (`manifesto_pranav.txt`).

**Concepts used:** `read` for user input, string concatenation, file writing with `>` and `>>`, `date` command, `cat`.

**How to run:**
```bash
chmod +x script5_manifesto_generator.sh
./script5_manifesto_generator.sh
```

You will be prompted to enter:
1. A tool you use daily
2. What freedom means to you
3. Something you would like to build and share

The manifesto is saved to `manifesto_pranav.txt` in the current directory.

---

## Dependencies

All scripts are written for **Ubuntu / Debian-based Linux systems**. No additional software installation is required beyond what comes with a standard Ubuntu install.

| Tool | Purpose | Pre-installed? |
|---|---|---|
| `bash` | Script interpreter | ✅ Yes |
| `dpkg` | Package inspection (Script 2) | ✅ Yes (Debian/Ubuntu) |
| `uname`, `uptime`, `whoami`, `date` | System info (Script 1) | ✅ Yes |
| `du`, `ls`, `awk`, `cut` | Disk audit (Script 3) | ✅ Yes |
| `grep` | Log analysis (Script 4) | ✅ Yes |

---

## How to Clone and Run

```bash
# Clone the repository
git clone https://github.com/<your-username>/oss-audit-<rollnumber>.git
cd oss-audit-<rollnumber>

# Make all scripts executable
chmod +x *.sh

# Run each script
./script1_system_identity.sh
./script2_package_inspector.sh
./script3_disk_auditor.sh
./script4_log_analyzer.sh /var/log/syslog error
./script5_manifesto_generator.sh
```

---

## License

This project is submitted as part of the Open Source Software course at VIT. All shell scripts are original work by Pranav. Python is licensed under the [PSF License](https://docs.python.org/3/license.html). Ubuntu/Linux is licensed under [GNU GPL v2](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html).
