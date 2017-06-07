#!/usr/bin/python
import mpd
import os

HOST="faultier"
HOST=os.environ["MPD_HOST"]

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

stateDict={"play":u'\u25BA',
	"pause":u'\u2161',
	"stop":u'\u25A0'}

c=mpd.MPDClient()

try:
	c.connect(HOST,6600)
	state=c.status()["state"]
	current=c.currentsong()
	if(len(current)):
		formattedSong=current["artist"] + " - " + current["album"] + " - " + current["title"]
		print(HOST+": "+stateDict[state]+" "+formattedSong)
	else:
		print(HOST+": "+stateDict[state])
	c.close()
except:
	print(HOST)
