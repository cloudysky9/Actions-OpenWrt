#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
git clone https://github.com/jerrykuku/lua-maxminddb.git package-temp/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package-temp/luci-app-vssr
git clone https://github.com/cloudysky9/luci-theme-rosy.git package-temp/luci-theme-rosy
git clone https://github.com/xiaorouji/openwrt-passwall.git package-temp/openwrt-passwall
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package-temp/luci-app-jd-dailybonus
mv -f package-temp/lua-maxminddb package/lean/
mv -f package-temp/luci-app-vssr package/lean/
mv -f package-temp/luci-theme-rosy package/lean/
mv -f package-temp/openwrt-passwall package/lean/
mv -f package-temp/luci-app-jd-dailybonus package/lean/
rm -rf package-temp
