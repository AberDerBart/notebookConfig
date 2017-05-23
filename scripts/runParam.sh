#!/bin/bash

CMD=`dmenu_path|dmenu`
if [ "$?" == "0" ] 
	then
	PARAM=`dmenu < /dev/null`
	exec $CMD $PARAM
fi
