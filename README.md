# MacSec
Instalation and implementation od MACSec in 2 raspberry's pi 5

Hardware configuration:
- 2 raspberry's
- 4 patchcords
- 1 non managable switch
- 1 computer
- internet comunication

Operative system OpenWRT:
- https://firmware-selector.openwrt.org/
- search for raspberry pi 5
- Download image Factory (EXT4)
- burn the image into the micro sd card with the software https://rufus.ie/en/

Software configuration:
- go to LuCI UI via the default ip
- change password
- add a WWAN connection to a internet conection network (in case you cant connect the device fisically to the network)
- change default interface from bridge to eth0
- change default ip

Modified the file setup-macsec.sh with the local ip and the peer MAC

Once modified, run 
```shell
chmod +x setup-macsec.sh
```
Then run the file
```shell
./setup-macsec.sh
```


Some Iperf3 tests has been done with the macsec configuration and with out it, the files of the results are attached in the files of this repository.
