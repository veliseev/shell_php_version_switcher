# shell_php_version_switcher
Just a simple shell script to switch between several php versions

You need to download the switch_to_php.sh file and place it anywhere on your machine. 
To make it accessible in command line you need to run the following commands:
```
sudo ln -s /full/path/to/swith_to_php.sh /usr/local/bin/switch_to_php
chmod +x /full/path/to/swith_to_php.sh
```
## Example of using:
Script accepts only one parameter the php version you want switch to, i.e. simply run
```
switch_to_php 5.6
switch_to_php 7.0
switch_to_php 7.1
```
etc...
