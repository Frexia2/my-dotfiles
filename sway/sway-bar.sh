while true
do
    date=$(date +'%d-%m-%Y %X')
    vol=$(pamixer --get-volume)
    battery_status=$(cat /sys/class/power_supply/BAT0/uevent | grep "POWER_SUPPLY_CAPACITY=" | cut -d= -f2) 
    linux_version=$(uname -r | cut -d '-' -f1)
    current_layout=$(swaymsg -t get_inputs | jq -r '.[] | select(.type=="keyboard") | .xkb_active_layout_name' | head -n1)
    echo "$battery_status%|$vol%|$linux_version|$date|$current_layout"
    sleep 1
done 

