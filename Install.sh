########Desktop Theme(Transparent Panel, Transparent Start Menu, Desktop Widget)########
mkdir -p ~/.local/share/plasma/desktoptheme/
cp -r ./DesktopTheme/OffLine/*/ ~/.local/share/plasma/desktoptheme/
kcmshell5 kcm_desktoptheme




############Application Style Setting############
#FIX: Ugly QT Theme (eg Icon) In Other Desktop Environment (Gnome / XFCE / Enlightenment) 
#With Widget Style, You will get full Transparent in other Desktop Environment

#FIX: Panel Icon Missing (KDE Plasma + Kvantum)
#~/.bashrc Not Work In XFCE
tee --append ~/.profile << EOF
export QT_QPA_PLATFORMTHEME=kde
EOF
export QT_QPA_PLATFORMTHEME=kde

#kcmshell5 style




#Run QT Theme WithOut KDE
#Same as kcmshell5 style, Use System Default
#Supports Custom qss
#Stable Doesnot Have, Testing Has
sudo apt install -y qt5ct

#Itis Just Widget Style Package, For Widget Theme Selectors (Not Only For qt5ct)
#sudo apt install -y qt5-style-plugins

#FIX: OBS Stop Response When Launch In Gnome (QSystemTrayIcon::setVisible: No Icon set)
#FIX: ScreenGrab StartUp Problem
#Issue: Some App Icon DoesNot ShowUp In Launcher (eg: FireFox PostMan)
#~/.bashrc Not Work In XFCE
#FIX (Simple Screen Recorder, OBS): QSystemTrayIcon setVisible No Icon set
#tee --append ~/.profile << EOF
#export QT_QPA_PLATFORMTHEME=qt5ct
#EOF
#export QT_QPA_PLATFORMTHEME=qt5ct

#qt5ct




########Video WallPaper########
#https://store.kde.org/p/1213488/
kpackagetool5 -t Plasma/Wallpaper -i ./SmartVideoWallpaper/*.tar.gz




########Decoration########
mkdir -p ~/.local/share/aurorae/themes/
cp -r ./Decoration/OffLine/*/ ~/.local/share/aurorae/themes/

kcmshell5 kwindecoration




