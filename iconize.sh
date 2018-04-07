#!/bin/bash

base=$(basename $1 .svg)

for a in 256 128 64 48 32 16;
do
	convert -background none $1  -resize ${a}x${a} $base-${a}.png
done

