#!/bin/ruby

sitecheck = system("grep alias script.html")
if sitecheck == true
  system("rm -r checkthisfile.txt")
  system("chmod +x attack.sh")
  system("./attack.sh")
else
  system("chmod +x removefirstline.sh")
  system("./removefirstline.sh")
  system("ruby camsbemine.rb")
end
