#!/usr/bin/env bash

function is_display_large {
	echo yes
}

[[ $(is_display_large) ]] && FONT="Fira Code" || FONT="curie"
[[ $(is_display_large) ]] && SIZE="15"          || SIZE="10"
[[ $(is_display_large) ]]                       || BITMAP="true"

case $1 in
	pango) [[ $BITMAP ]] && echo ${FONT} wrapped $SIZE || echo $FONT $SIZE ;;
	freedesktop) [[ $BITMAP ]] && echo ${FONT} || echo ${FONT}:pizelsize=${SIZE} ;;
esac
