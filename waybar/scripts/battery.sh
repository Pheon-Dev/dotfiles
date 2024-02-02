#!/bin/bash

get_battery_info()
{

	if [ -d /sys/class/power_supply/BAT0 ]; then
		cycles=$(cat /sys/class/power_supply/BAT0/cycle_count)
    time_left=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "time to empty" | awk '{print $4 " " $5}')
	fi

	echo " $cycles $time_left"
}

get_battery_info
