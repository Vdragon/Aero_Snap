#!/bin/bash
#上一句用來宣告執行script用的shell

#Shell script名稱：Snap_max
#傳回值：0-正常結束
#已知問題：
#
#修訂紀錄：
#

##將作用中的視窗寬度、高度都調至當前解析度的最大值
wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz

#正常結束script
exit 0


