#!/bin/bash
# =========================================================
# DIY-ARM.sh: Feeds 更新后，编译前的设置
# =========================================================

# 设置默认 IP (ARM)
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

# 设置主机名
sed -i 's/OpenWrt/OpenWrt-ARM/g' package/base-files/files/bin/config_generate
