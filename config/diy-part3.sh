# Modify some code adaptation
#sed -i 's/LUCI_DEPENDS.*/LUCI_DEPENDS:=\@\(arm\|\|aarch64\)/g' package/lean/luci-app-cpufreq/Makefile
# Add autocore support for armvirt
# sed -i 's/TARGET_rockchip/TARGET_rockchip\|\|TARGET_armvirt/g' package/lean/autocore/Makefile

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.3/g' package/base-files/files/bin/config_generate

#修改密码
# sed -i 's/^root:.*:/root:$1$sKnYlDLr$7fZvROo6z5iKO9FIYGEbf0:18248:0:99999:7:::/g' package/base-files/files/etc/shadow

# => alist
# rm -rf feeds/packages/lang/golang
# svn export https://github.com/sbwml/packages_lang_golang/branches/20.x feeds/packages/lang/golang
# git clone https://github.com/sbwml/luci-app-alist package/alist

# => 阿里ddns
# git clone https://github.com/chenhw2/luci-app-aliddns.git package/luci-app-aliddns

# => dockerman
# git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman

# => openclash
git clone https://github.com/vernesong/OpenClash.git package/luci-app-openclash

# => passwall2
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git -b main package/passwall_package
git clone https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2

# git clone https://github.com/douglarek/luci-app-homeproxy package/luci-app-homeproxy
# git clone https://github.com/pexcn/openwrt-chinadns-ng.git package/chinadns-ng
svn co https://github.com/ophub/luci-app-amlogic/tree/main/luci-app-amlogic package/luci-app-amlogic
# => 删除默认argon主题
# rm -rf feeds/luci/themes/luci-theme-argon

#主题
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon

# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile
