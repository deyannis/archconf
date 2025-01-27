#!/bin/bash
#
# Author:   Dimitris Deyannis
# E-mail:   d.deyannis@gmail.com
# Created:  Mon 27 Jan 2025 @ 18:13:05 +0200
# Modified: Tue 28 Jan 2025 @ 00:22:38 +0200
#
#
# i3status update script based on i3status position wrapper
# https://github.com/i3/i3status/blob/main/contrib/any_position_wrapper.sh
#
# Provides animated screen backlight level (percentage)
#
# Tested on ThinkPad L450 using intel_backlight where the 
# brightness level max out at 937
#
# The script assumes that the max brightness value is 937 and 
# brightness is updated as follows:
#   BrightnessUp:   brightnessctl s +100
#   BrightnessDown: brightnessctl s 100- --min-value=37
#
# Limiting the brightness level to 37 prevents the screen from
# going completely blank and prevents the update message from breaking
#
# Adjust the minimum allowed levels based on your use case
# Adjust the calculation function (i.e.,  (lvl + 63) / 10)) based 
# on your max and min values


function update_holder {
  local instance="$1"
  local replacement="$2"
  echo "$json_array" | jq --argjson arg_j "$replacement" "(.[] | (select(.instance==\"$instance\"))) |= \$arg_j" 
}

function remove_holder {
  local instance="$1"
  echo "$json_array" | jq "del(.[] | (select(.instance==\"$instance\")))"
}

function brightness {
	local raw_bckl=$(cat /sys/class/backlight/intel_backlight/brightness)
	local bckl="$(awk -v lvl="$raw_bckl" 'BEGIN {printf "%d", (lvl + 63) / 10}')"
	local bckl_out="  ??%"

	case $bckl in
		100)	bckl_out="  ${bckl}%"	;;
		90)		bckl_out="  ${bckl}%"	;;
		80)		bckl_out="  ${bckl}%"	;;
		70)		bckl_out="  ${bckl}%"	;;
		60)		bckl_out="  ${bckl}%"	;;
		50)		bckl_out="  ${bckl}%"	;;
		40)		bckl_out="  ${bckl}%"	;;
		30)		bckl_out="  ${bckl}%"	;;
		20)		bckl_out="  ${bckl}%"	;;
		10)		bckl_out="  ${bckl}%"	;;
		0)		bckl_out="  ${bckl}%"	;;
		*)		bckl_out="  ??%"				;;
	esac

	local json="{ \"full_text\": \"${bckl_out}\", \"separator_block_width\":16 }"
	json_array=$(update_holder holder__brightness "$json")
}

i3status | (read line; echo "$line"; read line ; echo "$line" ; read line ; echo "$line" ; while true
do
  read line
  json_array="$(echo "$line" | sed -e 's/^,//')"
  brightness
  echo ",$json_array" 
done)

