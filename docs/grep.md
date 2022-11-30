### Grep
<pre>
Usage: grep [OPTION]... PATTERN [FILE]...
Search for PATTERN in each FILE or standard input.
PATTERN is, by default, a basic regular expression (BRE).
Example: grep -i 'hello world' menu.h main.c

Regexp selection and interpretation:
  -E, --extended-regexp     PATTERN is an extended regular expression (ERE)
  -F, --fixed-strings       PATTERN is a set of newline-separated fixed strings
  -G, --basic-regexp        PATTERN is a basic regular expression (BRE)
  -P, --perl-regexp         PATTERN is a Perl regular expression
  -e, --regexp=PATTERN      use PATTERN for matching<mark>
  -f, --file=FILE           obtain PATTERN from FILE</mark>
  -i, --ignore-case         ignore case distinctions
  -w, --word-regexp         force PATTERN to match only whole words
  -x, --line-regexp         force PATTERN to match only whole lines
  -z, --null-data           a data line ends in 0 byte, not newline

Miscellaneous:
  -s, --no-messages         suppress error messages
  -v, --invert-match        select non-matching lines
  -V, --version             display version information and exit
      --help                display this help text and exit

Output control:
  -m, --max-count=NUM       stop after NUM matches
  -b, --byte-offset         print the byte offset with output lines
  -n, --line-number         print line number with output lines
      --line-buffered       flush output on every line
  -H, --with-filename       print the file name for each match
  -h, --no-filename         suppress the file name prefix on output
      --label=LABEL         use LABEL as the standard input file name prefix
  -o, --only-matching       show only the part of a line matching PATTERN
  -q, --quiet, --silent     suppress all normal output
      --binary-files=TYPE   assume that binary files are TYPE;
                            TYPE is 'binary', 'text', or 'without-match'
  -a, --text                equivalent to --binary-files=text
  -I                        equivalent to --binary-files=without-match
  -d, --directories=ACTION  how to handle directories;
                            ACTION is 'read', 'recurse', or 'skip'
  -D, --devices=ACTION      how to handle devices, FIFOs and sockets;
                            ACTION is 'read' or 'skip'
  -r, --recursive           like --directories=recurse
  -R, --dereference-recursive
                            likewise, but follow all symlinks
      --include=FILE_PATTERN
                            search only files that match FILE_PATTERN
      --exclude=FILE_PATTERN
                            skip files and directories matching FILE_PATTERN
      --exclude-from=FILE   skip files matching any file pattern from FILE
      --exclude-dir=PATTERN directories that match PATTERN will be skipped.
  -L, --files-without-match print only names of FILEs containing no match
  -l, --files-with-matches  print only names of FILEs containing matches
  -c, --count               print only a count of matching lines per FILE
  -T, --initial-tab         make tabs line up (if needed)
  -Z, --null                print 0 byte after FILE name

Context control:
<mark>
  -B, --before-context=NUM  print NUM lines of leading context
  -A, --after-context=NUM   print NUM lines of trailing context
  -C, --context=NUM         print NUM lines of output context
  -NUM                      same as --context=NUM
      --group-separator=SEP use SEP as a group separator
      --no-group-separator  use empty string as a group separator
      --color[=WHEN],
      --colour[=WHEN]       use markers to highlight the matching strings;
                            WHEN is 'always', 'never', or 'auto'
  -U, --binary              do not strip CR characters at EOL (MSDOS/Windows)
  -u, --unix-byte-offsets   report offsets as if CRs were not there
                            (MSDOS/Windows)
</mark>

grep command syntax:
grep [options] “string/pattern” file/files
- Basic options: -i -w -v -o -n -c -A -B -C -r -l -h 
- Advanced Options: -f -e and –E
  -f Takes search string/pattern from a file, one per line
  -e To search multiple strings/patterns
  Pattern is a string and it represents more than one string. 
  -E To work with patterns
  grep -E[options] “pattern” file/files

xy|pq Matches for xy or pq
^xyz Matches for the lines which are starting with “xyz”
xyz$ Matches for the lines which are ending with “xyz”
^$ Matches for the lines which are empty
\ To remove the special purpose of any symbol. Ex: \^ \$
. Matches any one character
\. Matches exactly with .
\b Match the empty string at the edge of word
? The preceding character is optional and will be matched, at most, once.
* The preceding character will be matched zero or more times
+ The preceding character will be matched one or more times
[xyz] Matches for the lines which are having x or y or z 
[a-d] is equal to [abcd] Matched for the lines which are having a/b/b/d
[a-ds-z] is eqal to [abcdstuvwxyz]
^[abc] Matches for the lines which are starting with a/b/c
[^abc] Matches for the lines which are not starting with a/b/c
{N} The preceding string matched exactly N times
{N,} The preceding string matched N or more times
{N,M} The preceding string matched at least N times but not more than M times

Rules to create patterns:
[[:alnum:]] – Alphanumeric characters.
[[:alpha:]] – Alphabetic characters
[[:blank:]] – Blank characters: space and tab.
[[:digit:]] – Digits: ‘0 1 2 3 4 5 6 7 8 9’.
[[:lower:]] – Lower-case letters: ‘a b c d e f g h i j k l m n o p q r s t u v w x y z’.
[[:space:]] – Space characters: tab, newline, vertical tab, form feed, carriage return, and space.
[[:upper:]] – Upper-case letters: ‘A B C D E F G H I J K L M N O P Q R S T U V W X Y Z’.


grep -E "pattern" files
</pre>

