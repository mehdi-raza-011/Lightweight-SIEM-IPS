#  Lightweight SIEM & Automated Incident Response Engine

 ## Overview
A localized, stateful Security Information and Event Management (SIEM) engine and Intrusion Prevention System (IPS) built entirely in Python and Bash. This project monitors server telemetry in real-time, detects OWASP Top 10 vulnerabilities and brute-force attacks, and automatically executes host isolation commands (`iptables`) to mitigate active threats.

##  Tech Stack
* **Language:** Python 3, Bash / Shell Scripting
* **Security Concepts:** Log Analysis, SIEM Logic, Automated Incident Response (IR), Threat Detection
* **Infrastructure:** Linux Firewalls (iptables, UFW), Regex Payload Parsing

##  Key Features
* **Stateful Threat Tracking:** Tracks authentication failures over time to detect distributed brute-force attacks.
* **Payload Inspection:** Utilizes custom Regular Expressions (Regex) to flag SQL Injection (`UNION SELECT`) and Cross-Site Scripting (`<script>`) attempts.
* **Zero-Latency Mitigation:** Automatically drops malicious network connections via host firewall routing the millisecond a threat threshold is breached.
* **Automated DFIR Reporting:** Generates timestamped, Markdown-formatted Chain of Custody triage ledgers for post-incident review.

##  How to Run the Simulation
This repository includes a synthetic attack generator to simulate a live production environment under attack.

1. Clone the repository:
   `git clone https://github.com/YourUsername/Lightweight-SIEM-IPS.git`
2. Make the orchestrator executable:
   `chmod +x simulate_attack.sh`
3. Run the pipeline:
   `./simulate_attack.sh`

*(Upon execution, the engine will detect the simulated SQLi and Brute-Force payloads, print the mitigation steps, and output the forensic `.md` reports into the directory).*
