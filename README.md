###  A mini project to create AWS infrastructure and launch a http server

###  Technical Components
     Cloud Provider    : AWS
     Provisioning Tool : Terraform  (documentation : https://www.terraform.io/docs/index.html)
     Testing           : serverspec (documentation : http://serverspec.org)
     TODO (automate and integrate testing upon infrastructure creation - see below for details)

### AWS Infrastructure created with the script - 
     VPC             : CIDR 172.98.67.0/27 
     Subnet (public) : CIDR 172.98.67.0/28   
     Security Group  : ingress - http & ssh
     Linux Instance  : AWS Linux
     HTTP server     : apaache httpd24
 
###  Project Setup 
     From command prompt run the following commands
     1. git clone https://github.com/dghadge/ticketservice.git
     2. mvn package 
     3. mvn spring-boot:run  (this command will start the application)
     
