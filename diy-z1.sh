#!/bin/bash
# =========================================================
# DIY-Z1.sh: 更新 Feeds 之前的操作
# 主要用于添加第三方插件源码
# =========================================================

# 添加 PassWall
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
echo "src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"

# 添加 OpenClash
git clone --depth 1 https://github.com/vernesong/OpenClash.git package/openclash

# 添加 HomeProxy (如果 lede 源里没有，从 immortalwrt 借用或第三方库)
# 这里假设手动 clone 比较稳妥
git clone --depth 1 https://github.com/immortalwrt/homeproxy.git package/homeproxy

# 添加 Lucky
git clone --depth 1 https://github.com/gdy666/luci-app-lucky.git package/lucky

# 添加 Argon 主题 (LEDE 自带 argon，但如果想用 jerrykuku 版本可解开下面注释)
# rm -rf package/lean/luci-theme-argon
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

# 预置 Docker 相关依赖 (通常在 menuconfig 选，这里确保源存在)
