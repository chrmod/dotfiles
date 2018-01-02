#!/usr/bin/env python3
#
# A battery indicator blocklet script for i3blocks

from subprocess import check_output

status = check_output(['acpi'], universal_newlines=True)
state = status.split(": ")[1].split(", ")[0]
commasplitstatus = status.split(", ")
percentleft = int(commasplitstatus[1].rstrip("%\n"))

FA_LIGHTNING = "<span font='FontAwesome'>\uf0e7</span>"
FA_PLUG = "<span font='FontAwesome'>\uf1e6</span>"

fulltext = "<span color='yellow'>{}</span>".format(FA_LIGHTNING)
timeleft = ""

if state == "Discharging":
    time = commasplitstatus[-1].split()[0]
    time = ":".join(time.split(":")[0:2])
    timeleft = " ({})".format(time)
else:
    fulltext += " " + FA_PLUG

def color(percent):
    if percent < 10:
        return "#ebdbb2"
    if percent < 20:
        return "#fb4934"
    if percent < 30:
        return "#cc241d"
    if percent < 40:
        return "#FF9900"
    if percent < 50:
        return "#FFCC00"
    if percent < 60:
        return "#FFFF00"
    if percent < 70:
        return "#FFFF33"
    if percent < 80:
        return "#FFFF66"
    return "#FFFFFF"

def bgcolor(percent):
    if percent < 10:
        return 'background="#cc241d"'
    return ""

def show_percent(percent):
    text = "{}%".format(percent)
    if percent < 10:
        return " "+text+" "
    return text

form =  ' <span color="{}" {}>{}</span>'
fulltext += form.format(color(percentleft), bgcolor(percentleft), show_percent(percentleft))
fulltext += timeleft

print(fulltext)
print(fulltext)
