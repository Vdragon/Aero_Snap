#!/bin/bash
#上一句用來宣告執行script用的shell

#Shell script名稱：Snap_right
#傳回值：0-正常結束
#已知問題：
#
#修訂紀錄：
#
##使用者設定參數##
##用來扣掉視窗裝飾所帶來的多餘寬度所使用的偏移量（單位：像素(pixel)）
WIDTH_OFFSET=7
##使用者設定參數結束##


##透過分析xdpyinfo回傳的資訊獲取螢幕總寬度的一半
WIDTH=`xdpyinfo | grep 'dimensions:' | cut -f 2 -d ':' | cut -f 1 -d 'x'`
WIDTH_HALF=$(($WIDTH/2))

##將作用中的視窗寬度、高度接自當前解析度的最大值取消（若有的話）
wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz

##將作用中的視窗的高度調整為幕前解析度的最大高度
wmctrl -r :ACTIVE: -b add,maximized_vert

##將作用中的視窗的座標調至畫面右半部的第一個像素(pixel)並將視窗的寬度調整為解析度最大寬度的一半（扣去偏移量）
wmctrl -r :ACTIVE: -e 0,$WIDTH_HALF,0,$(($WIDTH_HALF-$WIDTH_OFFSET)),-1

#正常結束script
exit 0


