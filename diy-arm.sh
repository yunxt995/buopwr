#!/bin/bash
# 社区修复：删除旧 golang 包，并替换为更新的版本，避免编译失败
rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
sed -i 's/192.168.1.1/192.168.1.2/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/OpenWrt-ARM/g' package/base-files/files/bin/config_generate
