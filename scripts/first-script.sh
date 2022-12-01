#!/usr/bin/env bash

#set -n 
#set -x
#set -e
#set -v
<<notes_on_set-n
To be used for syntax check
notes_on_set-n

<<notes_on_portability
instead using "#!/bin/bash" use "#!/usr/bin/env bash"
notes_on_portability

<<notes_on_variables
- variable name should contains a-z/A-Z/0-9/_
- length <=20 char
- case sensitive
- no space on either side of =
- output of a command into variables -> curdate=`date` or curdate=$(date)
notes_on_variables

<<notes_on_echo
Simple syntax: 
echo message/string
echo “message/string”
echo “message/string with some variable $xyz”
echo “message/string/$variable/$(command)”
Advanced usage (to execute escape characters):
echo -e 
“Message/String or variable”
Escape Characters:
\n New Line
\t Horizantal Tab
\v Vertical Tab
\b Backspace
\r Carriage Return etc…
To display message in colors.
echo -n 
“message/string/$variable/$(command)
notes_on_echo

: '
This is another type of
multi-line comment
'

cat <<EOF
current user: $USER
user home: $HOME
EOF

<<notes_on_herestring
command <<< string
notes_on_herestring

<<notes_on_exit_status
$? -> captures exit status of last command
0 -> success
notes_on_exit_status

cur_date=$(date)
cur_date_status=`echo $?`
echo "current date $cur_date, command exit status ${cur_date_status}"

<<note_string_ops
Defining a string variable 
   x=shell / y=“Shell scripting” / cmdOut=$(date) 
   Displaying the string variable value
   echo $x / echo ${x} 
   Finding the length of a string 
   xLength=${#x}
   Concatenation of strings 
   xyResult=$x$y
   Convert Strings into lower/upper case 
   xU=${x^^}, yL=${y,,}
   Replacing the part of the string using variable
   newY=${y/Shell/Bash Shell} or we can also use sed command
   Slicing the string/sub-string
   ${variable_name:start_position:length}
note_string_ops

<<note_path
   realpath : Converts each filename argument to an absolute pathname but it do not validate the path.
   basename: 
   Strips directory information 
   Strips suffixes from file names
   dirname : It will delete any suffix beginning with the last slash character and return the result
note_path

