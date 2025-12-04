#!/bin/bash

# 添加 Helloworld 源
echo "src-git helloworld [https://github.com/fw876/helloworld.git](https://github.com/fw876/helloworld.git)" >> "feeds.conf.default"

# 添加 PassWall 源
echo "src-git passwall_packages [https://github.com/xiaorouji/openwrt-passwall-packages.git;main](https://github.com/xiaorouji/openwrt-passwall-packages.git;main)" >> "feeds.conf.default"
echo "src-git passwall_luci [https://github.com/xiaorouji/openwrt-passwall.git;main](https://github.com/xiaorouji/openwrt-passwall.git;main)" >> "feeds.conf.default"

# 添加 OpenClash
git clone --depth 1 [https://github.com/vernesong/OpenClash.git](https://github.com/vernesong/OpenClash.git) package/openclash

# 添加 HomeProxy
git clone --depth 1 [https://github.com/immortalwrt/homeproxy.git](https://github.com/immortalwrt/homeproxy.git) package/homeproxy

# 添加 Lucky
git clone --depth 1 [https://github.com/gdy666/luci-app-lucky.git](https://github.com/gdy666/luci-app-lucky.git) package/lucky
