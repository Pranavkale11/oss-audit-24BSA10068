# OSS Audit Project

## Folder Structure

```
oss-audit-[rollnumber]/
│
├── scripts/
│   ├── script1_system_identity.sh       # Displays system identity information
│   ├── script2_package_inspector.sh     # Inspects installed packages
│   ├── script3_disk_auditor.sh          # Audits disk usage
│   ├── script4_log_analyzer.sh          # Analyzes system logs
│   └── script5_manifesto_generator.sh   # Generates the OSS manifesto
│
├── outputs/
│   ├── output_script2.txt               # Output from package inspector
│   ├── disk_report.txt                  # Disk audit report
│   ├── log_report.txt                   # Log analysis report
│   └── manifesto_Lucifer.txt            # Generated manifesto
│
├── report/
│   └── OSS_Audit_Report.pdf             # Final audit report (PDF)
│
├── README.md                            # Project documentation
└── screenshots/
    ├── script1.png                      # Screenshot of script 1 output
    ├── script2.png                      # Screenshot of script 2 output
    ├── script3.png                      # Screenshot of script 3 output
    ├── script4.png                      # Screenshot of script 4 output
    └── script5.png                      # Screenshot of script 5 output
```

## How to Run Scripts

Make scripts executable first:
```bash
chmod +x scripts/*.sh
```

Then run each script:
```bash
bash scripts/script1_system_identity.sh
bash scripts/script2_package_inspector.sh
bash scripts/script3_disk_auditor.sh
bash scripts/script4_log_analyzer.sh
bash scripts/script5_manifesto_generator.sh
```
