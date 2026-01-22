<pre>sudo apt-get install openssh-server
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
openssh-server is already the newest version (1:9.6p1-3ubuntu13.14).
0 upgraded, 0 newly installed, 0 to remove and 148 not upgraded.
<font color="#26A269"><b>vboxuser@ubuntu</b></font>:<font color="#12488B"><b>~</b></font>$ sudo systemctl status ssh
<font color="#26A269"><b>●</b></font> ssh.service - OpenBSD Secure Shell server
     Loaded: loaded (/usr/lib/systemd/system/ssh.service; <font color="#D7D75F"><b>disabled</b></font>; preset: <font color="#26A269"><b>enabled</b></font>)
     Active: <font color="#26A269"><b>active (running)</b></font> since Thu 2026-01-15 14:04:52 UTC; 6 days ago
TriggeredBy: <font color="#26A269"><b>●</b></font> ssh.socket
       Docs: man:sshd(8)
             man:sshd_config(5)
   Main PID: 9651 (sshd)
      Tasks: 1 (limit: 4546)
     Memory: 1.2M (peak: 1.5M)
        CPU: 51ms
     CGroup: /system.slice/ssh.service
             └─<font color="#8A8A8A">9651 &quot;sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups&quot;</font>

Jan 15 14:04:52 ubuntu systemd[1]: Starting ssh.service - OpenBSD Secure Shell server...
Jan 15 14:04:52 ubuntu sshd[9651]: Server listening on 0.0.0.0 port 22.
Jan 15 14:04:52 ubuntu sshd[9651]: Server listening on :: port 22.
Jan 15 14:04:52 ubuntu systemd[1]: Started ssh.service - OpenBSD Secure Shell server.
<font color="#26A269"><b>vboxuser@ubuntu</b></font>:<font color="#12488B"><b>~</b></font>$ ip
Usage: ip [ OPTIONS ] OBJECT { COMMAND | help }
       ip [ -force ] -batch filename
where  OBJECT := { address | addrlabel | amt | fou | help | ila | ioam | l2tp |
                   link | macsec | maddress | monitor | mptcp | mroute | mrule |
                   neighbor | neighbour | netconf | netns | nexthop | ntable |
                   ntbl | route | rule | sr | tap | tcpmetrics |
                   token | tunnel | tuntap | vrf | xfrm }
       OPTIONS := { -V[ersion] | -s[tatistics] | -d[etails] | -r[esolve] |
                    -h[uman-readable] | -iec | -j[son] | -p[retty] |
                    -f[amily] { inet | inet6 | mpls | bridge | link } |
                    -4 | -6 | -M | -B | -0 |
                    -l[oops] { maximum-addr-flush-attempts } | -br[ief] |
                    -o[neline] | -t[imestamp] | -ts[hort] | -b[atch] [filename] |
                    -rc[vbuf] [size] | -n[etns] name | -N[umeric] | -a[ll] |
                    -c[olor]}
<font color="#26A269"><b>vboxuser@ubuntu</b></font>:<font color="#12488B"><b>~</b></font>$ ls
<font color="#12488B"><b>Desktop</b></font>  <font color="#12488B"><b>Documents</b></font>  <font color="#12488B"><b>Downloads</b></font>  <font color="#26A269"><b>firewall.sh</b></font>  <font color="#12488B"><b>Music</b></font>  <font color="#12488B"><b>Pictures</b></font>  <font color="#12488B"><b>Public</b></font>  <font color="#12488B"><b>snap</b></font>  <font color="#12488B"><b>Templates</b></font>  <font color="#12488B"><b>Videos</b></font>
<font color="#26A269"><b>vboxuser@ubuntu</b></font>:<font color="#12488B"><b>~</b></font>$ config
Command &apos;config&apos; not found, did you mean:
  command &apos;confid&apos; from snap confid (1.2.1)
  command &apos;kconfig&apos; from deb kconfig-frontends (4.11.0.1+dfsg-6)
  command &apos;kconfig&apos; from deb kconfig-frontends-nox (4.11.0.1+dfsg-6)
  command &apos;cconfig&apos; from deb xrootd-server (5.6.4-1)
  command &apos;fconfig&apos; from deb redboot-tools (0.7build4)
  command &apos;mconfig&apos; from deb mono-devel (6.8.0.105+dfsg-3.5ubuntu1)
  command &apos;vconfig&apos; from deb vlan (2.0.5ubuntu5)
  command &apos;iconfig&apos; from deb ipmiutil (3.1.9-3)
