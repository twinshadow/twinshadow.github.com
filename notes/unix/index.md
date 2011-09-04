## ack ##

## dstat ##

## tar ##
## cpio ##

## awk ##
## sed ##
## cowsay ##
## figlet/toilet ##
## shuf/jot ##
## xargs ##

## mtree ##

## scrot ##

## find/oldfind ##

## openssh ##
## openssl ##
## openvpn ##

# moreutils #
### combine ###
### ifdata ###
### ifne ###
### isutf8 ###
### lckdo ###
### mispipe ###
### parallel ###
### pee ###
### sponge ###
### ts ###
### vidir ###
### vipe ###
### zrun ###

# GNU core-utils #
### arch ###
### base64 ###
### basename ###
### cat ###
### chcon ###
### chgrp ###
### chmod ###
### chown ###
### chroot ###
### cksum ###
### comm ###
### cp ###
### csplit ###
### cut ###
### date ###
### dd ###
### df ###
### dir ###
### dircolors ###
### dirname ###
### du ###
### echo ###
### env ###
### expand ###
### expr ###
### factor ###
### false ###
### fmt ###
### fold ###
### head ###
### hostid ###
### id ###
### install ###
### join ###
### link ###
### ln ###
### ls ###
### logname ###
### md5sum ###
### mkdir ###
### mkfifo ###
### mknod ###
### mktemp ###
### mv ###
### nice ###
### nl ###
### nohup ###
### nproc ###
### od ###
### paste ###
### pathchk ###
### pinky ###
### pr ###
### printenv ###
### printf ###
### ptx ###
### pwd ###
### readlink ###
### rm ###
### rmdir ###
### runcon ###
### seq ###
### sha1sum ###
### sha224sum ###
### sha256sum ###
### sha384sum ###
### sha512sum ###
### shred ###
### shuf ###
### sleep ###
### sort ###
### split ###
### stat ###
### stdbuf ###
### stty ###
### sum ###
### sync ###
### tac ###
### tail ###
### tee ###
### test ###
test expression
[ expression ]

The test utility evaluates the expression and, if it evaluates to true, returns a zero (true) exit status; otherwise it returns 1 (false).  If there is no expression, test also returns 1 (false).

All operators and flags are separate arguments to the test utility.

The following primaries are used to construct expression:

-b file       True if file exists and is a block special file.

-c file       True if file exists and is a character special file.

-d file       True if file exists and is a directory.

-e file       True if file exists (regardless of type).

-f file       True if file exists and is a regular file.

-g file       True if file exists and its set group ID flag is set.

-h file       True if file exists and is a symbolic link.

-k file       True if file exists and its sticky bit is set.

-n string     True if the length of string is nonzero.

-p file       True if file is a named pipe (FIFO).

-r file       True if file exists and is readable.

-s file       True if file exists and has a size greater than zero.

-t file\_descriptor
True if the file whose file descriptor number is file\_descriptor is open and is associated with a terminal.

-u file       True if file exists and its set user ID flag is set.

-w file       True if file exists and is writable.  True indicates only that the write flag is on.  The file is not writable on a read-only file system even if this test indicates true.

-x file       True if file exists and is executable.  True indicates only that the execute flag is on.  If file is a directory, true indicates that file can be searched.

-z string     True if the length of string is zero.

-L file       True if file exists and is a symbolic link.  This operator is retained for compatibility with previous versions of this program.  Do not rely on its existence; use -h instead.

-O file       True if file exists and its owner matches the effective user id of this process.

-G file       True if file exists and its group matches the effective group id of this process.

-S file       True if file exists and is a socket.

file1 -nt file2
True if file1 and file2 exist and file1 is newer than file2.

file1 -ot file2
True if file1 and file2 exist and file1 is older than file2.

file1 -ef file2
True if file1 and file2 exist and refer to the same file.

string
True if string is not the null string.

s1 = s2
True if the strings s1 and s2 are identical.

s1 != s2      True if the strings s1 and s2 are not identical.

s1 < s2       True if string s1 comes before s2 based on the ASCII value of their characters.

s1 > s2       True if string s1 comes after s2 based on the ASCII value of their characters.

n1 -eq n2     True if the integers n1 and n2 are algebraically equal.

n1 -ne n2     True if the integers n1 and n2 are not algebraically equal.

n1 -gt n2     True if the integer n1 is algebraically greater than the integer n2.

n1 -ge n2     True if the integer n1 is algebraically greater than or equal to the integer n2.

n1 -lt n2     True if the integer n1 is algebraically less than the integer n2.

n1 -le n2     True if the integer n1 is algebraically less than or equal to the integer n2.

These primaries can be combined with the following operators:

! expression  True if expression is false.

expression1 -a expression2
True if both expression1 and expression2 are true.

<code>expression1 -o expression2</code>
True if either expression1 or expression2 are true.

(expression)  True if expression is true.

The -a operator has higher precedence than the -o operator.
### timeout ###
### touch ###
### tr ###
### true ###
### truncate ###
### tsort ###
### tty ###
### uname ###
### unexpand ###
### uniq ###
### unlink ###
### users ###
### vdir ###
### wc ###
### who ###
### whoami ###
### yes ###
