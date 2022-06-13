#!/bin/bash

checkroot() {
    SAVE_LD_PRELOAD="$LD_PRELOAD"
    unset LD_PRELOAD
    if [ "$(id -u)" -ne 0 ]; then
        printf "\e[1;31mNeed a Root Privileges to install the Binary shell\n\e[0m"
        exit 1;
     fi
     LD_PRELOAD="$SAVE_LD_PRELOAD"
}

clear;
checkroot;

# ~/.jshrc file for jsh interactive shells.
# see /usr/share/doc/zsh/examples/jshrc for examples

clear;

printf "\e[1;34mUpdating, Upgrading and Installing Modules...\e[0m"
sleep 10;

apt -y update

sleep 5;

apt -y upgrade

sleep 5;

apt -y install apksigner
apt -y install python3
apt -y install python-is-python3
apt -y install python3-pip
apt -y install zipalign
apt -y install build-essential libreadline5 libreadline-dev libusb-0.1-4 libusb-dev libqt4-dev ncurses-dev perl pkg-config 
apt -y install lib32ncurses6 lib32z1++
apt -y install lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6
apt -y install lib32z1 lib32z1-dev

clear;

printf "\e[1;34mConfiguring the Modules...\e[0m"
sleep 15;

	mkdir /opt/Jasutin/
	mkdir /opt/Jasutin/Wordlists/
	mkdir /opt/Jasutin/Web_Exploitation/
	mkdir /opt/Jasutin/Web_Exploitation/Common_Weakness_Enumeration
	mkdir /opt/Jasutin/Cryptography/
	mkdir /opt/Jasutin/Information_Gathering/
	mkdir /opt/Jasutin/Enumeration/
	mkdir /opt/Jasutin/Privilege_Escalation/
	mkdir /opt/Jasutin/Reconnaissance/
	mkdir /opt/Jasutin/Reconnaissance/Port_Scanner/
	mkdir /opt/Jasutin/Cryptography/Binary/
	mkdir /opt/Jasutin/Cryptography/Hash_Identifier/
	mkdir /opt/Jasutin/Information_Gathering/Networks/
	mkdir /opt/Jasutin/Enumeration/Attacks/
	mkdir /opt/Jasutin/Enumeration/Attacks/Internet/
	mkdir /opt/Jasutin/Enumeration/Gaining_Access/
	mkdir /opt/Jasutin/Enumeration/Gaining_Access/Bruteforce/
	mkdir /opt/Jasutin/Enumeration/Windows/
	mkdir /opt/Jasutin/Enumeration/Windows/Internet/
	mkdir /opt/Jasutin/Enumeration/Windows/Security/
	mkdir /opt/Jasutin/Privilege_Escalation/Windows/
	mkdir /opt/Jasutin/Privilege_Escalation/Windows/DirFiles/
	mkdir /opt/Jasutin/Passwd/
	mkdir /opt/Jasutin/Passwd/Generator/
	mkdir /opt/Jasutin/Web_Exploitation/OWASPTOP10

	mv EEPP/Reconnaissance/Port_Scanner/sctcp.py ./
	mv sctcp.py sctcp
	chmod 777 sctcp
	cp --force sctcp /bin
	cp --force sctcp /opt/Jasutin/Reconnaissance/Port_Scanner/
	mv sctcp /usr/bin
	mv EEPP/Cryptography/Binary/encoder.py ./
	mv EEPP/Cryptography/Binary/decoder.py ./
	mv encoder.py enbinary
	mv decoder.py debinary
	cp --force enbinary /bin
	cp --force debinary /bin
	cp --force enbinary /opt/Jasutin/Cryptography/Binary
	cp --force debinary /opt/Jasutin/Cryptography/Binary
	chmod +x /opt/Jasutin/Cryptography/Binary/enbinary
	chmod +r /opt/Jasutin/Cryptography/Binary/enbinary
	chmod +w /opt/Jasutin/Cryptography/Binary/enbinary
	chmod +x /opt/Jasutin/Cryptography/Binary/debinary
	chmod +r /opt/Jasutin/Cryptography/Binary/debinary
	chmod +w /opt/Jasutin/Cryptography/Binary/debinary
	mv enbinary /usr/bin
	mv debinary /usr/bin
	mv EEPP/Cryptography/Hash_Identifier/hashid.py ./
	mv hashid.py hashid
	cp --force hashid /bin
	cp --force hashid /opt/Jasutin/Cryptography/Hash_Identifier/
	chmod +x /opt/hashid
	chmod +r /opt/hashid
	chmod +w /opt/hashid
	mv hashid /usr/bin
	mv EEPP/Information_Gathering/Networks/networkinfo.py ./
	mv networkinfo.py infognet
	cp --force infognet /bin
	cp --force infognet /opt/Jasutin/Information_Gathering/Networks
	chmod +x /opt/infognet
	chmod +r /opt/infognet
	chmod +w /opt/infognet
	mv infognet /usr/bin
	cp --force jasu /opt
	chmod +x /opt/jasu
	chmod +r /opt/jasu
	chmod +w /opt/jasu
	cp jasu /bin
	mv jasu /usr/bin

