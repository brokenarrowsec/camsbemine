#!/bin/ruby

system("head -n 1 ip_list.txt > victim.txt")
system("wget -i victim.txt > script.html")
