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
     Linux Instance  : AWS Linux, ami-c481fad3, US-EAST
     HTTP server     : apache httpd24
 
###  Project Setup 
     1. Download and install Terraform :   https://www.terraform.io/downloads.html
     2. Download and install Serverspec : sudo gem install serverspec (Documentation : http://serverspec.org )
     2. git clone https://github.com/dghadge/mini-project.git
     3. export TF_VAR_access_key=your-aws-access-key-here
     4. export TF_VAR_secret_key=your-aws-secret-key-here
     5. export TF_VAR_public_key=your-aws-public-key-here
     
###  Project launch
     On command prompt run : ./miniprojLaunch.sh 
     

     
