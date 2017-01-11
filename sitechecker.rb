#!/bin/ruby

sitecheck = File.read("script.html").include?("alias")
if sitecheck == true
  victims = IO.readlines("victims.txt")
  victims.each do |victim|
  system("echo 'It did end up working.'")
  system("rm -r openme.txt")
  system("ruby brute_force.rb #{victim} | tee openme.txt")
end
else
  system("chmod +x removefirstline.sh")
  system("./removefirstline.sh")
  system("ruby camsbemine.rb")
end
