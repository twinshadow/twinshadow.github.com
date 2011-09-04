## bind-utils ##
### dig ###
### dnssec-keygen ###
### host ###
### nslookup ###
### nsupdate ###

## netcat ##
### Stream Socket ###

Host1
<code>
$ mkfifo /temp/fifo
$ (nc -lp 7676 > /temp/fifo &)
</code>

Host2
<code>
$ mkfifo /temp/fifo
$ (nc Host1 7676 < /temp/fifo &)
</code>

## socat ##

## knock ##

# Clients #
## curl ##
## wget ##
## fetch ##
## lynx ##
## links ##
## w3m ##

