### Common Commands

Add User:

useradd automation
passwd automation
<pre>
[root@ip-172-31-21-4 ~]# ls -lart /home
total 0
dr-xr-xr-x 18 root       root       257 Nov 23 14:47 ..
drwx------ 11 ec2-user   ec2-user   263 Nov 30 04:54 ec2-user
drwx------  2 automation automation  62 Nov 30 05:23 automation
drwxr-xr-x  4 root       root        40 Nov 30 05:23 .
</pre>

Change User:
sudo su - automation
<pre>
[automation@ip-172-31-21-4 ~]$ echo $SHELL
/bin/bash

[automation@ip-172-31-21-4 ~]$ cat /etc/shells
/bin/sh
/bin/bash
/usr/bin/sh
/usr/bin/bash
/bin/tcsh
/bin/csh

Helpers:
whatis pwd
man pwd

[ec2-user@ip-172-31-21-4 ~]$ cat /etc/os-release
NAME="Amazon Linux"
VERSION="2"
ID="amzn"
ID_LIKE="centos rhel fedora"
VERSION_ID="2"
PRETTY_NAME="Amazon Linux 2"
ANSI_COLOR="0;33"
CPE_NAME="cpe:2.3:o:amazon:amazon_linux:2"
HOME_URL="https://amazonlinux.com/"

</pre>

### Redirection Operators
output redirection:
- >
- >>
input redirection:
- <
File Descriptor - integer to identify STDIN(0)/STDERR(2)/STDOUT(1)
<pre>
[ec2-user@ip-172-31-21-4 ~]$ ls -lrt 1>success.txt 2>error.txt
[ec2-user@ip-172-31-21-4 ~]$ cat success.txt
total 0
drwxrwxr-x 5 ec2-user ec2-user 272 Nov 26 14:07 dex
drwxrwxr-x 4 ec2-user ec2-user  49 Nov 30 04:59 bash_script_workspace
-rw-rw-r-- 1 ec2-user ec2-user   0 Nov 30 06:21 success.txt
-rw-rw-r-- 1 ec2-user ec2-user   0 Nov 30 06:21 error.txt
[ec2-user@ip-172-31-21-4 ~]$ cat error.txt


ls -lrt 1>success.txt 2>&1 --> store error output in same file as 1
ls -lrt &>all.txt --> success + error in same file
</pre>

### Reading File Contents
<pre>
- vi/vim 
  esc: set number
- cat, less, more
    more -n
    more +n
    head -n 
    tail -n

print range of lines:
- head -12 abc.txt | tail -7 abc.txt
- sed
- awk
</pre>