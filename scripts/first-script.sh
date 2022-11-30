#!/bin/bash
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