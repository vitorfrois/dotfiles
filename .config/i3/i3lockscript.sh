#!/bin/sh
scrot -F /tmp/scrot.png
rm /tmp/blurscrot.png
convert /tmp/scrot.png -blur 0x5 /tmp/blurscrot.png
i3lock -i /tmp/blurscrot.png
rm /tmp/scrot.png
