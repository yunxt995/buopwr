#!/bin/bash
# =========================================================
# DIY-X86.sh: Feeds 更新后，编译前的设置
# =========================================================

# 设置默认 IP (X86)
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 设置主机名
sed -i 's/OpenWrt/OpenWrt-X86/g' package/base-files/files/bin/config_generate
