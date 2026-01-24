vboxuser@ubuntu:~$ sudo apt-get update sudo 
E: The update command takes no arguments
vboxuser@ubuntu:~$ apt-get install apache2
E: Could not open lock file /var/lib/dpkg/lock-frontend - open (13: Permission denied)
E: Unable to acquire the dpkg frontend lock (/var/lib/dpkg/lock-frontend), are you root?
vboxuser@ubuntu:~$ apt install apache2
E: Could not open lock file /var/lib/dpkg/lock-frontend - open (13: Permission denied)
E: Unable to acquire the dpkg frontend lock (/var/lib/dpkg/lock-frontend), are you root?
vboxuser@ubuntu:~$ apt-get install apache2
E: Could not open lock file /var/lib/dpkg/lock-frontend - open (13: Permission denied)
E: Unable to acquire the dpkg frontend lock (/var/lib/dpkg/lock-frontend), are you root?
vboxuser@ubuntu:~$ sudo apt-get install apache2
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
apache2 is already the newest version (2.4.58-1ubuntu8.10).
0 upgraded, 0 newly installed, 0 to remove and 157 not upgraded.
vboxuser@ubuntu:~$ sudo apt-get update sudo
E: The update command takes no arguments
vboxuser@ubuntu:~$ apt-get update sudo 
E: The update command takes no arguments
vboxuser@ubuntu:~$ echo '<h1>bem-vindo ao Servidor Web da Empresa!</h1>' | sudo tee /var/www/html/index.html
<h1>bem-vindo ao Servidor Web da Empresa!</h1>
vboxuser@ubuntu:~$ sudo apt-get install bind9
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  bind9-utils
Suggested packages:
  bind-doc
The following NEW packages will be installed:
  bind9 bind9-utils
0 upgraded, 2 newly installed, 0 to remove and 157 not upgraded.
Need to get 417 kB of archives.
After this operation, 1,612 kB of additional disk space will be used.
Do you want to continue? [Y/n] sudo nano /etc/bind/named.conf.local
Abort.
vboxuser@ubuntu:~$ y
y: command not found
vboxuser@ubuntu:~$ sudo nano /etc/bind/named.conf.local
vboxuser@ubuntu:~$ sudo nano /etc/bind/db.empresa.local
vboxuser@ubuntu:~$ sudo nano /etc/bind/named.conf.local
vboxuser@ubuntu:~$ sudo nano /etc/bind/named.conf.local
vboxuser@ubuntu:~$ sudo apt-get install bind9
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  bind9-utils
Suggested packages:
  bind-doc
The following NEW packages will be installed:
  bind9 bind9-utils
