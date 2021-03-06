# Aero_Snap
用來讓Linux支援類似Windows 7的Aero Snap功能的Shell Script。  
Shell Script to let Linux support Aero Snap feature introduced in Microsoft Windows 7  
[https://github.com/Vdragon/Aero_Snap](https://github.com/Vdragon/Aero_Snap)

這個shell script為基於Joey Sneddon於OMG! Ubuntu!的文章「Get Aero Snap in Ubuntu」改良而成。  
This shell script is enhanced and based on Joey Sneddon's article "Get Aero Snap in Ubuntu" on OMG! Ubuntu!.  
[http://www.omgubuntu.co.uk/2009/11/get-aero-snap-in-ubuntu/](http://www.omgubuntu.co.uk/2009/11/get-aero-snap-in-ubuntu/)

## 支援的桌面環境<br />Supported Desktop Environments
Any desktop environment with an X Window manager that is compatible with the EWMH/NetWM specification that provides a way to execute a script using key combination or screen edge trigger.

Tested in KDE, xfce, Unity2D, GNOME2...
(the utility to configure script trigger in different desktop environment may be different)

## 本軟體的軟體依賴關係<br />Software dependencies of this software
### in Ubuntu
* wmctrl

## 如何安裝<br />How to install

### for compiz-based desktop environment(including GNOME 2, Unity3D, Unity2d...etc)
1. Copy the Shell Script files in the "Executables" directory to any place you want, make sure you have read permission of the files.

2. (Install &) Execute CompizConfig Settings Manager("compizconfig-settings-manager" software package in ubuntu), activate "Commands" plugin and click into its setting page.

3. In the "Commands" setting page, copy following command to any of the blank "Command line" textbox( replace the 「path_of_the_shell_script」 stuff with the full directory of the shell script.), when finish, there should be additional 3 commands in this tab page.
```
bash "「path_of_the_shell_script」"
```

example: 

```
bash "/home/Vdragon/Software/Aero_snap/Snap_max.sh"
```

4. In the other pages, set keyboards or screen edge trigger events to activate the previous set commands.

## 使用者設定選項<br />User configurations
### In Snap_left.sh, Snap_right.sh
用來扣掉視窗裝飾所帶來的多餘寬度所使用的偏移量（單位：像素(pixel)）
WIDTH_OFFSET


## 已知問題<br />Known Issues
1. In Ubuntu 10.04 LTS, the screen edge trigger event couldn't activate due to unknown reason(possibly ccsm's bug). (Issue #2 )
2. 無法於Unity 3D正常運作。(Issue #1 )