See &apos;snap info &lt;snapname&gt;&apos; for additional versions.
<font color="#26A269"><b>vboxuser@ubuntu</b></font>:<font color="#12488B"><b>~</b></font>$ iconfig
Command &apos;iconfig&apos; not found, but can be installed with:
sudo apt install ipmiutil
<font color="#26A269"><b>vboxuser@ubuntu</b></font>:<font color="#12488B"><b>~</b></font>$ ifconfig
enp0s3: flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 1500
        inet 10.0.2.15  netmask 255.255.255.0  broadcast 10.0.2.255
        inet6 fd17:625c:f037:2:a00:27ff:fe3c:efa0  prefixlen 64  scopeid 0x0&lt;global&gt;
        inet6 fe80::a00:27ff:fe3c:efa0  prefixlen 64  scopeid 0x20&lt;link&gt;
        inet6 fd17:625c:f037:2:a931:5236:45ff:d89f  prefixlen 64  scopeid 0x0&lt;global&gt;
        ether 08:00:27:3c:ef:a0  txqueuelen 1000  (Ethernet)
        RX packets 295845  bytes 432815384 (432.8 MB)
        RX errors 0  dropped 8  overruns 0  frame 0
        TX packets 81210  bytes 5581679 (5.5 MB)
        TX errors 0  dropped 69 overruns 0  carrier 0  collisions 0

lo: flags=73&lt;UP,LOOPBACK,RUNNING&gt;  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10&lt;host&gt;
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 212096  bytes 18557104 (18.5 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 212096  bytes 18557104 (18.5 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

<font color="#26A269"><b>vboxuser@ubuntu</b></font>:<font color="#12488B"><b>~</b></font>$ ssh vboxuser@10.0.2.15
vboxuser@10.0.2.15&apos;s password: 
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.14.0-37-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

Expanded Security Maintenance for Applications is not enabled.

149 updates can be applied immediately.
To see these additional updates run: apt list --upgradable

Enable ESM Apps to receive additional future security updates.
See https://ubuntu.com/esm or run: sudo pro status

Last login: Thu Jan 15 13:54:16 2026 from 10.0.2.15
<font color="#26A269"><b>vboxuser@ubuntu</b></font>:<font color="#12488B"><b>~</b></font>$ sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bkp
[sudo] password for vboxuser: 
<font color="#26A269"><b>vboxuser@ubuntu</b></font>:<font color="#12488B"><b>~</b></font>$ sudo nano /etc/ssh/sshd_config
<font color="#26A269"><b>vboxuser@ubuntu</b></font>:<font color="#12488B"><b>~</b></font>$ sudo systemctl restart sshd
<font color="#C01C28"><b>Failed to restart sshd.service: Unit sshd.service not found.</b></font>
<font color="#26A269"><b>vboxuser@ubuntu</b></font>:<font color="#12488B"><b>~</b></font>$ sudo systemctl restart ssh
<font color="#26A269"><b>vboxuser@ubuntu</b></font>:<font color="#12488B"><b>~</b></font>$ ssh vboxuser@10.0.2.15 -p 2244
ssh: connect to host 10.0.2.15 port 2244: Connection refused
<font color="#26A269"><b>vboxuser@ubuntu</b></font>:<font color="#12488B"><b>~</b></font>$ ssh root@10.0.2.15 -p 2244
ssh: connect to host 10.0.2.15 port 2244: Connection refused
<font color="#26A269"><b>vboxuser@ubuntu</b></font>:<font color="#12488B"><b>~</b></font>$ 

</pre>