0 upgraded, 2 newly installed, 0 to remove and 157 not upgraded.
Need to get 417 kB of archives.
After this operation, 1,612 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 bind9-utils amd64 1:9.18.39-0ubuntu0.24.04.2 [159 kB]
Get:2 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 bind9 amd64 1:9.18.39-0ubuntu0.24.04.2 [258 kB]
Fetched 417 kB in 1s (325 kB/s)
Selecting previously unselected package bind9-utils.
(Reading database ... 155262 files and directories currently installed.)
Preparing to unpack .../bind9-utils_1%3a9.18.39-0ubuntu0.24.04.2_amd64.deb ...
Unpacking bind9-utils (1:9.18.39-0ubuntu0.24.04.2) ...
Selecting previously unselected package bind9.
Preparing to unpack .../bind9_1%3a9.18.39-0ubuntu0.24.04.2_amd64.deb ...
Unpacking bind9 (1:9.18.39-0ubuntu0.24.04.2) ...
Setting up bind9-utils (1:9.18.39-0ubuntu0.24.04.2) ...
Setting up bind9 (1:9.18.39-0ubuntu0.24.04.2) ...
info: Selecting GID from range 100 to 999 ...
info: Adding group `bind' (GID 124) ...
info: Selecting UID from range 100 to 999 ...

info: Adding system user `bind' (UID 123) ...
info: Adding new user `bind' (UID 123) with group `bind' ...
info: Not creating home directory `/var/cache/bind'.
wrote key file "/etc/bind/rndc.key"
named-resolvconf.service is a disabled or a static unit, not starting it.
Created symlink /etc/systemd/system/bind9.service → /usr/lib/systemd/system/named.service.
Created symlink /etc/systemd/system/multi-user.target.wants/named.service → /usr/lib/systemd/system/named.service.
Processing triggers for man-db (2.12.0-4build2) ...
Processing triggers for ufw (0.36.2-6) ...
vboxuser@ubuntu:~$ sudo nano /etc/bind/named.conf.local
vboxuser@ubuntu:~$ sudo nano /etc/bind/db.empresa.local
vboxuser@ubuntu:~$ sudo systemctl restart bind9
[sudo] password for vboxuser: 
vboxuser@ubuntu:~$ /etc/resolv.conf
bash: /etc/resolv.conf: Permission denied
vboxuser@ubuntu:~$ /etc/resolv.conf
bash: /etc/resolv.conf: Permission denied
vboxuser@ubuntu:~$ sudo /etc/resolv.conf
sudo: /etc/resolv.conf: command not found
vboxuser@ubuntu:~$ sudo nano /etc/resolv.conf
vboxuser@ubuntu:~$ dig www.empressa.local

; <<>> DiG 9.18.39-0ubuntu0.24.04.2-Ubuntu <<>> www.empressa.local
;; global options: +cmd
;; Got answer:
;; WARNING: .local is reserved for Multicast DNS
;; You are currently testing what happens when an mDNS query is leaked to DNS
;; ->>HEADER<<- opcode: QUERY, status: NXDOMAIN, id: 46298
;; flags: qr rd ra ad; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 1232
; COOKIE: 0a14e557c2347a7b010000006974c53e92f12ffcc45fa468 (good)
;; QUESTION SECTION:
;www.empressa.local.		IN	A

;; AUTHORITY SECTION:
.			10800	IN	SOA	a.root-servers.net. nstld.verisign-grs.com. 2026012400 1800 900 604800 86400

;; Query time: 386 msec
;; SERVER: 127.0.0.1#53(127.0.0.1) (UDP)
;; WHEN: Sat Jan 24 13:12:30 UTC 2026
;; MSG SIZE  rcvd: 150

vboxuser@ubuntu:~$ curl http://www.empresa.local
Command 'curl' not found, but can be installed with:
sudo apt install curl
vboxuser@ubuntu:~$ sudo apt install curl
sudo: unable to resolve host ubuntu: Name or service not known
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  curl
0 upgraded, 1 newly installed, 0 to remove and 157 not upgraded.
Need to get 226 kB of archives.
After this operation, 534 kB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 curl amd64 8.5.0-2ubuntu10.6 [226 kB]
Fetched 226 kB in 13s (17.7 kB/s)                                                                            
Selecting previously unselected package curl.
(Reading database ... 155350 files and directories currently installed.)
Preparing to unpack .../curl_8.5.0-2ubuntu10.6_amd64.deb ...
Unpacking curl (8.5.0-2ubuntu10.6) ...
Setting up curl (8.5.0-2ubuntu10.6) ...
Processing triggers for man-db (2.12.0-4build2) ...
vboxuser@ubuntu:~$ curl http://www.empresa.local
curl: (6) Could not resolve host: www.empresa.local
vboxuser@ubuntu:~$ dig @localhost www.empresa.local

; <<>> DiG 9.18.39-0ubuntu0.24.04.2-Ubuntu <<>> @localhost www.empresa.local
; (2 servers found)
;; global options: +cmd
;; Got answer:
;; WARNING: .local is reserved for Multicast DNS
;; You are currently testing what happens when an mDNS query is leaked to DNS
;; ->>HEADER<<- opcode: QUERY, status: SERVFAIL, id: 55778
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 1232
; COOKIE: 8a8fa5d118a6e970010000006974c5e8f40ae7549c0a6baf (good)
;; QUESTION SECTION:
;www.empresa.local.		IN	A

;; Query time: 0 msec
;; SERVER: ::1#53(localhost) (UDP)
;; WHEN: Sat Jan 24 13:15:20 UTC 2026
;; MSG SIZE  rcvd: 74

vboxuser@ubuntu:~$ curl http://www.empresa.local
curl: (6) Could not resolve host: www.empresa.local
vboxuser@ubuntu:~$ dig @localhost www.empresa.local

; <<>> DiG 9.18.39-0ubuntu0.24.04.2-Ubuntu <<>> @localhost www.empresa.local
; (2 servers found)
;; global options: +cmd
;; Got answer:
;; WARNING: .local is reserved for Multicast DNS
;; You are currently testing what happens when an mDNS query is leaked to DNS
;; ->>HEADER<<- opcode: QUERY, status: SERVFAIL, id: 2593
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 1232
; COOKIE: 00fc848bed74eabf010000006974c649c154824e51ac6e77 (good)
;; QUESTION SECTION:
;www.empresa.local.		IN	A

;; Query time: 0 msec
;; SERVER: ::1#53(localhost) (UDP)
;; WHEN: Sat Jan 24 13:16:57 UTC 2026
;; MSG SIZE  rcvd: 74

vboxuser@ubuntu:~$ curl http://www.empresa.local
curl: (6) Could not resolve host: www.empresa.local
vboxuser@ubuntu:~$ sudo nano /etc/resolv.conf
sudo: unable to resolve host ubuntu: Name or service not known
vboxuser@ubuntu:~$ sudo nano /etc/resolv.conf
sudo: unable to resolve host ubuntu: Name or service not known
vboxuser@ubuntu:~$ sudo nano /etc/resolv.conf
sudo: unable to resolve host ubuntu: Name or service not known
vboxuser@ubuntu:~$ curl http://www.empresa.local
curl: (6) Could not resolve host: www.empresa.local
vboxuser@ubuntu:~$ curl -I http://www.empresa.local
curl: (6) Could not resolve host: www.empresa.local
vboxuser@ubuntu:~$ sudo nano /etc/resolv.conf
sudo: unable to resolve host ubuntu: Name or service not known
vboxuser@ubuntu:~$ curl -I http://www.empresa.local
curl: (6) Could not resolve host: www.empresa.local
vboxuser@ubuntu:~$ curl http://www.empresa.local
curl: (6) Could not resolve host: www.empresa.local
vboxuser@ubuntu:~$ sudo nano /etc/resolv.conf
sudo: unable to resolve host ubuntu: Name or service not known
vboxuser@ubuntu:~$ curl http://www.empresa.local
curl: (6) Could not resolve host: www.empresa.local
vboxuser@ubuntu:~$ sudo systemctl status bind9
sudo: unable to resolve host ubuntu: Name or service not known
Warning: The unit file, source configuration file or drop-ins of named.service changed on disk. Run 'systemct>
● named.service - BIND Domain Name Server
     Loaded: loaded (/usr/lib/systemd/system/named.service; enabled; preset: enabled)
     Active: active (running) since Sat 2026-01-24 13:09:40 UTC; 13min ago
       Docs: man:named(8)
   Main PID: 26710 (named)
     Status: "running"
      Tasks: 8 (limit: 4546)
     Memory: 24.2M (peak: 24.7M)
        CPU: 1.032s
     CGroup: /system.slice/named.service
             └─26710 /usr/sbin/named -f -u bind

Jan 24 13:09:40 ubuntu named[26710]: dns_master_load: /etc/bind/db.empresa.local:1: unexpected end of input
Jan 24 13:09:40 ubuntu named[26710]: zone empresa.local/IN: loading from master file /etc/bind/db.empresa.loc>
Jan 24 13:09:40 ubuntu named[26710]: zone empresa.local/IN: not loaded due to errors.
Jan 24 13:09:40 ubuntu named[26710]: zone 127.in-addr.arpa/IN: loaded serial 1
Jan 24 13:09:40 ubuntu named[26710]: zone 255.in-addr.arpa/IN: loaded serial 1
Jan 24 13:09:40 ubuntu named[26710]: all zones loaded
Jan 24 13:09:40 ubuntu named[26710]: running
Jan 24 13:09:40 ubuntu systemd[1]: Started named.service - BIND Domain Name Server.
Jan 24 13:09:50 ubuntu named[26710]: resolver priming query complete: timed out
Jan 24 13:09:50 ubuntu named[26710]: managed-keys-zone: Unable to fetch DNSKEY set '.': timed out
lines 1-23
[1]+  Stopped                 sudo systemctl status bind9
vboxuser@ubuntu:~$ cat /etc/resolv.conf
# This is /run/systemd/resolve/stub-resolv.conf managed by man:systemd-resolved(8).
# Do not edit.
#
# This file might be symlinked as /etc/resolv.conf. If you're looking at
# /etc/resolv.conf and seeing this text, you have followed the symlink.
#
# This is a dynamic resolv.conf file for connecting local clients to the
# internal DNS stub resolver of systemd-resolved. This file lists all
# configured search domains.
#
# Run "resolvectl status" to see details about the uplink DNS servers
# currently in use.
#
# Third party programs should typically not access this file directly, but only
# through the symlink at /etc/resolv.conf. To manage man:resolv.conf(5) in a
# different way, replace this symlink by a static file or a different symlink.
#
# See man:systemd-resolved.service(8) for details about the supported modes of
# operation for /etc/resolv.conf.

nameserver 127.0.0.1
options edns0 trust-ad
search GRAU TECNICO
vboxuser@ubuntu:~$ pingg www.empresa.local
Command 'pingg' not found, did you mean:
  command 'ping4' from deb iputils-ping (3:20240117-1ubuntu0.1)
  command 'ping6' from deb iputils-ping (3:20240117-1ubuntu0.1)
  command 'ping6' from deb inetutils-ping (2:2.4-3ubuntu1)
  command 'ping3' from deb python3-ping3 (4.0.4-2)
  command 'ping' from deb iputils-ping (3:20240117-1ubuntu0.1)
  command 'ping' from deb inetutils-ping (2:2.4-3ubuntu1)
Try: sudo apt install <deb name>
vboxuser@ubuntu:~$ 
