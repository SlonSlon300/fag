# fag
ssh user@ip 'bash -s' < linenu.sh > info.txt

https://blog.g0tmi1k.com/2011/08/basic-linux-privilege-escalation/


Operating System
What's the distribution type? What version?

1
2
3
4

	

cat /etc/issue
cat /etc/*-release
  cat /etc/lsb-release      # Debian based
  cat /etc/redhat-release   # Redhat based

What's the kernel version? Is it 64-bit?

1
2
3
4
5
6

	

cat /proc/version
uname -a
uname -mrs
rpm -q kernel
dmesg | grep Linux
ls /boot | grep vmlinuz-

What can be learnt from the environmental variables?

1
2
3
4
5
6
7

	

cat /etc/profile
cat /etc/bashrc
cat ~/.bash_profile
cat ~/.bashrc
cat ~/.bash_logout
env
set

Is there a printer?

1

	

lpstat -a
