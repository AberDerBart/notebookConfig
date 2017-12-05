#!/usr/bin/python
import requests
import json

req=requests.get("https://status.stratum0.org/status.json")

if(req.status_code == 200):
	spaceState=json.loads(req.text)
	openState=spaceState["isOpen"]
	if(openState):
		print("S0: "+str(spaceState["openedBy"]))
		print("S0: "+str(spaceState["openedBy"]))
		print("#00ff00")
	else:
		print("S0: Closed")
		print("S0: Closed")
		print("#ff0000")
else:
	print()
	print()
	print("#000000")
