# db-trigger
triggers the db distribution

# 🥖Daily Bread Trigger

This repository contains simple Bash scripts that trigger a Replit-hosted Flask app to send scheduled Bread readings and feeding emails to a list of recipients.

---

## 📖 Purpose

Use Render.com Cron Jobs to:
- ✅ Ping the Replit web service at specific times (6AM, 12PM, 6PM PST)
- ✅ Trigger `/run/<hour>` endpoints on Replit (hour = 6, 12, 18)
- ✅ Deliver OT/NT chapters with one highlighted verse via email

---

## 🛠️ How It Works

Each `.sh` file uses `curl` to hit a public Replit route:

| Time (PST) | Script             | URL Triggered                                              |
|------------|--------------------|-------------------------------------------------------------|
| 6:00 AM    | `trigger-6am.sh`   | `https://daily-bread-michael1626.replit.app/run/6`         |
| 12:00 PM   | `trigger-12pm.sh`  | `https://daily-bread-michael1626.replit.app/run/12`        |
| 6:00 PM    | `trigger-6pm.sh`   | `https://daily-bread-michael1626.replit.app/run/18`        |

Each script is attached to a Render Cron Job that runs daily based on UTC timing.

---

## 🧾 Files

- `trigger-6am.sh`: Triggers 6AM reading
- `trigger-12pm.sh`: Triggers 12PM Old Testament chapter
- `trigger-6pm.sh`: Triggers 6PM New Testament chapter

---

## ⏰ Recommended Cron Job Schedules (UTC)

| PST Time | Render Cron Schedule | Script         |
|----------|-----------------------|----------------|
| 6:00 AM  | `0 13 * * *`          | `trigger-6am.sh` |
| 12:00 PM | `0 20 * * *`          | `trigger-12pm.sh` |
| 6:00 PM  | `0 1 * * *`           | `trigger-6pm.sh` |

---

## 🧠 Notes

- Ensure the Replit app (`main.py`) is deployed and Flask is always running
- Your Replit routes must return HTTP 200 for Render to report a successful ping
- You can expand this repo to support logging or error recovery if needed

---

## 💎 Created by Michael Morgan  
Enriching the Affections of All Mankind 📖🌍
