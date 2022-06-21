#!/bin/bash

if pgrep -f simplescreenrecorder > /dev/null 
then 
	blink=$(date +%s) 
	if [ $((blink % 2)) -eq 0 ]; then 
		echo " REC" 
	else 
		echo "  REC"
	fi 
else 
	echo ""
fi	
