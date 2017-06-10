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
stateColors={"play":"#00ff00",
	"pause":"#ffbb00",
	"stop":"#ff0000"}

c=mpd.MPDClient()

try:
	outString=HOST

	c.connect(HOST,6600)
	

	status=c.status()

	if "volume" in status:
		outString+=" "+str(status["volume"]+"%")


	outString+=": "+stateDict[status["state"]]

	current=c.currentsong()
	if(len(current)):
		formattedSong=current["artist"] + " - " + current["album"] + " - " + current["title"]
		outString+=" "+formattedSong

	print(outString)
	print(outString)
	print(stateColors[status["state"]])
	
	c.close()
except:
	print(HOST)
	print(HOST)
	print("#ff0000")
