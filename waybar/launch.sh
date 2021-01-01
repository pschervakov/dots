#!/bin/bash

# Завершить текущие экземпляры waybar
killall -q waybar

# Ожидание полного завершения работы процессов
while pgrep -u $UID -x waybar >/dev/null; do sleep 1; done

waybar &

