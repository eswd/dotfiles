## Fonts for i3

gtk2 / gtk3: Noto Sans 11
i3 icons: fontawsome (via github); just copy fontawsome-webfont.ttf in the .fonts folder and restart i3. in debian stretch scheinbar vorhanden.


## Theme: arc-theme
Icons: moka

Change settings via lxappearance (install, if neccesery)
Settings:Arc Darker with Noto Sans 11

## Icon Theme:

## starter (ctrl-d)
rofi; see i3-config file ant install via apt-get

Hintergrund: feh
Leiste: i3status



----------------------
Nach der x-sten Neuinstallation habe ich glaube ich aktuell den Bogen raus, was i3 und die Skalierung angeht...
Zunächst: nicht zu viel einstellen!!!
Detail siehe Arch Wiki DPI
1. Xubuntu nehmen, Debian drischt zu viel rein...
2. mittels Xrand --dpi 120 die DPI-Zahö hoch drehen (in i3-Config)
3. Fonts in der i3-Config sind für die oberste Leiste gedacht. nicht mehr.. hier auf Noto Sans Mono 10 (aktuell)
4. Mittels lsapperance den Rest einstellen (FF linke Maus etc)
5. FF mittels about:config pix suchen und auf 1.4 stellen. 
6. Thunderbird: siehe oben
7. Arc-Theme implementieren
8. Awsomefonts implementieren
9. Chrome: hier '--force-device-scale-factor=1.4' in die /usr/share(applications/chrome...desktop in die Zeile mit Exec... %U einfügen. Geht dann.Details siehe Arch Wiki
10. Das war es im großen und ganzen.

Fazit: Jede Applikation ist fasr anders zubehandeln Einige reagieren auf Xrand, andere nicht.
