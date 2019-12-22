#!/usr/bin/python
import mpd
import os
import subprocess

HOST=os.environ.get("MPD_HOST","localhost")
BLOCK_BUTTON=os.environ.get("BLOCK_BUTTON","0")

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
	"pause":"#ffff00",
	"stop":"#ff6600"}

c=mpd.MPDClient()

try:
	outString=HOST

	c.connect(HOST,6600)

	if BLOCK_BUTTON == str(3):
		subprocess.Popen(["/usr/bin/i3-sensible-terminal", "-e", "ncmpc -h "+HOST])
	if BLOCK_BUTTON == str(1):
		if (c.status()['state'] == 'stop'):
			c.play()
		else:
			c.pause()
	

	status=c.status()

	if status.get("volume","-1") != "-1":
		outString+=" "+str(status["volume"]+"%")


	outString+=": "+stateDict[status["state"]]

	current=c.currentsong()
	if(len(current)):
		artist=current.get("artist")
		album=current.get("album")
		title=current.get("title")
	
		formattedSong=current.get("file")

		if title:
			formattedSong=title
			if album:
				formattedSong=album + " - " + formattedSong
			if artist:
				formattedSong=artist + " - " + formattedSong
		outString+=" "+formattedSong

	print(outString)
	print(outString)
	print(stateColors[status["state"]])

	
	c.close()
except Exception as e:
	print()
	print(e)
	exit(0)

