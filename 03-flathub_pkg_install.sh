#!/bin/bash

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak update -y

flatpak install flathub com.github.tchx84.Flatseal org.mozilla.firefox org.zotero.Zotero org.libreoffice.LibreOffice org.gnome.Boxes ch.openboard.OpenBoard com.obsproject.Studio com.visualstudio.code org.blender.Blender org.gimp.GIMP org.kde.krita org.inkscape.Inkscape org.darktable.Darktable org.fedoraproject.MediaWriter org.videolan.VLC com.spotify.Client org.musescore.MuseScore com.skype.Client org.jamovi.jamovi fr.handbrake.ghb -y

echo "Programas instalados com sucesso!"

shutdown -h 1 "O sistema será desligado"
