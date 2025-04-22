#!/bin/bash
echo " _   _  _  __ "
echo "| | | || |/ / "
echo "| |_| || ' /  "
echo "|  _  ||  <   "
echo "| | | || . \  "
echo "\_| |_/\_|\_\ "
echo ""
echo " HOŞ GELDİN! Hosting Kirala Kurulumu Başlıyor..."
echo ""
sleep 2


echo " cPanel kurulumu başlıyor..."

dnf update -y

dnf install -y perl curl screen

read -p "Lütfen geçerli bir hostname girin (örnek: server.domain.com): " NEW_HOSTNAME
hostnamectl set-hostname "$NEW_HOSTNAME"
echo "Hostname ayarlandı: $NEW_HOSTNAME"

screen -S cpanel-install

cd /home && curl -o latest -L https://securedownloads.cpanel.net/latest && sh latest

firewall-cmd --permanent --zone=public --add-port=2087/tcp
firewall-cmd --reload

echo "Kurulum tamamlandı. Tarayıcıdan şu adrese gidin:"
echo "https://$(hostname -I | awk '{print $1}'):2087"
echo "Giriş bilgileri: root / [Sunucu root şifren]"
