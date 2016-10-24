# camsbemine

The Interent of Things is rapidly becoming larger and larger. Security cameras are at the forefront of this new frontier...

Unfortunately, manufacturers and users of security cameras tend to leave them untouched, leaving them open to attackers who have a list of common, default passwords. This tool gives the attackers exaclty what they need to break into said cameras. 

This tool is not meant to be used in a malicious manner, rather, it should be used to help users and manufacturers of security cameras become alert of these problems. 

## Usage

In order to use this tool, input multiple IP addresses that you would like to look for into "ip_list.txt," when doing so list every IP address that you suspect of being an IP Camera/Security Camera. 

If the program confirms that it is a security camera, it will then attack it, if the attack is successful, the ruby script will let you know, from there you will have to open up "checkthisfile.txt" and view the IP address, as well as the credentials of the victimized security camera.
