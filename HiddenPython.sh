#!/usr/bin/python
import os
#Code for searching the hidden files in the given directory 
for root,dirs,files in os.walk("/home",topdown=False): #looping through the directory '.' means current working directory 
	for dirname in dirs:
		if(dirname[0]=="."):	#if the directory name starts with .
			print(dirname) #print the directory name
	for filename in files:  #looping through the files in the directory
		if(filename[0]=="."):  #if the file starts with '.'
			print(filename)  #print file name
for root,dirs,files in os.walk("/home",topdown=False): #Looping through the directory		
	for dirname in dirs:  #searching for a directory name in the directory
		if(dirname[0]=="."):  #if hidden
			print(os.path.abspath(os.path.join(root))) #print the path of the hidden directory
	for filename in files: #searching for the hidden file
		if(filename[0]=="."): #if hidden
			print(os.path.abspath(os.path.join(root))) #print the path of the hidden file

