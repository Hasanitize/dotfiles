
xrandr --output HDMI-1 --mode 1920x1080 --rate 75 --primary --output eDP-1 --off
xrdb merge ~/.Xresources 
~/.fehbg &

picom &

sh ~/suckless/scripts/bar.sh &
setxkbmap -option caps:escape
setxkbmap -option escape:caps 


#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
lxpolkit &
while true; do
    dwm >/dev/null 2>&1
done

exec dwm


