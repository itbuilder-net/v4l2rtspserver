#!/usr/bin/env bash

DEVICE=/dev/video0
PORT=8554
X=1920
Y=1080
FPS=5
BITRATE=4000000
MODE=0 #0=VBR, 1=CBR
WB=1
POWERLINE=1

v4l2-ctl -d $DEVICE -c video_bitrate=$BITRATE
v4l2-ctl -d $DEVICE -c video_bitrate_mode=$MODE
v4l2-ctl -d $DEVICE -c white_balance_auto_preset=$WB
v4l2-ctl -d $DEVICE -c power_line_frequency=$POWERLINE
v4l2-ctl -p $FPS
v4l2-ctl --set-ctrl vertical_flip=1,horizontal_flip=1
v4l2-ctl --set-fmt-video=width=$X,height=$Y,pixelformat=4

/usr/local/bin/v4l2rtspserver -F0 -P $PORT -u "" $DEVICE
