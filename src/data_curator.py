#!/usr/bin/python

from datetime import datetime
import re
file=open("input_data.txt","r")
for line in file:
	stripped = line.strip()
#	print stripped
	arr1 = stripped.split("-",1)
	if len(arr1) > 1:
		date = arr1[0]
		arr2 = arr1[1].split(":",1)
		#print arr2
		user=None
		if len(arr2) > 1: 
			user=arr2[0]
			if len(date.split(",")) == 2:
				date = date.split(",")
				date = date[0]
				#print date
			try:
				date_object = datetime.strptime(date.strip(), '%m/%d/%y')
				date_object = date_object.strftime('%b %d, %Y, %I:%M %p')
				#print date_object
				pattern=re.compile("[^\w']")
				sentence = pattern.sub(' ', arr2[1].strip('\n'))
				print "\""+date_object+"\"" + ","+"\"" + user.strip()+"\""+ "," +"\""+ sentence.strip().replace('\"','').replace('\'','')+"\""
			except ValueError:
				pass
	 
