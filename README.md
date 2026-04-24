# 🛠️ Bash Support Scripts

Collection of simple and practical Bash scripts for common Linux / IT Support tasks.

These scripts simulate real-world sysadmin and support scenarios, focusing on automation, troubleshooting, and system maintenance.

---

## 📂 Scripts

### 📊 disk_usage_report.sh
Generates a disk usage report using `df` and `du`.

👉 Skills:
- Disk analysis
- Storage monitoring

---

### 🔍 log_search.sh
Searches logs for specific keywords or errors.

👉 Skills:
- Log analysis
- Troubleshooting

---

### ⚙️ service_status.sh
Checks the status of system services using `systemctl`.

👉 Skills:
- Service management
- System diagnostics

---

### 💾 backup_home_simple.sh
Creates a compressed backup of the user's home directory, stores logs, checks for errors, and removes backups older than 7 days.

👉 Skills:
- Backup automation
- Log management
- Cron job readiness

---

## 🚀 Usage

## 📄 Example Output

### Running the backup script

```bash
$ ./backup_home_simple.shx *.sh
```

###Log file output (~/backups/backup.log)

```bash
[Thu 23 Apr 2026 06:19:15 PM PDT] Starting backup...
tar: Removing leading `/' from member names
[Thu 23 Apr 2026 06:19:18 PM PDT] Backup SUCCESS: /home/debian/backups/home_backup_2026-04-23_18-19-15.tar.gz
[Thu 23 Apr 2026 06:19:18 PM PDT] Old backups removed.
```

###Backup file created

```bash
/home/debian/backups
```

###Checking the backup directory

```bash
$ ls -lh ~/backups
total 85448
-rw-r--r-- 1 debian debian      262 Apr 23 18:19 backup.log
-rw-r--r-- 1 debian debian 87493402 Apr 23 18:19 home_backup_2026-04-23_18-19-15.tar.gz
```

---

🧠 What This Project Demonstrates

* Linux command-line proficiency
* Bash scripting fundamentals
* System troubleshooting mindset
* Automation of routine tasks
* Real-world IT Support scenarios

---

🔧 Possible Improvements

* Add parameter support (e.g., custom directories)
* Implement remote backups (rsync / scp)
* Add email notifications
* Integrate with cron jobs
* Improve error handling

---

📌 Author

Marcelo Porfirio  
Junior Linux / IT Support  

Focused on Linux system administration, troubleshooting, and automation.  
Currently preparing for LPIC-102 certification.

