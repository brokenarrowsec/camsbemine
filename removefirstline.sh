#!/bin/bash

tail -n +2 "ip_list.txt" > "ip_list.tmp" && mv "ip_list.tmp" "ip_list.txt"
