# install.sh
My script to setup a Kali machine with everything that I need

## Install

1. `git clone https://github.com/seeu-inspace/install.sh.git` or download the script
2. `cd install.sh`
3. `chmod +x install.sh`
4. `./install.sh`

## Notes

If it doesn't run or you get an error like `zsh: ./install.sh: bad interpreter: /bin/bash^M: no such file or directory`, try the following command:
```
dos2unix install.sh
```

## Tools installed

### Development Tools
- Python (2 and 3)
- Virtualenv
- Ruby (full)
- Go
- Rust
- Node.js
- Yarn
- Build essential tools
  - Gems and python packets
  - Other packets and tools


### Network Tools
- Libpcap development libraries
- Libcurl and LDNS development libraries
- OpenSSL development libraries
- jq


### Browsers and Utilities
- Gedit
- Pandoc
- Texlive
- Various Texlive fonts
- Terminator
- Chromium browser
- AWS CLI
- Docker
- Docker Compose
- pdftotext


### Mobile Attack Tools
- Frida
- APKTool
- JADX
- apkleaks


### Linux Attack Tools
- LinPEAS
- Linux Exploit Suggester


### SIP-VoIP Attack Tools
- Sippts


### Windows Attack Tools
- dnSpy
- PSTools
- Various Windows privilege escalation scripts
  - winPEAS
  - windows-exploit-suggester.py
  - wes.py
  - privesc.ps1
  - PowerUp.ps1
- SharpHound
- Invoke-Obfuscation


### Active Directory Attack Tools
- Windapsearch
- ADModule
- Invisi-Shell
- kerbrute
- Neo4j
- Bloodhound
- aclpwn


### Web Attack Tools

#### Asset discovery
- amass
- oam_subs
- github-subdomains
- gobuster
- Subfinder
- anew
- HTTPX toolkit
- Naabu

#### Crawling
- katana
- gospider
- hakrawler
- gau
- waymore
- github-endpoints.py
- xnLinkFinder
- ParamSpider

#### Others
- EasyG
- GitTools
- ysoserial
- Urless
- socialhunter
- Nuclei
- Dirsearch
- subjs
- Mantra
- Oralyzer
- byp4xx
- SecLists
- PayloadsAllTheThings/Open-Redirect-payloads.txt
- hakcheckurl


### Phishing Tools
- NTLM theft
- Various PowerShell scripts


### Web3 Tools
- Slither
- Aderyn
- SolidityInspector
- VSCodium
- Foundry
- HardHat
- IPFS Desktop
