# Xposed Installer Renamer

Runs a short script to hide the Xposed Installer folder in /data/data at boot. By default, it sets the new folder name to `de.ninja.android.ninja.installer`.

**IMPORTANT NOTE: This will stop you from being able to open Xposed Installer. This script is useful for hiding it from apps that scan `/data/data` after you've installed all the modules you need. If you need access to Xposed Installer again, just disable this module, or if you don't want to reboot, simply rename the folder back to `/data/data/de.robv.android.xposed.installer`, then it'll open again.**

## Changing the renamed package name
Simply create a file in `/data` called `xirenamer.txt`, with the contents `newname='desired.package.name.here'`.
Logs are stored in `/data/xirenamer.log`.

## Why use this?
Some people say apps can't scan `/data/data` to check for the presence of other apps like the Xposed Installer - but I've found that some apps (like Pokemon Go) were doing this, and that by renaming the Xposed Installer folder, they stopped picking it up. So I just feel safer having this module enabled, but I'm not sure if it actually does anything.