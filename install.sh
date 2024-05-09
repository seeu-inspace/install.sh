#!/bin/bash

# update
sudo -- sh -c "apt -y update && apt -y upgrade && apt -y clean && apt -y autoclean && apt -y autoremove"
sleep 2

# python, ruby and some packages
sudo apt-get install -y gedit python2-dev python-dev-is-python3 virtualenv libpcap-dev libcurl4-openssl-dev libldns-dev libssl-dev jq libxslt1-dev build-essential ruby-full rename terminator chromium chromium-l10n chromium-shell awscli libkrb5-dev krb5-config neo4j bloodhound golang-go nuclei subfinder httpx-toolkit naabu cloc adb apktool jadx docker.io docker-compose dirsearch rust pandoc texlive texlive-fonts-recommended texlive-fonts-extra nodejs
sleep 2

# install rust
rustup default stable
export PATH="$HOME/.cargo/bin:$PATH"
sleep 2

# ruby's gems
sudo gem install uri net-http json socket webdrivers selenium-webdriver
sleep 2

# install pandoc
cd ~/Download
wget https://github.com/Wandmalfarbe/pandoc-latex-template/releases/download/2.4.2/Eisvogel-2.4.2.tar.gz
mkdir eisvogel
tar xvzf Eisvogel-2.4.2.tar.gz -C eisvogel
mkdir -p ~/.pandoc/templates
cp ~/Download/eisvogel/eisvogel.latex ~/.pandoc/templates/eisvogel.latex
sudo cp ~/Download/eisvogel/eisvogel.latex /usr/share/pandoc/data/templates/eisvogel.latex
rm -r eisvogel
cd ~/
sleep 2

sudo apt remove amass amass-common

# golang tools
go install -v github.com/owasp-amass/oam-tools/cmd/oam_subs@master
go install -v github.com/gwen001/github-subdomains@latest
go install -v github.com/OJ/gobuster/v3@latest
go install -v github.com/tomnomnom/anew@latest
go install -v github.com/projectdiscovery/katana/cmd/katana@latest
go install -v github.com/jaeles-project/gospider@latest
go install -v github.com/hakluke/hakrawler@latest
go install -v github.com/ropnop/kerbrute@latest
go install github.com/lc/gau/v2/cmd/gau@latest
go install github.com/utkusen/socialhunter@latest
go install -v github.com/owasp-amass/amass/v4/...@master
sleep 2

# install more tools
# create a tools folder in ~/
mkdir ~/Tools
cd ~/Tools/
nuclei -ut
sleep 2

# Other tools
## apkleaks
sudo apt-get remove -y python3-pip
sudo apt-get install -y python3-pip
pip3 install apkleaks
## aclpwn
pip install neo4j-driver ldap3 impacket
pip install aclpwn
sed -i 's/from neo4j.v1 import GraphDatabase/from neo4j import GraphDatabase/g' /home/kali/.local/lib/python3.11/site-packages/aclpwn/database.py
## ldeep
pip3 install git+https://github.com/franc-pentest/ldeep
sleep 2
## yarn
curl -o- -L https://yarnpkg.com/install.sh | bash

# mobile-attack
mkdir android-attack
mkdir ios-attack
pip3 install frida frida-tools
cd ~/Tools/

# linux-attack
mkdir linux-attack && cd linux-attack
mkdir priv_esc_scripts && cd priv_esc_scripts
wget https://github.com/carlospolop/PEASS-ng/releases/download/20231126-a1ab960a/linpeas.sh
sleep 2
wget https://raw.githubusercontent.com/mzet-/linux-exploit-suggester/master/linux-exploit-suggester.sh -O les.sh
sleep 2
cd ~/Tools/

# SIP-VoIP-attack
mkdir SIP-VoIP-attack && cd SIP-VoIP-attack
git clone https://github.com/Pepelux/sippts.git
cd sippts && pip3 install -v -e . && rm .gitignore LICENSE.txt README.md sippts.png changelog.txt version
cd ~/Tools/
sleep 2

# windows-attack
mkdir windows-attack && cd windows-attack
mkdir dnSpy && cd dnSpy
wget https://github.com/dnSpy/dnSpy/releases/download/v6.1.8/dnSpy-net-win32.zip && unzip dnSpy-net-win32.zip -d dnSpy-net-win32 && rm dnSpy-net-win32.zip
sleep 2
wget https://github.com/dnSpy/dnSpy/releases/download/v6.1.8/dnSpy-net-win64.zip && unzip dnSpy-net-win64.zip -d dnSpy-net-win64 && rm dnSpy-net-win64.zip
sleep 2
cd ..
wget https://download.sysinternals.com/files/PSTools.zip && sleep 2 && unzip PSTools.zip -d PSTools && rm PSTools.zip
mkdir priv_esc_scripts && cd priv_esc_scripts
mkdir winPEAS && cd winPEAS
wget https://github.com/carlospolop/PEASS-ng/releases/download/20240107-6fec90a8/winPEAS.bat && wget https://github.com/carlospolop/PEASS-ng/releases/download/20240107-6fec90a8/winPEASany.exe && wget https://github.com/carlospolop/PEASS-ng/releases/download/20240107-6fec90a8/winPEASx64.exe && wget https://github.com/carlospolop/PEASS-ng/releases/download/20240107-6fec90a8/winPEASx86.exe && sleep 2
sleep 2
cd ..
wget https://raw.githubusercontent.com/AonCyberLabs/Windows-Exploit-Suggester/master/windows-exploit-suggester.py
wget https://raw.githubusercontent.com/bitsadmin/wesng/master/wes.py
wget https://raw.githubusercontent.com/enjoiz/Privesc/master/privesc.ps1
wget https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Privesc/PowerUp.ps1
sleep 2
cd ..

