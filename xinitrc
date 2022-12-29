#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

xsetroot -cursor_name left_ptr
xset r rate 250 60

exec ~/.screenlayout/i3maindisplay.sh &
exec sxhkd &
exec nitrogen --restore &
exec i3
# exec ratpoison


# exec twm 
# xclock -geometry 50x50-1+1 &
# xterm -geometry 80x50+494+51 &
# xterm -geometry 80x20+494-0 &
# exec xterm -geometry 80x66+0+0 -name login
# ============================================
# xmodmap -e "keycode 135 = Super_L"
# xmodmap -e 'clear Lock' -e 'keycode 66 = Escape'
# xmodmap -e 'clear Lock' -e 'keycode 9 = Caps_Lock'
# xrdb ~/.Xresources &
# exec ~/.screenlayout/horizontal.sh &
