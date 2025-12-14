#!/bin/bash
# Elegant OS Deployer - Başlatma Scripti

echo "Services restarting..."

# 1. IP Forwarding Aç (İnternet paylaşımı için)
echo "1" | sudo tee /proc/sys/net/ipv4/ip_forward

# 2. Dnsmasq'ı yeniden başlat
sudo systemctl restart dnsmasq
echo "[+] Dnsmasq (DHCP/TFTP) restarted."

# 3. HTTP Sunucusunu Başlat (Arka planda değil, ekranda kalsın)
echo "[+] Starting HTTP Server on port 80..."
echo "Press CTRL+C to stop."

# Web klasörüne git ve sunucuyu aç
cd /srv/http
sudo python3 -m http.server 80

