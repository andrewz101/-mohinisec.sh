# -mohinisec.sh
git clone git@github.com:andrewz101/-mohinisec.sh.git
cd mohinisec 
chmod +x mohinisec.sh
./mohinisec.sh 127.0.0.1 8080 http
./mohinisec.sh 127.0.0.1 80 udp
./mohinisec.sh 127.0.0.1 22 tcp
