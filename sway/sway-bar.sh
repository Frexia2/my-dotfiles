status_bar() {
    date=$(date +'%d-%m-%Y %H:%M')
    vol=$(pamixer --get-volume)
    battery_status=$(cat /sys/class/power_supply/BAT0/uevent | grep "POWER_SUPPLY_CAPACITY=" | cut -d= -f2) 
#   linux_version=$(uname -r | cut -d '-' -f1)
    current_layout=$(swaymsg -t get_inputs | jq -r '.[] | select(.type=="keyboard") | .xkb_active_layout_name' | head -n1)

# i have lost it
    if command -v brightnessctl >/dev/null 2>&1; then
        brightness=$(brightnessctl get)
        max_brightness=$(brightnessctl max)
        brightness_percent=$((brightness * 100 / max_brightness))
        brightness_display="br:$brightness_percent%"
    elif [ -d /sys/class/backlight ]; then
        card=$(ls /sys/class/backlight/ | head -n1)
        if [ -n "$card" ]; then
            current_brightness=$(cat /sys/class/backlight/$card/brightness 2>/dev/null)
            max_brightness=$(cat /sys/class/backlight/$card/max_brightness 2>/dev/null)
            if [ -n "$current_brightness" ] && [ -n "$max_brightness" ]; then
                brightness_percent=$((current_brightness * 100 / max_brightness))
                brightness_display="br:$brightness_percent%"
            else
                brightness_display="br:"
            fi
        else
            brightness_display="br:/A"
        fi
    else
        brightness_display="br:/A"
    fi

    echo "|vol:$vol%|bat:$battery_status%|$brightness_display|$date|$current_layout"
}

audio_status() {
    if pactl get-sink-mute @DEFAULT_SINK@ | grep -q "yes"; then
        echo "muted"
    else
        echo "unmuted"
    fi
}

network_status() {
    if ping -c 1 -W 2 8.8.8.8 &> /dev/null; then
        ip=$(ip route get 1 2>/dev/null | awk '{print $7; exit}' | grep -v 127.0.0.1)
        if [ -n "$ip" ]; then
            echo "$ip|"
        fi
    else
        echo "offline|"
    fi
}

media_status() {
    if playerctl status >/dev/null 2>&1; then
        artist=$(playerctl metadata artist 2>/dev/null || echo "")
        title=$(playerctl metadata title 2>/dev/null)

        if [ -n "$artist" ]; then
            echo "${artist} - ${title}|"
        else
            echo "${title}|"
        fi
    else
        echo ""
    fi
}

vpn_status() {
    if ip addr | grep -q "tun0"; then
        echo "ovpn:"
    elif ip addr | grep -q "wg0"; then
        echo "wg:"
    else
        echo ""
    fi
}

while true; do
	echo "$(media_status)$(vpn_status)$(network_status)$(audio_status)$(status_bar)"
    sleep 1
done
