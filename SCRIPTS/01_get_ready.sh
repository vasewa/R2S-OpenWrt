#!/bin/bash
git clone -b nanopi-r2s https://git.openwrt.org/openwrt/staging/blocktrron.git openwrt
cd openwrt
git config --local user.email "action@github.com" && git config --local user.name "GitHub Action"
git remote add upstream https://github.com/openwrt/openwrt.git && git fetch upstream
git rebase upstream/master
sed -i "s/# CONFIG_ROCKCHIP_THERMAL is not set/CONFIG_ROCKCHIP_THERMAL=y/g" target/linux/rockchip/armv8/config-5.4
cd ..
exit 0
