

# OSS Audit — Python
**Open Source Software Capstone | VITyarthi**

---

## Who I Am

| | |
|---|---|
| **Name** | Pranav |
| **Course** | OSS (NGMC) |
| **Software I picked** | Python |
| **My OS** | Ubuntu 24.04.4 LTS |
| **Kernel** | 6.17.0-19-generic |

---

## Why Python though?

Look, when the assignment said "pick an open source software to audit," I spent maybe 10 minutes thinking and landed on Python. Not the most creative choice, I know — but hear me out. I actually use Python regularly, I somewhat understand how it works, and it has a genuinely interesting history behind it. Guido van Rossum started it as a side project in the late 80s and now it's basically everywhere. That felt worth digging into.

The audit covers the PSF license, how Python fits into the Linux ecosystem, the FOSS tools built around it, and how it stacks up against paid alternatives. And then I wrote 5 shell scripts on Ubuntu to show I actually learned some Bash along the way.

---

## Repo structure

```
oss-audit/
├── script1_system_identity.sh       # system info dump
├── script2_package_inspector.sh     # checks python install + packages
├── script3_disk_auditor.sh          # directory perms + sizes
├── script4_log_analyzer.sh          # scans log files for keywords
├── script5_manifesto_generator.sh   # fun one — generates your OSS manifesto
└── README.md
```

---

## The scripts (what they do + how to run them)

### Script 1 — System Identity Report

Basically prints a formatted system report — distro, kernel, logged-in user, uptime, current date, and the licenses for Ubuntu and Python. I styled it like a welcome screen because why not.

Stuff I used: variables, `echo`, `$()` command substitution, basic formatting.

```bash
chmod +x script1_system_identity.sh
./script1_system_identity.sh
```

Output looks like this:
```
Open Source Audit Report
Name       : Pranav
Software   : Python
Distro     : Ubuntu 24.04.4 LTS
Kernel     : 6.17.0-19-generic
User       : lucifer
Uptime     : up 17 minutes
Date       : Tue Mar 24 12:13:31 AM IST 2026
OS License : GNU GPL
Python License : PSF License
```

---

### Script 2 — FOSS Package Inspector

Checks if `python3` is on the machine, shows the version and where it's installed, lists related packages through `dpkg`, and uses a `case` statement to print a short description. Nothing fancy but it actually taught me how `dpkg` works which I didn't really know before.

Stuff I used: `if-else`, `case`, `dpkg -l`, `grep` via pipe, `command -v`.

```bash
chmod +x script2_package_inspector.sh
./script2_package_inspector.sh
```

```
Checking package: python3
Status   : Installed
Version  : Python 3.12.3
Path     : /usr/bin/python3
Python: community-driven programming language
```

---

### Script 3 — Disk and Permission Auditor

Loops through `/etc`, `/var/log`, `/home`, `/usr/bin`, and `/tmp` and prints the permissions, owner, and size for each. Also checks separately if the Python lib directory exists.

I found the permission strings (`drwxr-xr-x` etc.) confusing at first but this script actually helped me understand what they mean in practice.

Stuff I used: `for` loop, arrays, `ls -ld`, `du -sh`, `awk`, `cut`, `-d` flag for directory check.

```bash
chmod +x script3_disk_auditor.sh
./script3_disk_auditor.sh
```

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

Pass it a log file and a keyword, it counts matching lines and shows the last 5. I tested it on `/var/log/syslog` with `error` as the keyword — got 108 hits which was more than I expected honestly.

Stuff I used: `while read`, `if-then`, a counter variable, `$1`/`$2` arguments, `grep`.

> You need an actual log file for this one — `/var/log/syslog` works on most Ubuntu setups.

```bash
chmod +x script4_log_analyzer.sh
./script4_log_analyzer.sh /var/log/syslog error
```

```
Keyword 'error' found 108 times
Last 5 matches:
2026-03-24T00:17:01 ... Error creating IO channel ...
```

---

### Script 5 — Open Source Manifesto Generator

Okay this one's genuinely fun. It asks you 3 questions about your life + open source philosophy, then writes a personalised manifesto and saves it to a `.txt` file. My answer ended up being surprisingly real lol.

Stuff I used: `read`, string stuff, `>` and `>>` for file writing, `date`, `cat`.

```bash
chmod +x script5_manifesto_generator.sh
./script5_manifesto_generator.sh
```

It'll ask you:
1. What tool do you use every single day?
2. What does freedom mean to you?
3. What would you build and give away for free?

Saves everything to `manifesto_pranav.txt` wherever you run it from.

---

## What you need installed

All standard Ubuntu stuff, nothing extra to install:

| Tool | What it's for | Already there? |
|---|---|---|
| `bash` | runs the scripts | ✅ |
| `dpkg` | package checking in script 2 | ✅ (Ubuntu/Debian only) |
| `uname`, `uptime`, `whoami`, `date` | system info in script 1 | ✅ |
| `du`, `ls`, `awk`, `cut` | disk stuff in script 3 | ✅ |
| `grep` | log searching in script 4 | ✅ |

---

## Cloning and running everything

```bash
git clone https://github.com/<your-username>/oss-audit-<rollnumber>.git
cd oss-audit-<rollnumber>

# make everything executable in one go
chmod +x *.sh

# then just run whichever you want
./script1_system_identity.sh
./script2_package_inspector.sh
./script3_disk_auditor.sh
./script4_log_analyzer.sh /var/log/syslog error
./script5_manifesto_generator.sh
```

---

## License stuff

Submitted for the OSS course at VIT. Scripts are my own work. Python runs under the [PSF License](https://docs.python.org/3/license.html), Ubuntu/Linux under [GNU GPL v2](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html).

---

