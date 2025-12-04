#!/bin/bash
echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
echo "src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"
git clone --depth 1 https://github.com/vernesong/OpenClash.git package/openclash
git clone --depth 1 https://github.com/immortalwrt/homeproxy.git package/homeproxy
git clone --depth 1 https://github.com/gdy666/luci-app-lucky.git package/lucky
