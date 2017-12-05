#!/usr/bin/python
import requests
import json

try:
	req=requests.get("https://status.stratum0.org/status.json")
	assert (req.status_code == 200), "wrong reply"

	spaceState=json.loads(req.text)
	openState=spaceState["isOpen"]
	if(openState):
		print(str(spaceState["openedBy"]))
		print(str(spaceState["openedBy"]))
		print("#00ff00")
	else:
		print("Closed")
		print("Closed")
		print("#ff0000")
	exit(0)
except Exception as e:
	print(e)
	exit(-1)
