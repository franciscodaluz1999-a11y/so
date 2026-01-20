$ sudo groupadd desenvolvedores 
ubuntu@ubuntu:~$ sudo groupadd testadpres 
ubuntu@ubuntu:~$ sudo useradd -m -g desenvolvedores dev_senior
ubuntu@ubuntu:~$ sudo useradd -m -g desenvolvedores dev-junior
ubuntu@ubuntu:~$ sudo useradd -m -g testadores qa_analyst
useradd: group 'testadores' does not exist
ubuntu@ubuntu:~$ ^C
ubuntu@ubuntu:~$ sudo useradd -m -g desenvolvedores dev_junior
ubuntu@ubuntu:~$ sudo useradd -m -g testadores qa_analyst
useradd: group 'testadores' does not exist
ubuntu@ubuntu:~$ sudo usermod -aG testadores dev_senior 
usermod: group 'testadores' does not exist
ubuntu@ubuntu:~$ sudo groupadd desenvolvedores 
groupadd: group 'desenvolvedores' already exists
ubuntu@ubuntu:~$ sudo gropadd testadores 
sudo: gropadd: command not found
ubuntu@ubuntu:~$ sudo grouppad testadores 
sudo: grouppad: command not found
ubuntu@ubuntu:~$ sudo groupadd testadores 
ubuntu@ubuntu:~$ sudo useradd -m -s /bin/bash -g desenvolvedores dev_senior 
useradd: user 'dev_senior' already exists
ubuntu@ubuntu:~$ sudo useradd -m -s /bin/bash -g desenvolvedores dev_junior
useradd: user 'dev_junior' already exists
ubuntu@ubuntu:~$ sudo useradd -m -s /bin/bash -g testadores qa_analyst 
ubuntu@ubuntu:~$ sudo usermod -aG testadores dev_senior 
ubuntu@ubuntu:~$ sudo passwd dev_senior 
New password: 
BAD PASSWORD: The password is shorter than 8 characters
Retype new password: 
Sorry, passwords do not match.
New password: 
BAD PASSWORD: The password is shorter than 8 characters
Retype new password: 
Sorry, passwords do not match.
New password: 
Retype new password: 
passwd: password updated successfully
ubuntu@ubuntu:~$ sudo passwd dev_junior
New password: 
Retype new password: 
passwd: password updated successfully
ubuntu@ubuntu:~$ sudo passwd qa_analyst
New password: 
Retype new password: 
passwd: password updated successfully
ubuntu@ubuntu:~$ sudo Eduardo1409 dev_junior
sudo: Eduardo1409: command not found
ubuntu@ubuntu:~$ sudo Eduardo1409 <dev_junior> 
bash: syntax error near unexpected token `newline'
ubuntu@ubuntu:~$ sudo passwd junior_dev
passwd: user 'junior_dev' does not exist
ubuntu@ubuntu:~$ sudo passwd junior 
passwd: user 'junior' does not exist
ubuntu@ubuntu:~$ sudo passwd dev_junior
New password: 
Retype new password: 
passwd: password updated successfully
ubuntu@ubuntu:~$ /srv/projetos/backend
bash: /srv/projetos/backend: No such file or directory
ubuntu@ubuntu:~$ /srv/projetos/frontend
bash: /srv/projetos/frontend: No such file or directory
ubuntu@ubuntu:~$ sudo mkdir -p /srv/projetos/backend
ubuntu@ubuntu:~$ sudo mkdir -p /srv/projetos/frontend
ubuntu@ubuntu:~$ sudo chowm -R dev_senior:desenvolvedores /srv/projetos
sudo: chowm: command not found
ubuntu@ubuntu:~$ sudo chmod -R 750 /srv/projetos
ubuntu@ubuntu:~$ sudo chown -R dev_senior:desenvolvedores /srv/projetos
ubuntu@ubuntu:~$ ls -l /srv/
total 0
drwxr-x--- 4 dev_senior desenvolvedores 80 Jan 20 12:06 projetos
ubuntu@ubuntu:~$ sleep 500 &
[1] 7345
ubuntu@ubuntu:~$ ps aux | grep sleep 
ubuntu      7345  0.0  0.0  17380  1940 pts/0    S    12:10   0:00 sleep 500
ubuntu      7353  0.0  0.1  18344  2040 pts/0    S+   12:11   0:00 grep --color=auto sleep
ubuntu@ubuntu:~$ sudo kill <PID>
bash: syntax error near unexpected token `newline'
ubuntu@ubuntu:~$ ps aux | grep dev_junior
ubuntu      7363  0.0  0.1  18348  2108 pts/0    S+   12:13   0:00 grep --color=auto dev_junior
ubuntu@ubuntu:~$ sudo kill 18348
kill: (18348): No such process
ubuntu@ubuntu:~$ ^C
ubuntu@ubuntu:~$ sudo kill PID
kill: failed to parse argument: 'PID'
ubuntu@ubuntu:~$ sudo kill pid
kill: failed to parse argument: 'pid'
ubuntu@ubuntu:~$ sudo kill -9 PID
kill: failed to parse argument: 'PID'
ubuntu@ubuntu:~$ sudo pkill dev_junior
ubuntu@ubuntu:~$ jobs -p
7345
ubuntu@ubuntu:~$ /usr/local/bin/boasvindas.sh
bash: /usr/local/bin/boasvindas.sh: No such file or directory
ubuntu@ubuntu:~$ #!/bin/bash
ubuntu@ubuntu:~$ encho 'Bem-vindo(a) ao Servidor de Desenvolvimento!'
Command 'encho' not found, did you mean:
  command 'echo' from deb coreutils (9.4-2ubuntu2)
Try: sudo apt install <deb name>
[1]+  Done                    sleep 500
ubuntu@ubuntu:~$ #!/bin/bash
ubuntu@ubuntu:~$ encho 'Bem-vindo(a) ao Servidor de Desenvolvimento!'
Command 'encho' not found, did you mean:
  command 'echo' from deb coreutils (9.4-2ubuntu2)
Try: sudo apt install <deb name>
ubuntu@ubuntu:~$ sudo chamod 755 /usr/local/bin/boasvindas.sh
sudo: chamod: command not found
ubuntu@ubuntu:~$ sudo nano /usr/local/bin/boasvindas.sh
ubuntu@ubuntu:~$ sudo chmod 755 /usr/local/bin/boasvindas.sh
ubuntu@ubuntu:~$ /usr/local/bin/boasvindas.sh
Bem-vindo(a| Servidor de Desenvolvimento!
Data e hora atual: Tue Jan 20 12:30:39 UTC 2026
============================================
ubuntu@ubuntu:~$ ^C
