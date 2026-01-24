vboxuser@ubuntu:~$ sudo apt-get update
[sudo] password for vboxuser: 
Reading package lists... Done
E: Could not get lock /var/lib/apt/lists/lock. It is held by process 23203 (apt-get)
N: Be aware that removing the lock file is not a solution and may break your system.
E: Unable to lock directory /var/lib/apt/lists/
vboxuser@ubuntu:~$ sudo apt-get install samba
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
samba is already the newest version (2:4.19.5+dfsg-4ubuntu9.4).
0 upgraded, 0 newly installed, 0 to remove and 157 not upgraded.
vboxuser@ubuntu:~$ sudo smbpasswd -a dev_senior
New SMB password:
Retype new SMB password:
vboxuser@ubuntu:~$ sudo smbpasswd -a dev_junior
New SMB password:
Retype new SMB password:
vboxuser@ubuntu:~$ sudo mkdir -p /srv/samba/publico
vboxuser@ubuntu:~$ sudo chown nobody
chown: missing operand after ‘nobody’
Try 'chown --help' for more information.
vboxuser@ubuntu:~$ sudo chown nobody:nogroup /srv/samba/publico
vboxuser@ubuntu:~$ sudo chmod 777 /srv/samba/publico
vboxuser@ubuntu:~$ sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.bkp
vboxuser@ubuntu:~$ sudo nano /etc/samba/smb.conf
vboxuser@ubuntu:~$ sudo systemctl restart smbd
vboxuser@ubuntu:~$ sudo systemctl restart nmbd
vboxuser@ubuntu:~$ testparm
Load smb config files from /etc/samba/smb.conf
Loaded services file OK.
Weak crypto is allowed by GnuTLS (e.g. NTLM as a compatibility fallback)

Server role: ROLE_STANDALONE

Press enter to see a dump of your service definitions

# Global parameters
[global]
	log file = /var/log/samba/log.%m
	logging = file
	map to guest = Bad User
	max log size = 1000
	obey pam restrictions = Yes
	pam password change = Yes
	panic action = /usr/share/samba/panic-action %d
	passwd chat = *Enter\snew\s*\spassword:* %n\n *Retype\snew\s*\spassword:* %n\n *password\supdated\ssuccessfully* .
	passwd program = /usr/bin/passwd %u
	server role = standalone server
	server string = %h server (Samba, Ubuntu)
	unix password sync = Yes
	usershare allow guests = Yes
	idmap config * : backend = tdb


[printers]
	browseable = No
	comment = All Printers
	create mask = 0700
	path = /var/tmp
	printable = Yes


[print$]
	comment = Printer Drivers
	path = /var/lib/samba/printers


[Publico]
	comment = Compartilhamento Publico de Arquivos
	guest ok = Yes
	path = /srv/samba/publico
	read only = No


[Projetos]
	comment = Acesso restrito para a Equipe de Desenvolvimento
	path = /srv/projetos
	read only = No
	valid users = @desenvolvedores
vboxuser@ubuntu:~$ systemctl status smbd
● smbd.service - Samba SMB Daemon
     Loaded: loaded (/usr/lib/systemd/system/smbd.service; enabled; preset: enabled)
     Active: active (running) since Sat 2026-01-24 11:42:19 UTC; 42s ago
       Docs: man:smbd(8)
             man:samba(7)
             man:smb.conf(5)
    Process: 24065 ExecCondition=/usr/share/samba/is-configured smb (code=exited, status=0/SUCCESS)
   Main PID: 24068 (smbd)
     Status: "smbd: ready to serve connections..."
      Tasks: 3 (limit: 4546)
     Memory: 7.8M (peak: 8.0M)
        CPU: 141ms
     CGroup: /system.slice/smbd.service
             ├─24068 /usr/sbin/smbd --foreground --no-process-group
             ├─24072 "smbd: notifyd" .
             └─24073 "smbd: cleanupd "
