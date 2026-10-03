#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# PassWall 2 (依赖包+主插件)
echo 'src-git passwall_packages https://github.com/Openwrt-Passwall/openwrt-passwall-packages' >>feeds.conf.default
echo 'src-git passwall2 https://github.com/Openwrt-Passwall/openwrt-passwall2' >>feeds.conf.default

# OpenClash
echo 'src-git openclash https://github.com/vernesong/OpenClash' >>feeds.conf.default

# kenzok8 常用插件汇总(DDNS-GO/Tailscale等)
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default

# EasyTier 异地组网官方LuCI
echo 'src-git easytier https://github.com/EasyTier/luci-app-easytier' >>feeds.conf.default