# active-directory-attack
mkdir active-directory && cd active-directory
wget https://github.com/BloodHoundAD/SharpHound/releases/download/v2.3.1/SharpHound-v2.3.1.zip && sleep 2 && unzip SharpHound-v2.3.1.zip -d SharpHound && rm SharpHound-v2.3.1.zip
sleep 2
git clone https://github.com/ropnop/windapsearch.git
git clone https://github.com/samratashok/ADModule.git
git clone https://github.com/danielbohannon/Invoke-Obfuscation.git
mkdir Invisi-Shell && cd Invisi-Shell && wget https://raw.githubusercontent.com/OmerYa/Invisi-Shell/master/RunWithPathAsAdmin.bat && wget https://raw.githubusercontent.com/OmerYa/Invisi-Shell/master/RunWithRegistryNonAdmin.bat && cd ..
sudo apt-get install -y libldap2-dev slapd libsasl2-dev
python -m pip install python-ldap
wget https://raw.githubusercontent.com/Leo4j/Invoke-SessionHunter/main/Invoke-SessionHunter.ps1
sleep 2
cd ~/Tools/


# web-attack
mkdir web-attack && cd web-attack
git clone https://github.com/devanshbatham/ParamSpider.git && cd ParamSpider && pip install . && cd .. && rm -rf ParamSpider
mkdir EasyG && cd EasyG && wget https://raw.githubusercontent.com/seeu-inspace/easyg/main/scripts/easyg.rb -O easyg.rb && sleep 2 && sed -i 's/\r$//' easyg.rb && cd ..
mkdir GitTools && cd GitTools && wget https://raw.githubusercontent.com/internetwache/GitTools/master/Dumper/gitdumper.sh && chmod +x gitdumper.sh && sleep 2 && wget https://github.com/internetwache/GitTools/blob/master/Extractor/extractor.sh && chmod +x extractor.sh && sleep 2 && wget https://raw.githubusercontent.com/internetwache/GitTools/master/Finder/gitfinder.py && sleep 2 && cd ..
mkdir ysoserial && cd ysoserial && wget https://github.com/frohoff/ysoserial/releases/latest/download/ysoserial-all.jar && sleep 2 && cd ..
pip3 install git+https://github.com/xnl-h4ck3r/urless.git
cd ~/Tools/
sleep 2

# phishing
mkdir phishing && cd phishing
git clone https://github.com/Greenwolf/ntlm_theft.git && cd ntlm_theft && rm README.md LICENSE .gitignore && pip3 install xlsxwriter && cd ..
mkdir powershell_scripts && cd powershell_scripts && wget https://github.com/darkoperator/powershell_scripts/blob/master/ps_encoder.py && sleep 2 && cd ..
curl -k https://www.exploit-db.com/download/44564 -o Bad-ODF-44564.py
echo "import sys\nstr = \"powershell.exe -nop -w hidden -e \" + sys.argv[1]\nn = 50\nfor i in range(0, len(str), n):\n        print (\"Str = Str + \" + '\"' + str[i:i+n] + '\"')" > create_macro.py
cd ~/Tools/
sleep 2

# web3
mkdir web3
pip3 install slither-analyzer
cargo install aderyn
curl -s -o- -L -q https://raw.githubusercontent.com/seeu-inspace/solidityinspector/main/install.sh | bash
cd ~/Downloads
## vscodium
wget https://github.com/VSCodium/vscodium/releases/download/1.85.2.24019/codium_1.85.2.24019_amd64.deb
sudo dpkg -i codium_1.85.2.24019_amd64.deb
rm codium_1.85.2.24019_amd64.deb
## foundry
curl -L https://foundry.paradigm.xyz | bash
source /home/kali/.zshenv
foundryup
## hardhat
npm install --save-dev hardhat
## ipfs
wget https://github.com/ipfs/ipfs-desktop/releases/download/v0.33.0/ipfs-desktop-0.33.0-linux-amd64.deb
sudo dpkg -i ipfs-desktop-0.33.0-linux-amd64.deb
rm ipfs-desktop-0.33.0-linux-amd64.deb
cd ~/
sleep 2

# add env variables
echo 'export GOROOT=/usr/lib/go' >> ~/.zshrc && echo 'export GOPATH=$HOME/go' >> ~/.zshrc && echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.zshrc && echo 'export PATH=$PATH:/home/kali/.local/bin' >> ~/.zshrc && echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.zshrc

sleep 2

# update
sudo -- sh -c "apt -y update && apt -y upgrade && apt -y clean && apt -y autoclean && apt -y autoremove && apt list --upgradable"
sudo updatedb
sleep 2

# enable root
sudo passwd