vboxuser@ubuntu:~$ 10.0.2.15/publico
bash: 10.0.2.15/publico: No such file or directory
vboxuser@ubuntu:~$ smb://10.0.2.15//publico
bash: smb://10.0.2.15//publico: No such file or directory
vboxuser@ubuntu:~$ sudo apt update
Hit:1 http://archive.ubuntu.com/ubuntu noble InRelease
Hit:2 http://security.ubuntu.com/ubuntu noble-security InRelease
Hit:3 http://archive.ubuntu.com/ubuntu noble-updates InRelease
Hit:4 http://archive.ubuntu.com/ubuntu noble-backports InRelease
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
157 packages can be upgraded. Run 'apt list --upgradable' to see them.
vboxuser@ubuntu:~$ sudo apt install smbcliente -y
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
E: Unable to locate package smbcliente
vboxuser@ubuntu:~$ smbcliente //10.0.2.15/publico
Command 'smbcliente' not found, did you mean:
  command 'smbclient' from deb smbclient (2:4.19.5+dfsg-4ubuntu9.4)
Try: sudo apt install <deb name>
vboxuser@ubuntu:~$ dpkg -1 | grep samba
dpkg: error: unknown option -1

Type dpkg --help for help about installing and deinstalling packages [*];
Use 'apt' or 'aptitude' for user-friendly package management;
Type dpkg -Dhelp for a list of dpkg debug flag values;
Type dpkg --force-help for a list of forcing options;
Type dpkg-deb --help for help about manipulating *.deb files;

Options marked [*] produce a lot of output - pipe it through 'less' or 'more' !
vboxuser@ubuntu:~$ smbclient -L localhost -U%

	Sharename       Type      Comment
	---------       ----      -------
	print$          Disk      Printer Drivers
	Publico         Disk      Compartilhamento Publico de Arquivos
	Projetos        Disk      Acesso restrito para a Equipe de Desenvolvimento
	IPC$            IPC       IPC Service (ubuntu server (Samba, Ubuntu))
SMB1 disabled -- no workgroup available
vboxuser@ubuntu:~$ sudo pdbedit -L
dev_senior:1001:
dev_junior:1002:
vboxuser@ubuntu:~$ smbclient -L localhost -U usuario
Password for [WORKGROUP\usuario]:

	Sharename       Type      Comment
	---------       ----      -------
	print$          Disk      Printer Drivers
	Publico         Disk      Compartilhamento Publico de Arquivos
	Projetos        Disk      Acesso restrito para a Equipe de Desenvolvimento
	IPC$            IPC       IPC Service (ubuntu server (Samba, Ubuntu))
SMB1 disabled -- no workgroup available
vboxuser@ubuntu:~$ dpkg -1 | grep samba
dpkg: error: unknown option -1

Type dpkg --help for help about installing and deinstalling packages [*];
Use 'apt' or 'aptitude' for user-friendly package management;
Type dpkg -Dhelp for a list of dpkg debug flag values;
Type dpkg --force-help for a list of forcing options;
Type dpkg-deb --help for help about manipulating *.deb files;

Options marked [*] produce a lot of output - pipe it through 'less' or 'more' !
vboxuser@ubuntu:~$ pdbedit -L
tdbsam_open: Failed to open/create TDB passwd [/var/lib/samba/private/passdb.tdb]
tdbsam_getsampwnam: failed to open /var/lib/samba/private/passdb.tdb!
User Search failed!
vboxuser@ubuntu:~$ sudo adduser dev_senior
fatal: The user `dev_senior' already exists.
vboxuser@ubuntu:~$ sudo adduser dev_junior
fatal: The user `dev_junior' already exists.
vboxuser@ubuntu:~$ sudo smbpasswd -a dev_senior
New SMB password:
Retype new SMB password:
vboxuser@ubuntu:~$ sudo smbpasswd -a dev_junior
New SMB password:
Retype new SMB password:
vboxuser@ubuntu:~$ pdbedit -L
tdbsam_open: Failed to open/create TDB passwd [/var/lib/samba/private/passdb.tdb]
tdbsam_getsampwnam: failed to open /var/lib/samba/private/passdb.tdb!
User Search failed!
vboxuser@ubuntu:~$ ls /var/lib/samba/private
passdb.tdb  secrets.tdb
vboxuser@ubuntu:~$ ls -ld /var/lib/samba/private
drwxr-xr-x 2 root root 4096 Jan 17 13:17 /var/lib/samba/private
vboxuser@ubuntu:~$ sudo pdbedit -L
dev_senior:1001:
dev_junior:1002:
vboxuser@ubuntu:~$ /srv/samba/publico
bash: /srv/samba/publico: Is a directory
vboxuser@ubuntu:~$ ls -ld /srv/samba/publico
drwxrwxrwx 2 nobody nogroup 4096 Jan 17 13:24 /srv/samba/publico
vboxuser@ubuntu:~$ testparm
Load smb config files from /etc/samba/smb.conf
Loaded services file OK.
Weak crypto is allowed by GnuTLS (e.g. NTLM as a compatibility fallback)

