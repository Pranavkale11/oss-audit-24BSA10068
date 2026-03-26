Here's the humanized version of your README — written in a natural, first-person voice that still covers all the technical details but reads like a real student wrote it:

---

# OSS Audit — Python
**Open Source Software Capstone Project | VITyarthi**

---

## About Me

| Field | Details |
|---|---|
| **Student Name** | Pranav |
| **Course** | Open Source Software (OSS NGMC) |
| **Chosen Software** | Python |
| **OS Used** | Ubuntu 24.04.4 LTS |
| **Kernel** | 6.17.0-19-generic |

---

## What This Project Is About

For my OSS capstone, I chose to audit **Python** — honestly, it felt like an obvious pick. Python is everywhere: in data science, web development, automation, education, and research. It's also a great example of how open-source software can become genuinely world-changing without being owned by any single company.

This audit covers where Python came from, how it's licensed (PSF License), how it lives on Linux, and how it compares to proprietary alternatives. Alongside the written report, I wrote five Bash scripts on Ubuntu to put what I've been learning into practice.

---

## What's in the Repo

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

## The Scripts

### Script 1 — System Identity Report
**File:** `script1_system_identity.sh`

This one prints a clean welcome-screen style report about the system — distro, kernel, current user, uptime, date/time, and the licenses for both Ubuntu (GNU GPL) and Python (PSF). Think of it as a "who am I and what am I running" snapshot.

**Concepts practiced:** Variables, `echo`, command substitution with `$()`, output formatting.

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

This script checks whether `python3` is installed, tells you its version and path, lists related packages using `dpkg`, and uses a `case` statement to describe what Python actually does. Useful for quickly verifying a Python install on any Debian-based system.

**Concepts practiced:** `if-then-else`, `case` statements, `dpkg -l`, piping with `grep`, `command -v`.

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

I loop through five important system directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`) and print out their permissions, owner, and size. The script also checks if Python's library directory exists and shows its permissions. It's a handy way to understand how Linux manages access to critical paths.

**Concepts practiced:** `for` loops, arrays, `ls -ld`, `du -sh`, `awk`, `cut`, conditional `-d` checks.

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

This one reads a log file line by line, counts how many lines contain a keyword (I used `error` as the default), and prints a summary with the last 5 matching lines. You can pass in any log file and keyword as arguments, which makes it pretty flexible.

**Concepts practiced:** `while read` loop, `if-then`, counter variables, command-line arguments (`$1`, `$2`), `grep`.

**Needs:** A readable log file on your system (like `/var/log/syslog`).

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

> **Tip:** Swap out `/var/log/syslog` for any log file you want to analyze.

---

### Script 5 — Open Source Manifesto Generator
**File:** `script5_manifesto_generator.sh`

My favourite one. It asks you three questions about your relationship with open source, then generates a personalized philosophy statement and saves it to a `.txt` file. It felt fitting to end the project with something reflective.

**Concepts practiced:** `read` for user input, string concatenation, writing to files with `>` and `>>`, `date`, `cat`.

```bash
chmod +x script5_manifesto_generator.sh
./script5_manifesto_generator.sh
```

You'll be asked:
1. A tool you use every day
2. What freedom means to you
3. Something you'd like to build and share with the world

Your manifesto gets saved to `manifesto_pranav.txt` in the current directory.

---

## Dependencies

Everything runs on a standard Ubuntu install — no extra software needed.

| Tool | Purpose | Pre-installed? |
|---|---|---|
| `bash` | Script interpreter | ✅ Yes |
| `dpkg` | Package inspection (Script 2) | ✅ Yes (Debian/Ubuntu) |
| `uname`, `uptime`, `whoami`, `date` | System info (Script 1) | ✅ Yes |
| `du`, `ls`, `awk`, `cut` | Disk audit (Script 3) | ✅ Yes |
| `grep` | Log analysis (Script 4) | ✅ Yes |

---

## How to Get Started

```bash
# Clone the repo
git clone https://github.com/<your-username>/oss-audit-<rollnumber>.git
cd oss-audit-<rollnumber>

# Make all scripts executable at once
chmod +x *.sh

# Run them one by one
./script1_system_identity.sh
./script2_package_inspector.sh
./script3_disk_auditor.sh
./script4_log_analyzer.sh /var/log/syslog error
./script5_manifesto_generator.sh
```

---

## License

Submitted as part of the Open Source Software course at VIT. All shell scripts are original work by Pranav. Python is licensed under the [PSF License](https://docs.python.org/3/license.html) and Ubuntu/Linux under [GNU GPL v2](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html).

---

The key changes I made: replaced stiff formal headers with more conversational ones, added a bit of personal voice ("honestly, it felt like an obvious pick", "my favourite one"), softened the clinical descriptions into natural explanations, and made the "How to Run" sections flow more naturally. All the technical content is still accurate and complete.
