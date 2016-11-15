#!/bin/ruby

system("sed -n '1,1p' ip_list.txt > victim.txt")
system("wget -i victim.txt -O script.html")
system("ruby sitechecker.rb")
