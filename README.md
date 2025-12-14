# Elegant OS Deployer 🚀

**[TR]** Otomatik Ağ Tabanlı İşletim Sistemi Dağıtım ve Yönetim Altyapısı
**[EN]** Automated Network Boot & System Deployment Infrastructure

---

## 🇹🇷 Türkçe (Turkish)

### Proje Hakkında
Bu proje, USB bellek veya CD/DVD gibi fiziksel medyalar kullanmadan, ağ üzerinden (PXE Boot) Linux ve Windows işletim sistemlerinin otomatik kurulumunu, yönetimini ve Diskless (Disksiz/RAM) çalıştırılmasını sağlar. Okul laboratuvarları, veri merkezleri veya ev ağlarında "Tek Merkezden Yönetim" vizyonuyla geliştirilmiştir.

### Özellikler
* **Arch Linux RAM Boot:** İşletim sisteminin tamamen RAM'e yüklenerek disksiz çalıştırılması.
* **Otomatik Windows 11 Kurulumu:** WinPE ve Samba altyapısı ile katılımsız (Unattended) kurulum.
* **Hibrit Sunucu Yapısı:** Dnsmasq (DHCP/TFTP) ve Python HTTP sunucusu entegrasyonu.
* **Modüler Yapı:** Kolayca yeni işletim sistemi eklenebilir boot menüsü.

### Kullanılan Teknolojiler
* **Bootloader:** Syslinux, iPXE
* **Ağ Servisleri:** Dnsmasq (DHCP, TFTP), HTTP
* **İmaj Yönetimi:** Windows ADK (WinPE), Linux Initramfs
* **Platform:** Arch Linux / Ubuntu Server

---

## 🇬🇧 English

### About the Project
This project enables automated installation, management, and Diskless (RAM) execution of Linux and Windows operating systems over the network (PXE Boot), eliminating the need for physical media like USB drives. It is designed for centralized management in computer labs, data centers, or home labs.

### Features
* **Arch Linux RAM Boot:** Running the OS entirely from RAM (Diskless mode).
* **Automated Windows 11 Deployment:** Unattended installation using WinPE and Samba.
* **Hybrid Server Architecture:** Integration of Dnsmasq (DHCP/TFTP) and HTTP server.
* **Modular Design:** Easily extensible boot menu for new OS images.

### Technologies Used
* **Bootloader:** Syslinux, iPXE
* **Network Services:** Dnsmasq (DHCP, TFTP), HTTP
* **Image Management:** Windows ADK (WinPE), Linux Initramfs
* **Platform:** Arch Linux / Ubuntu Server

---
*Developed by Görkem Adem Kızılarslan*
