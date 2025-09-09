# -mohinisec.sh
git clone https://github.com/andrewz101/-mohinisec.sh.git

cd mohinisec

chmod +x mohinisec.sh

Run the script with target IP, port, and attack method:

# HTTP Flood
./mohinisec.sh 127.0.0.1 8080 http

# UDP Flood
./mohinisec.sh 127.0.0.1 80 udp

# TCP Flood
./mohinisec.sh 127.0.0.1 22 tcp

⚠️ Important: MohiniSec is strictly for ethical use in controlled environments. Do not attack public servers or networks without permission.
