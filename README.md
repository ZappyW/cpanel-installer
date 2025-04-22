# Hosting Kirala cPanel Kurulum Scripti

Bu script, **Hosting Kirala** sunucusu üzerinde cPanel kurulumu yapmak için otomatik bir çözüm sunar. Tek bir komut ile cPanel kurulumu başlatılabilir.

## Özellikler

- **cPanel**'in en son sürümünü indirir ve kurar.
- Gerekli bağımlılıkları otomatik olarak yükler.
- Sunucunuzun **hostname**'ini ayarlamanızı sağlar.
- **Firewall** yapılandırmasını cPanel için uygun hale getirir.
- Kurulum tamamlandıktan sonra, cPanel'e erişim için gerekli bağlantı bilgilerini verir.

## Gereksinimler

- **Linux** işletim sistemi (CentOS, RHEL vb.)
- `dnf` paket yöneticisi
- İnternet bağlantısı
- `curl`, `perl`, `screen`, `firewalld` paketleri

## Kurulum

Aşağıdaki adımları takip ederek **cPanel** kurulumunu başlatabilirsiniz:

### 1. Script'i İndirin

Aşağıdaki komut ile script'i sunucunuza indirebilirsiniz:

```bash
wget https://raw.githubusercontent.com/ZappyW/cpanel-installer/main/install.sh -O cpanel-install.sh
