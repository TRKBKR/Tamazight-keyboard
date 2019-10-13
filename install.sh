

clear
unzip unzip.zip
echo "					Installing ... "
sudo cp symbols/* /usr/share/X11/xkb/symbols/
sudo cp rules/* /usr/share/X11/xkb/rules/
echo "\033[31m=====> : Installed Sucessfully \033[39m"
echo "\033[32mSetting Up Keyboard ...\033[39m"
sleep 1
default="$(setxkbmap -query |grep layout |awk '{print$2}')"
setxkbmap -option grp:alt_shift_toggle $default,mz

echo "Done"

echo "       To change ALT+SHIFT"
