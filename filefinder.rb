#!/bin/ruby

finder = File.read("openme.txt").include?("<")

if finder == true
  print "Great! You have successfully gained access to a security camera! Please open 'openme.txt', for the IP address of the camera, as well as the credentials.
"
  system("chmod +x removefirstline.sh")
  system("./removefirstline.sh")
else
  system("chmod +x removefirstline.sh")
  system("./removefirstline.sh")
  system("ruby camsbemine.rb")
end
