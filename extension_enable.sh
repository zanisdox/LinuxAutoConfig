#!bin/sh
ex_dir="$HOME/.local/share/gnome-shell/extensions/"
for dir in $ex_dir*
do
	gnome-extensions enable $(basename $dir)	
done
