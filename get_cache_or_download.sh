#!/bin/sh
set -e 

if [ ! -d $1 ]; then
	mkdir -p $1
fi

if [ ! -f "$1/$2" ]; then
	wget "$3/$2" -P $1
fi
