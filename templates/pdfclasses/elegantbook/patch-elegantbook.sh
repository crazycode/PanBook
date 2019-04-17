#!/bin/bash

# use this path to set custom addOptions, PANDOCVARS and highLight

note "use -E device=(pc|mobile|kindel) to produce different size of pdf"
note "use -E cover=path to use custom cover image"
note "use -E logo=path to use custom logo image"

addOptions="--template=elegantbook.tpl -V device=$device"
division="--top-level-division=chapter"
highLight=""

[ "$cover"x != ""x ] && addOptions="$addOptions -V cover=$cover"
[ "$logo"x != ""x ] && addOptions="$addOptions -V logo=$logo"