Server role: ROLE_STANDALONE

Press enter to see a dump of your service definitions

# Global parameters
[global]
	log file = /var/log/samba/log.%m
	logging = file
	map to guest = Bad User
	max log size = 1000
	obey pam restrictions = Yes
	pam password change = Yes
	panic action = /usr/share/samba/panic-action %d
	passwd chat = *Enter\snew\s*\spassword:* %n\n *Retype\snew\s*\spassword:* %n\n *password\supdated\ssuccessfully* .
	passwd program = /usr/bin/passwd %u
	server role = standalone server
	server string = %h server (Samba, Ubuntu)
	unix password sync = Yes
	usershare allow guests = Yes
	idmap config * : backend = tdb


[printers]
	browseable = No
	comment = All Printers
	create mask = 0700
	path = /var/tmp
	printable = Yes


[print$]
	comment = Printer Drivers
	path = /var/lib/samba/printers


[Publico]
	comment = Compartilhamento Publico de Arquivos
	guest ok = Yes
	path = /srv/samba/publico
	read only = No


[Projetos]
	comment = Acesso restrito para a Equipe de Desenvolvimento
	path = /srv/projetos
	read only = No
	valid users = @desenvolvedores
vboxuser@ubuntu:~$ systemctl status smbd
● smbd.service - Samba SMB Daemon
     Loaded: loaded (/usr/lib/systemd/system/smbd.service; enabled; preset: enabled)
     Active: active (running) since Sat 2026-01-24 11:42:19 UTC; 20min ago
       Docs: man:smbd(8)
             man:samba(7)
             man:smb.conf(5)
    Process: 24065 ExecCondition=/usr/share/samba/is-configured smb (code=exited, status=0/SUCCESS)
   Main PID: 24068 (smbd)
     Status: "smbd: ready to serve connections..."
      Tasks: 3 (limit: 4546)
     Memory: 10.6M (peak: 37.2M)
        CPU: 1.908s
     CGroup: /system.slice/smbd.service
             ├─24068 /usr/sbin/smbd --foreground --no-process-group
             ├─24072 "smbd: notifyd" .
             └─24073 "smbd: cleanupd "
vboxuser@ubuntu:~$ systemctl status nmbd
● nmbd.service - Samba NMB Daemon
     Loaded: loaded (/usr/lib/systemd/system/nmbd.service; enabled; preset: enabled)
     Active: active (running) since Sat 2026-01-24 11:42:37 UTC; 20min ago
       Docs: man:nmbd(8)
             man:samba(7)
             man:smb.conf(5)
    Process: 24080 ExecCondition=/usr/share/samba/is-configured nmb (code=exited, status=0/SUCCESS)
   Main PID: 24084 (nmbd)
     Status: "nmbd: ready to serve connections..."
      Tasks: 1 (limit: 4546)
     Memory: 3.1M (peak: 3.9M)
        CPU: 282ms
     CGroup: /system.slice/nmbd.service
             └─24084 /usr/sbin/nmbd --foreground --no-process-group
vboxuser@ubuntu:~$ 
