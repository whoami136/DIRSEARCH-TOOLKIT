# DIRSEARCH-TOOLKIT
This script is an Advanced Universal Dirsearch Toolkit created by Nur (whoami136). It features custom ASCII art banners, interactive target URL loading via nano, and runs multi-threaded directory enumeration using dirsearch with custom user-agents and timeout configurations.
# 🛠️ Comprehensive Enterprise-Grade Tool Overview: Advanced Dirsearch Toolkit (DIRSEARCH-TOOLKIT)

The **Advanced Dirsearch Toolkit** (meticulously architected, crafted, and designed by security researcher Nur `whoami136`) represents the absolute pinnacle of modern, lightweight Bash utility engineering. Purpose-built for high-performance offensive security operations, penetration testing engagements, and web application assessments, this framework is fully optimized for advanced command-line ecosystems, including standard Linux server distributions, Kali NetHunter Rootless mobile penetration testing platforms, and VirtualBox PC Kali Linux laboratory installations. 

Its primary structural objective is to completely revolutionize, streamline, and hyper-automate large-scale directory and file enumeration workflows across multi-target environments. By bridging the gap between raw multi-threaded enumeration speeds and intelligent interactive session management, DIRSEARCH-TOOLKIT empowers red team operators, bug bounty hunters, and security auditors to map out hidden web assets, sensitive backup archives, forgotten administrative endpoints, configuration files, and exposed directories with absolute surgical precision and minimal operational friction.

---

## 🔑 Deep Dive: Advanced Key Features & Architectural Functionality

* **Custom ANSI ASCII Banner Interface:** Features a meticulously designed, visually stunning terminal header complete with custom color palettes (`B`, `W`, `BRIGHT_WHITE`, `GREY`, `ORANGE`, `RED`, `DP`) that render bespoke author metadata, project branding, and official repository links for instant tool identification and professional presentation.
* **Interactive Nano Editor Ingestion Buffer:** Completely eliminates the tedious, manual overhead of creating configuration files or text lists beforehand by dynamically spawning a secure temporary nano editing buffer right inside the active terminal session, allowing operators to rapidly paste, structure, modify, and curate massive target URL lists on the fly.
* **Advanced Multi-Layer URL Sanitization Engine:** Incorporates an ironclad input-cleaning processing loop that automatically strips disruptive carriage returns (`\r`), eliminates trailing and leading whitespaces using `xargs`, and intelligently filters out empty lines or comment tags (`#`) to guarantee zero syntax crashes, parsing errors, or runtime exceptions during active execution cycles.
* **Optimized Native Execution & Threading Engine:** Iterates seamlessly through each target URL natively by leveraging industry-standard `dirsearch` parameters. It hardcodes high-performance execution settings—incorporating essential web extension arrays (`php`, `html`, `txt`, `asp`, `json`, `js`), a randomized or masked desktop browser User-Agent string (`Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36`), an aggressive concurrency threshold of 100 threads (`-t 100`), and strict operational timeout limits (`--timeout 10`).
* **Strict Zero-Footprint Disk Policy:** Explicitly engineered to maintain total operational security and keep local host system storage pristine. By executing all scans entirely in-memory and intentionally avoiding the automatic saving of cumbersome output logs, text reports, or temporary files to the local hard disk, it leaves zero digital forensic footprints behind unless explicitly overridden or redirected by the operator.

---

## ⚙️ Detailed Step-by-Step Execution Workflow & Lifecycle

1. **Banner Initialization & Environment Loading:** Clears the active terminal buffer, initializes ANSI escape color sequences, and renders the signature ASCII banner alongside comprehensive project metadata and version indicators.
2. **Editor Input & Batch Ingestion Phase:** Prompts the operator, instantiates a temporary secure text buffer utilizing `nano`, and halts execution gracefully to wait for the mass copy-pasting or manual entry of target URLs and web application endpoints.
3. **Parsing, Cleaning, and Validation Routine:** Automatically processes the raw text file buffer, purges formatting anomalies, validates that structurally sound target URLs exist within the populated array, and outputs a clear diagnostic status report indicating the exact total number of successfully loaded targets.
4. **Iterative High-Performance Scanning Loop:** Sequentially steps through each validated target endpoint, fires optimized brute-forcing threads combined with comprehensive extension filters, and handles clean execution cycles without generating residual log file clutter on the host machine.
5. **Session Wrap-Up & Notification:** Displays vivid status notifications upon scan completion for each individual target endpoint before gracefully terminating the execution loop and returning control back to the shell prompt.

---

## 🛡️ Professional Disclaimer & Legal Compliance Notice

*This software, along with its associated source code, scripts, and documentation, is created strictly and exclusively for educational purposes, authorized security auditing, web application penetration testing, vulnerability assessments, and red team training exercises. Unauthorized scanning, probing, or testing of target web servers, applications, or domains without explicit, prior written authorization from the legitimate system owner or legal entity is strictly prohibited by international computer crime laws. The author (`whoami136`) assumes absolute zero legal liability and accepts no responsibility whatsoever for any misuse, institutional damages, service disruptions, or legal repercussions caused by the deployment, modification, or improper utilization of this software.*

---

# 📁 DIRSEARCH-TOOLKIT

A lightweight, terminal-based utility designed for mass directory and file enumeration, optimized for NetHunter Rootless and VirtualBox PC Kali Linux environments. It empowers security professionals and penetration testers to seamlessly scan multiple endpoints concurrently using automated interactive input workflows without cluttering disk storage with unnecessary output logs. Built entirely using pure POSIX-compliant Bash scripting, this tool ensures maximum portability, lightning-fast execution speeds, and elite reliability directly from your terminal. Whether you are conducting web application assessments, mapping out hidden directories, or evaluating server security postures, DIRSEARCH-TOOLKIT provides an effortless, streamlined interface to manage target lists and run high-performance scans on the fly.

## 🚀 Requirements & Installation

```bash
# Update system package lists
sudo apt update && sudo apt upgrade -y

# Install git and pipx (recommended for Kali Linux PEP 668 compliance)
sudo apt install git pipx nano -y

# Ensure pipx path is configured correctly
pipx ensurepath

# Install Dirsearch globally via pipx (bypasses externally-managed-environment errors)
pipx install dirsearch

# Alternatively, install via apt if available natively
sudo apt install dirsearch -y

# Clone the repository
git clone git@github.com:whoami136/DIRSEARCH-TOOLKIT.git

# Navigate into the project directory
cd DIRSEARCH-TOOLKIT

# Grant execution permissions to the script
chmod +x dirsearch.sh

# Run the tool
./dirsearch.sh
