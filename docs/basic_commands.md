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
<pre>
output redirection:
- >
- >>
input redirection:
- <
File Descriptor - integer to identify STDIN(0)/STDERR(2)/STDOUT(1)
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
### tr
<pre>
Usage: tr [OPTION]... SET1 [SET2]
Translate, squeeze, and/or delete characters from standard input,
writing to standard output.

  -c, -C, --complement    use the complement of SET1
  -d, --delete            delete characters in SET1, do not translate
  -s, --squeeze-repeats   replace each input sequence of a repeated character
                            that is listed in SET1 with a single occurrence
                            of that character
  -t, --truncate-set1     first truncate SET1 to length of SET2
      --help     display this help and exit
      --version  output version information and exit

SETs are specified as strings of characters.  Most represent themselves.
Interpreted sequences are:

  \NNN            character with octal value NNN (1 to 3 octal digits)
  \\              backslash
  \a              audible BEL
  \b              backspace
  \f              form feed
  \n              new line
  \r              return
  \t              horizontal tab
  \v              vertical tab
  CHAR1-CHAR2     all characters from CHAR1 to CHAR2 in ascending order
  [CHAR*]         in SET2, copies of CHAR until length of SET1
  [CHAR*REPEAT]   REPEAT copies of CHAR, REPEAT octal if starting with 0
  [:alnum:]       all letters and digits
  [:alpha:]       all letters
  [:blank:]       all horizontal whitespace
  [:cntrl:]       all control characters
  [:digit:]       all digits
  [:graph:]       all printable characters, not including space
  [:lower:]       all lower case letters
  [:print:]       all printable characters, including space
  [:punct:]       all punctuation characters
  [:space:]       all horizontal or vertical whitespace
  [:upper:]       all upper case letters
  [:xdigit:]      all hexadecimal digits
  [=CHAR=]        all characters which are equivalent to CHAR

Translation occurs if -d is not given and both SET1 and SET2 appear.
-t may be used only when translating.  SET2 is extended to length of
SET1 by repeating its last character as necessary.  Excess characters
of SET2 are ignored.  Only [:lower:] and [:upper:] are guaranteed to
expand in ascending order; used in SET2 while translating, they may
only be used in pairs to specify case conversion.  -s uses SET1 if not
translating nor deleting; else squeezing uses SET2 and occurs after
translation or deletion.

Ex:
cat /etc/passwd | awk -F ":" '{print $1 NR NF}' | tr -d '1'
cat /etc/passwd | awk -F ":" '{print $1 NR NF}' | tr [:lower:] [:upper:]
</pre>

### tee
<pre>
Usage: tee [OPTION]... [FILE]...
Copy standard input to each FILE, and also to standard output.

  -a, --append              append to the given FILEs, do not overwrite
  -i, --ignore-interrupts   ignore interrupt signals
      --help     display this help and exit
      --version  output version information and exit

If a FILE is -, copy again to standard output.
Ex:
uptime | tee -a uptime.txt
</pre>