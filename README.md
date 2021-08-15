## Archlinux + i3wm

> **Firs step, Download iDesktop**
```bash
$ sudo pacman -S git
$ git clone https://github.com/mojoid/iDesktop $HOME
```

### install via installer_script..
```bash
$ cd $HOME/iDesktop/ 
$ ./install
```
- Next, install packages aur in bellow.

### install manual..
> **Install all the packages needed for iDesktop**
```bash
$ sudo pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort iDesktop.txt))
```

> **Install idesktop**
```bash
$ cd $HOME/iDesktop/ 
$ cp -rf {.*,*} ~/
$ cd .icons/
$ tar -Jxvf idark.tar.xz && tar -Jxvf ilight.tar.xz
$ rm -r ~/iDesktop/.icons/*.tar.xz
$ sudo cp -r {idark,ilight,Pulse-*} /usr/share/icons/
```

> **Script to support Ctrl+Shift+(C/V) on urxvt**
```bash
$ sudo cp -r $HOME/Other/copy-paste-urxvt/clipboard /usr/lib/urxvt/perl/
```

> **driver to enable tap to click on touchpad**
```bash
$ sudo cp -r $HOME/Other/driver/30-touchpad.conf /etc/X11/xorg.conf.d/
```

> **Refresh fonts**
```bash
$ fc-cache -rv
```

## install packages aur
> **Install yay (skip this step if you have installed yay)**
```bash
$ git clone https://aur.archlinux.org/yay.git $HOME && cd $HOME/yay && makepkg -si
```

> **Install networkmanager-dmenu**
```bash
$ yay -S networkmanager-dmenu-git
```

> **Install picom-git**
```bash
$ yay -S picom-git
```

> **Install qt5-styleplugins**
```bash
$ yay -S qt5-styleplugins
```

> **Install polybar**
```bash
$ yay -S polybar
```

## Final install
> **Remove files that are no longer needed**
```bash
$ cd $HOME
$ rm -rf {README.md,.git,install,iDesktop.txt}
```

## Information
> **Firs time, Refresh i3wm**
```bash
Press the key combination "WINDOWS + SHIFT + R"
```

> **Change theme dark or light**
```bash
Hit "WINDOWS + SHIFT + M"
```

> **For all keybind information**
```bash
Hit "WINDOWS + K"
```

> **Polybar change themes color**
```bash
Right-click the launcher icon in the polybar
```
  
