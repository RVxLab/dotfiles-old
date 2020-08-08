isScreenConnected() {
    if xrandr | grep "$1" | grep -i "disconnected" > /dev/null
    then
        return 1
    fi

    return 0
}

LAPTOP_SCREEN="eDP"
MAIN_MONITOR="HDMI-A-0"
SEC_MONITOR="DisplayPort-0"
XRANDR="xrandr"

if isScreenConnected "$MAIN_MONITOR"
then
    # TODO: Set up second monitor
    $XRANDR --output "$LAPTOP_SCREEN" --primary --output "$MAIN_MONITOR" --same-as "$LAPTOP_SCREEN"
else
    $XRANDR --output "$LAPTOP_SCREEN" --primary
fi
