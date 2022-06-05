#!/system/bin/sh
until [[ "$(getprop sys.boot_completed)" == "1" ]]; do
     sleep 1
done
OOS=/proc/touchpanel/tpedge_limit_enable
[ -f $OOS ] && echo 1 > $OOS | chmod 444 $OOS