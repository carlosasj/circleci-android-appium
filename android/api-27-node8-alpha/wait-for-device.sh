#!/bin/bash

adb wait-for-device

A=$(adb shell getprop dev.bootcomplete | tr -d '\r')

while [ "$A" != "1" ]; do
    A=$(adb shell getprop dev.bootcomplete | tr -d '\r')
    echo $(date -u "+%F %H:%M:%S") - Waiting for emulator to fully boot...
    sleep 5
done

adb shell input keyevent 82
