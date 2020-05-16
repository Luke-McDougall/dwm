#!/bin/sh
while true; do
    BAT=$(acpi | sed "s/Battery [0-9]: //;s/[Dd]ischarging, /🔋/;s/[Nn]ot charging, /🛑/;s/[Cc]harging, /🔌/;s/[Uu]nknown, /♻️/;s/[Ff]ull, /⚡/;s/ \(remaining\|until charged\)//")
    DATETIME=$(date "+%a %b %d, %H:%M")
    WIFI=$(nmcli networking connectivity)
    xsetroot -name " Connection: $WIFI | $BAT | $DATETIME"
    sleep 1m;
done
