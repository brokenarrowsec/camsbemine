#!/bin/ruby

sitecheck = system("grep alias script.html") #Make sure that the camera is one of the ones that the script can attack

if sitecheck == true
  system("chmod +x attack.sh")
  system("./attack.sh")
else
  system("chmod +x removefirstline.sh")
  system("./removefirstline.sh")
  system("ruby camsbemine.rb")
end
