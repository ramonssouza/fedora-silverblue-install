#!/bin/bash

rpm-ostree install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# rpm-ostree install https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

wget https://copr.fedorainfracloud.org/coprs/dawid/better_fonts/repo/fedora-$(rpm -E %fedora)/dawid-better_fonts-fedora-$(rpm -E %fedora).repo -O /etc/yum.repos.d/dawid-better_fonts.repo

wget https://copr.fedorainfracloud.org/coprs/dani/qgis/repo/fedora-$(rpm -E %fedora)/dani-qgis-fedora-$(rpm -E %fedora).repo -O /etc/yum.repos.d/dani-qgis.repo

wget https://copr.fedorainfracloud.org/coprs/neteler/grass78/repo/fedora-$(rpm -E %fedora)/neteler-grass78-fedora-$(rpm -E %fedora).repo -O /etc/yum.repos.d/neteler-grass78.repo

rpm-ostree update

rpm-ostree install fontconfig-enhanced-defaults fontconfig-font-replacements git cabextract ffmpeg-libs vim htop gnome-tweaks gparted brasero R rstudio-desktop sqlite sqlite-devel openjpeg libjpeg-turbo-devel python3-numpy python3-scipy python3-matplotlib python3-matplotlib-qt5 python3-ipython python3-pandas python3-sympy python3-nose gdal-devel qgis python3-qgis qgis-grass saga grass grass-libs grass-gui grass-devel openssl-devel gnutls-devel proj proj-devel geos geos-devel postgresql postgresql-devel udunits2-devel netcdf-devel epson-inkjet-printer-escpr

rpm-ostree override remove firefox

#rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm

echo "Programas instalados com sucesso!"

shutdown -h 1 "O sistema será desligado"
