#Make file belonging to pyPractic2 folder
folder1:=abswpch04#folder for each chapter#UPDATE HERE
folder2a:=$(folder1)e#Example section of chapter 
folder2b:=$(folder1)q#Questions section of chapter
folder2c:=$(folder1)p#Projects section of chapter
folder:=$(folder2c)02#Folder for individual exercise or project#UPDATE HERE
ffolder:=$(folder1)/$(folder2c)/$(folder)#UPDATE HERE

file1:=.ipynb
file2:=.py
file3:=.md
num:=#UPDATE HERE
file:=$(folder)$(num)$(file1)#UPDATE HERE

crt1:
	mkdir $(folder1)
	echo '<!--This file located in '$(folder1)'-->' > $(folder1)/README.md
	mkdir $(folder1)/$(folder2a)
	echo '<!--This file located in '$(folder1)/$(folder2a)'-->' > $(folder1)/$(folder2a)/README.md
	mkdir $(folder1)/$(folder2b)
	echo '<!--This file located in '$(folder1)/$(folder2b)'-->' > $(folder1)/$(folder2b)/README.md
	mkdir $(folder1)/$(folder2c)
	echo '<!--This file located in '$(folder1)/$(folder2c)'-->' > $(folder1)/$(folder2c)/README.md

crt2:#folder and file for each example or project
	mkdir $(ffolder)
	cat jntemplate.ipynb > $(ffolder)/$(file)

crt3:#File for question section
	cat jntemplate.ipynb > $(folder1)/$(folder2b)/$(folder2b)$(file1)

crt4:#Create a python file using a template
	cat  template1.txt > $(ffolder)/$(folder)$(file2)
	code $(ffolder)/$(folder)$(file2)

conv:#Can use --to python, --to=python
	#jupyter nbconvert --to script --no-prompt $(ffolder)/$(file)
	jupyter nbconvert --to markdown $(ffolder)/$(file)
	
startt:#Start jupyter
	run "C:\Program Files\Google\Chrome\Application\chrome.exe" -incognito /c
	jupyter notebook --no-browser
	
glog:
	git log --graph --oneline -6

	