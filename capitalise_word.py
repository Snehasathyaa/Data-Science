file=open("File1.txt","r")
contents=file.read()
new_contents=contents.upper()
file.close()
file=open("File1.txt","w")
file.write(new_contents)
file.close()
