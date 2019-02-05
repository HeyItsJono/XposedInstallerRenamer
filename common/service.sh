#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread
exec &> "/data/xirenamer.log"

newname='de.ninja.android.ninja.installer'
if [ -f "/data/xirenamer.txt" ]; then
	source "/data/xirenamer.txt"
fi
newpath='/data/data/'$newname
echo Renaming to $newname 

sleep 15

su -c "mv '/data/data/de.robv.android.xposed.installer' $newpath"