#!/bin/sh

# CONFIGURATION
PEER_MAC="<insert_peer_mac_here>"     # e.g. aa:bb:cc:dd:ee:ff
LOCAL_IP="<insert_local_ip_here>"     # e.g. 192.168.1.100


# Create MACsec interface
echo "Adding MACsec interface..."
ip link add link eth0 macsec0 type macsec

# Configure TX Secure Association
echo "Configuring TX SA..."
ip macsec add macsec0 tx sa 0 pn 1 on key 00 00112233445566778899aabbccddeeff

# Configure RX Secure Channel and Association
echo "Configuring RX channel and SA..."
ip macsec add macsec0 rx address $PEER_MAC port 1
ip macsec add macsec0 rx address $PEER_MAC port 1 sa 0 pn 1 on key 00 00112233445566778899aabbccddeeff

# Bring up the interface
echo "Bringing up MACsec interface..."
ip link set macsec0 up

# Assign local IP address
echo "Assigning local IP address $LOCAL_IP..."
ip addr add $LOCAL_IP/24 dev macsec0

echo "MACsec setup complete."
