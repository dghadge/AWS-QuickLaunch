#!/usr/bin/expect

set instance_ip [lindex $argv 0]

spawn "serverspec-init"

expect "Select number: " { send "1\r" }
expect "Select number: " { send "1\r" }
expect "Vagrant instance y/n: " { send "n\r" }
expect "Input target host name: " { send "$instance_ip\r" }

interact
