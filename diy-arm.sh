#!/bin/bash
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/OpenWrt-ARM/g' package/base-files/files/bin/config_generate
