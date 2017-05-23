#!/usr/bin/python
import requests
import json

req=requests.get("https://status.stratum0.org/status.json")

if(req.status_code == 200):
	spaceState=json.loads(req.text)
	openState=spaceState["isOpen"]
	if(openState):
		print("SpaceState: Open (" + str(spaceState["openedBy"]) +")")
	else:
		print("SpaceState: Closed")
else:
	print("Error")
