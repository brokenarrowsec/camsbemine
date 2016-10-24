#!/bin/ruby

sitecheck = system("grep alias script.html") #Make sure that the camera is one of the ones that the script can attack

if sitecheck == true
  system("ruby ")
else
  system("./removefirstline.sh")
end
