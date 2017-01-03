#!/bin/ruby

victims = IO.readlines("victims.txt")

victims.each do |victim|

system("ruby brute_force.rb #{victim}")

end
