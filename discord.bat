ECHO OFF
COLOR 04
CLS
setlocal enableDelayedExpansion

:Start
CLS
TITLE VPN'siz discord'a nasil girilir.
ECHO Uygulamayi lutfen yonetici olarak calistirin.
ECHO Calistirmadiysaniz islem tamamlanmaz.
ECHO Eger ki calistirdiysaniz bu mesaji umursamayiniz.
CHOICE /d y /t 10 > nul
Goto :Main

:Main
CLS
TITLE VPN'siz discord'a nasil girilir.
ECHO Uygulamayi lutfen yonetici olarak calistirin.
ECHO Calistirmadiysaniz islem tamamlanmaz.
ECHO Eger ki calistirdiysaniz bu mesaji umursamayiniz.
CHOICE /d y /t 10 > nul
CLS
ECHO VPN'siz discord'a baglanti islemleri;
ECHO. 
ECHO 1 - Kodu calistirmak icin.
ECHO 2 - Kontrol etmek ve bilgilenmek icin.
ECHO 3 - Kodlayan ve islemler icin bilgi istiyorsan.
ECHO. 
ECHO coded by @denetim.
CHOICE /C:123 /N >nul
If "%errorlevel%"=="1" (Goto :Load)
If "%errorlevel%"=="2" (Goto :Check)
If "%errorlevel%"=="3" (Goto :Coded)


:Load
CLS
ECHO Hazirlaniliyor...
CHOICE /d y /t 10 > nul
CLS
del /s /f /q "C:\Windows\System32\drivers\etc\hosts"
(
ECHO 162.159.128.233 www.discord.com
ECHO 162.159.128.233 status.discord.com
ECHO 162.159.128.233 discord.com
ECHO 162.159.128.233 updates.discord.com
ECHO 162.159.135.234 discord.gg
ECHO 162.159.135.234 gateway.discord.gg
ECHO 162.159.129.233 cdn.discordapp.com
ECHO 162.159.129.233 discordapp.com
ECHO 162.159.128.235 latency.discord.media
ECHO 162.159.128.235 discord.media
ECHO # Coded by denetim
) > hosts
move hosts C:\Windows\System32\drivers\etc
CLS
ECHO Islem tamamdir, denetim gardasiniza selam soylemeyi unutmayin.
CHOICE /d y /t 10 > nul
CLS
Goto :Main

:Check
CLS
ECHO Eger ki discord ile alakali metinler var ise islem tamam.
CHOICE /d y /t 10 > nul
CLS
FOR /F "tokens=* delims=" %%R in (C:\Windows\System32\drivers\etc\hosts) DO echo %%R
CHOICE /d y /t 5 > nul
CLS
Goto :Main


:Coded
CLS
ECHO Bu kod denetim tarafindan insanlara yardim etmek icin kodlanmistir, hic bir kurumla alakasi yoktur.
CHOICE /d y /t 5 > nul
CLS
Goto :Main


PAUSE>NUL