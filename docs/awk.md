### awk

<pre>
Usage: awk [POSIX or GNU style options] -f progfile [--] file ...
Usage: awk [POSIX or GNU style options] [--] 'program' file ...
POSIX options:          GNU long options: (standard)
        -f progfile             --file=progfile
        -F fs                   --field-separator=fs
        -v var=val              --assign=var=val
Short options:          GNU long options: (extensions)
        -b                      --characters-as-bytes
        -c                      --traditional
        -C                      --copyright
        -d[file]                --dump-variables[=file]
        -e 'program-text'       --source='program-text'
        -E file                 --exec=file
        -g                      --gen-pot
        -h                      --help
        -L [fatal]              --lint[=fatal]
        -n                      --non-decimal-data
        -N                      --use-lc-numeric
        -O                      --optimize
        -p[file]                --profile[=file]
        -P                      --posix
        -r                      --re-interval
        -S                      --sandbox
        -t                      --lint-old
        -V                      --version
Simple awk command syntax:
awk [options] ‘[selection _criteria] {action }' input-file
cat input-file | awk [options] ‘[selection _criteria] {action }' input-file
Awk can take the following options:
-F fs To specify a field separator. (Default separator is tab and space)
-f file To specify a file that contains awk script.
-v var=value To declare a variable. 
Selection criteria: pattern/condition 
Action: It is a logic to perform action on each row/record

Simple awk command syntax:
    awk ' {action }' input-file
    Action: Action is a logic to perform action on each record.
    Example: print $1 print first filed from each line
    Some of the default variables for awk:
    $0     Entire file
    $1     First field from each line/record
    $2     Second field from each line/record
    NR     It will print line or record number
    NF     It will print number of filed from each line/record

cat /etc/passwd | awk -F ":" '{print $1}'
cat /etc/passwd | awk -F ":" '{print $1 NR NF}'
</pre>m