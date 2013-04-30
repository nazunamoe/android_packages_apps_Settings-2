#!/system/bin/sh

renice -18 `ps -p|grep '\-20'|awk '{print $2}'`;
renice -17 `ps -p|grep '\-19'|awk '{print $2}'`;
