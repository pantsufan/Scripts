#!/bin/sh

convert -brightness-contrast 15x40 -sharpen 0x10 $1 -set colorspace Gray -separate -average $1-Converted.jpg

