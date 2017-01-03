#!/bin/ruby

system("sed -n '1,1p' ip_list.txt > victims.txt")
system("sed -n '1,1p' victims.txt > valid_check.txt")
system("tr -d ' \t\n\r\f' < valid_check.txt > valid_check.tmp")
system("mv valid_check.tmp valid_check.txt")
system("wget -i valid_check.txt -O script.html")
system("ruby sitechecker.rb")
system("ruby filefinder.rb")


