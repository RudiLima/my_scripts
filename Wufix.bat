SC config trustedinstaller start=auto
net stop wuauserv
net stop bits
cd %windir%
Ren SoftwareDistribution SoftwareDistribution.old
dism /online /cleanup-image /restorehealth
