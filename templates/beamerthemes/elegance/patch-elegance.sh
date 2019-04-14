#!/bin/bash
getEnv BACKGROUND "simple"
STYLEIMAGE="$cwd/build/style/images"
note "StyleImage: $STYLEIMAGE-$BACKGROUND"
[ ! -d $STYLEIMAGE ] && mkdir -p $STYLEIMAGE
cp -rf $cwd/build/style/images-$BACKGROUND/* $STYLEIMAGE
customHeader="-H fix-elegance.tex"