@echo off
set path=%path%;%~dp0
wget -qO- http://helpx.adobe.com/flash-player/kb/archived-flash-player-versions.html |^
sed "s/[\d034\/]/\n/g" |^
grep "zip" |^
sed "s/_/\n/g" |^
grep "^[0-9\.]" |^
awk "!x[$1]++ {print $1}" |^
awk -F ":" "{print $1 | """sort"""}"
pause
