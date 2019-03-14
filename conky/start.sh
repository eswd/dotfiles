#!/bin/sh
conky -q -c ~/.config/conky/essential_keys.conkyrc &
conky -q -c ~/.config/conky/systeminfo.conkyrc &
conky -q -c ~/.config/conky/ipv6rc.conkyrc & exit
