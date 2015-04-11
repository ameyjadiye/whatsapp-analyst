#!/usr/bin/python

from datetime import datetime

file=open("input_data.txt","r")
for line in file:
	stripped = line.strip()
	arr1 = stripped.split("-",1)
	if len(arr1) > 1:
		date = arr1[0]
		arr2 = arr1[1].split(":",1)
		user=None
		if len(arr2) > 1: 
			user=arr2[0]
			if len(date.split(",")) == 2:
				date = date.split(",")
				date = date[0]+", 2015,"+date[1]
			try:
				date_object = datetime.strptime(date.strip(), '%b %d, %Y, %I:%M %p')
				print date.strip() + "^" + user.strip()
			except ValueError:
				pass
	 
