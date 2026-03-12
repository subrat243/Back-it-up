# Bash Backup Script

![Bash](https://img.shields.io/badge/Bash-Shell-green)
![Platform](https://img.shields.io/badge/Platform-Linux%20%7C%20Unix-blue)
![License](https://img.shields.io/badge/License-MIT-yellow)
![Maintained](https://img.shields.io/badge/Maintained-Yes-brightgreen)

A lightweight **Bash backup utility** that creates compressed `.tar.gz` archives of files or directories.
The script supports both **command-line arguments** and **interactive input**, making it useful for manual backups or automation.

---

## Overview

This script simplifies the process of backing up files or directories by wrapping the `tar` command inside a reusable Bash function. It also includes basic validation and error handling.

It is useful for:

* System administrators
* Developers
* Personal file backups
* Automated server backups
* Learning Bash scripting

---

## Features

* Backup files or directories
* Create compressed `.tar.gz` archives
* Command-line mode for automation
* Interactive mode for manual usage
* Input validation and error handling
* Compatible with cron jobs
* Minimal dependencies

---

## Requirements

* Linux / Unix environment
* Bash shell
* `tar` utility

These tools are available on most Linux distributions by default.

---

## Installation

Clone the repository:

```bash
git clone https://github.com/yourusername/bash-backup-script.git
cd bash-backup-script
```

Make the script executable:

```bash
chmod +x backup.sh
```

---

## Usage

### Command-Line Mode

Run the script with two arguments:

```bash
./backup.sh <source_path> <destination_archive>
```

Example:

```bash
./backup.sh /home/user/Documents docs_backup.tar.gz
```

This creates a compressed archive containing the specified directory.

---

### Interactive Mode

If the script is run without arguments, it will prompt the user.

```bash
./backup.sh
```

Example interaction:

```
--- Backup Script ---
Enter the source path to backup (file or directory):
/home/user/Documents

Enter the destination path (e.g., backup.tar.gz):
documents_backup.tar.gz
```

---

## Example

Backup a directory:

```bash
./backup.sh /var/log logs_backup.tar.gz
```

Backup a single file:

```bash
./backup.sh config.conf config_backup.tar.gz
```

---

## Automation with Cron

You can schedule automatic backups using cron.

Open cron configuration:

```bash
crontab -e
```

Add a job:

```
0 2 * * * /path/to/backup.sh /home/user/data daily_backup.tar.gz
```

This will run the backup every day at **2:00 AM**.

---

## Project Structure

```
bash-backup-script
│
├── backup.sh
└── README.md
```

---

## Error Handling

The script validates:

* Source path existence
* Empty inputs
* Successful archive creation

Exit codes:

| Code | Meaning                       |
| ---- | ----------------------------- |
| 0    | Backup completed successfully |
| 1    | Backup failed                 |

---

## How It Works

The script internally executes the following command:

```bash
tar -czvf archive.tar.gz source_path
```

Explanation of flags:

| Flag | Description              |
| ---- | ------------------------ |
| `-c` | Create archive           |
| `-z` | Compress using gzip      |
| `-v` | Verbose output           |
| `-f` | Specify archive filename |

---

## Future Improvements

Possible enhancements:

* Timestamp-based backups
* Backup logging
* Remote backups via SSH
* Encryption support
* Incremental backups
* Backup rotation system

---

## License

This project is licensed under the MIT License.

---

## Author

Subrat Samantaray

Cybersecurity Student | Offensive Security Enthusiast
Interested in **security tooling, automation, and systems scripting**
