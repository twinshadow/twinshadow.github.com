---
title: UNIX Tools
layout: page
---
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
##### files ######
<pre>
-b file == block special file
-c file == character special file
-d file == directory
-e file == exists (regardless of type)
-f file == regular file
-g file == group ID flag is set
-G file == group matches the process GID
-h file == symbolic link
-k file == sticky bit is set
-L file == symbolic link (DEPRECATED)
-O file == owner matches the process UID
-p file == named pipe (FIFO)
-r file == readable bit is set
-s file == size greater than zero
-S file == socket
-u file == user ID flag is set
-w file == writable bit is set
-x file == executable bit is set

-t file_descriptor == open FD

file1 -nt file2 == newer than
file1 -ot file2 == older than
file1 -ef file2 == same file
</pre>

##### strings #####
<pre>
-n string == length of string is nonzero.
-z string == length of string is zero.

string == non-null string

s1 = s2 == ASCII equal
s1 != s2 == ASCII not-equal
s1 < s2 == ASCII less than.
s1 > s2 == ASCII greater than.

n1 -eq n2 == integer equal
n1 -ne n2 == integer not-equal
n1 -gt n2 == integer greater-than
n1 -ge n2 == integer greater-than or equal-to
n1 -lt n2 == integer less-than
n1 -le n2 == integer less-than or equal-to
</pre>

##### operators #####
<pre>
! expression == NOT
expression1 -a expression2 == AND
expression1 -o expression2 == OR
(expression) == EQ
</pre>

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
