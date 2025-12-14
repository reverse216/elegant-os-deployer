@echo off
echo Windows PE Agi Baslatiliyor...
wpeinit

:: --- KRITIK BOLUM: IP BEKLEME DONGUSU ---
echo IP adresi bekleniyor...
:CheckIP
ipconfig | find "IPv4" > nul
if errorlevel 1 (
    echo IP henuz yok, 2 saniye bekleniyor...
    ping -n 2 127.0.0.1 > nul
    goto CheckIP
)
echo IP Adresi Alindi!
:: ----------------------------------------

echo Guvenlik Kilidi (Her ihtimale karsi)...
reg add HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters /v AllowInsecureGuestAuth /t REG_DWORD /d 1 /f

echo Sunucuya Baglaniyor (Kullanici: kurulum)...
:: persistent:no ekledim ki eski baglantilar cakismasın
net use Z: \\192.168.100.1\install /user:kurulum 1 /persistent:no

if exist z:\setup.exe (
    echo BAGLANTI BASARILI!
    echo Windows Kurulumu Baslatiliyor...
    z:\setup.exe
) else (
    echo !!! BAGLANTI HATASI !!!
    echo.
    echo Hata oldugu icin CMD ekraninda kaliyoruz...
    cmd.exe
)
