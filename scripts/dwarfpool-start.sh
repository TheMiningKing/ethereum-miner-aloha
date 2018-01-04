#!/bin/bash

#
# Plain connection
#
#ethminer -G -F http://eth-us.dwarfpool.com:80/0xd24def0856636050cf891befc0fa69ecf96c160b/aloha

#
# Detached session
#
# Use `screen -x ethminer` to attach and view `ethminer` output. Hold `Ctrl-A-D` to detach
#
#screen -dmS ethminer /usr/local/bin/ethminer -G -F http://eth-us.dwarfpool.com:80/0xd24def0856636050cf891befc0fa69ecf96c160b/aloha

#
# Stratum proxy
#
# Similar to above (`Ctrl-A-D` puts process in background):
# 
# ``` 
# screen -x ethminer
# screen -x stratum
# ``` 
#
(cd /home/miner/eth-proxy && screen -dmS stratum  /usr/bin/python eth-proxy.py)
screen -dmS ethminer /usr/local/bin/ethminer --farm-recheck 200 -G -F http://127.0.0.1:8080/aloha

#
# Show mining
#
screen -x ethminer
