#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.1/g' package/base-files/files/bin/config_generate

# Modify hostname
sed -i 's/OpenWrt/OpenWrt-X86/g' package/base-files/files/bin/config_generate

# 创建首次开机自动执行脚本目录
mkdir -p files/etc/uci-defaults

# 首次开机自动执行:打印内置能力说明(仅执行一次,不影响系统)
cat > files/etc/uci-defaults/99-welcome << 'EOF'
#!/bin/sh
LOG=/tmp/boot-info.log
echo "======================================" >> $LOG
echo "OpenWrt X86_64 固件已就绪" >> $LOG
echo "异地组网: EasyTier / ZeroTier / Tailscale / WireGuard" >> $LOG
echo "科学上网: OpenClash / PassWall2 / SSR+" >> $LOG
echo "容器: Docker + LuCI管理" >> $LOG
echo "虚拟化: KVM已内置,可用于运行飞牛fnOS虚拟机" >> $LOG
echo "文件共享: Samba / NFS" >> $LOG
echo "======================================" >> $LOG
exit 0
EOF