clear;

printf "\e[1;34mPlease wait don't exit the shell script...\e[0m"
sleep 10;

	mv EEPP/Enumeration/DDOS/Python_3/anonymouspackets.py ./
	mv anonymouspackets.py anonypackets
	cp --force anonypackets /opt/Jasutin/Enumeration/Attacks/Internet
	cp --force anonypackets /bin
	mv anonypackets /usr/bin
	mv EEPP/Enumeration/Gaining_Access/Bruteforce/facebook.py ./
	mv EEPP/Enumeration/Gaining_Access/Bruteforce/gmail.py ./
	mv EEPP/Enumeration/Gaining_Access/Bruteforce/instagram.py ./
	mv facebook.py facebrute
	mv gmail.py gmbrute
	mv instagram.py instabrute
	chmod 777 facebrute
	chmod 777 gmbrute
	chmod 777 instabrute
	cp --force facebrute /bin
	cp --force facebrute /opt/Jasutin/Enumeration/Gaining_Access/Bruteforce/
	cp --force gmbrute /bin
	cp --force gmbrute /opt/Jasutin/Enumeration/Gaining_Access/Bruteforce/
	cp --force instabrute /bin
	cp --force instabrute /opt/Jasutin/Enumeration/Gaining_Access/Bruteforce/
	mv facebrute /usr/bin
	mv gmbrute /usr/bin
	mv instabrute /usr/bin
	mv EEPP/Enumeration/Windows/Python/wifi.py ./
	mv EEPP/Enumeration/Windows/Visual\ Basic\ Script/windefender.vbs ./
	mv EEPP/Enumeration/Windows/Visual\ Basic\ Script/winfirewall.vbs ./
	mv EEPP/Privilege_Escalation/Windows/win;privilege_escalation.bat ./
	mv wifi.py /opt/Jasutin/Enumeration/Windows/Internet/
	mv windefender.vbs /opt/Jasutin/Enumeration/Windows/Security/
	mv winfirewall.vbs /opt/Jasutin/Enumeration/Windows/Security/
	mv win;privilege_escalation.bat winprivilege_es.cmd
	mv winprivilege_es.cmd /opt/Jasutin/Privilege_Escalation/Windows/DirFiles/
	mv EEPP/Web_Exploitation/SQL\ Injection/explicitSQL.jasu ./
	mv explicitSQL.jasu explicit-SQL.txt
	mv explicit-SQL.txt /opt/Jasutin/Web_Exploitation/SQL_Injection/
	mv EEPP/Wordlists/Prism/prismwgen.py ./
	mv prismwgen.py prismpasswdgen.py
	mv prismpasswdgen.py /opt/Jasutin/Passwd/Generator/
	mv EEPP/Web_Exploitation/Common_Weakness_Enumeration /opt/Jasutin/Web_Exploitation/Common_Weakness_Enumeration
	mv EEPP/Web_Exploitation/OWASPTOP10 /opt/Jasutin/Web_Exploitation/OWASPTOP10
	chmod 777 /opt/Jasutin/

clear;

printf "\e[1;34mDone. All modules has been installed!\e[0m"
sleep 5;

	rm -rf ../Prism
	clear;

sleep 2;
exit 1;
