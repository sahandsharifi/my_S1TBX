#!/bin/bash
#
#
# A. Lucas, 2016

clear
metafile=$1
echo "Downloading Sentinel data from HHSD ESA service using" $metafile

user="sahandsharifi"
passwd="s9319183"

aria2c --http-user=$user --http-passwd=$passwd --check-certificate=false --max-concurrent-downloads=2 -M $metafile
