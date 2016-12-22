###  A mini project to create AWS infrastructure and launch a http server

###  Technical Components
     Host Machine      : Unix (must have packages : expect, rake)
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
     2. Add the terraform install directory to your PATH.  example : export PATH=/home/vagrant:$PATH
     3. Download code : git clone https://github.com/dghadge/mini-project.git
     4. Export user specific AWS keys This user must have admin access to all resources
          export TF_VAR_access_key=your-aws-access-key-here
          export TF_VAR_secret_key=your-aws-secret-key-here
          export TF_VAR_public_key=your-aws-public-key-here        
     
###  Project launch
     On command prompt run : ./miniprojLaunch.sh 

###  Testing Setup
     1. Download and install Serverspec 
          sudo gem install serverspec (Documentation : http://serverspec.org )
     2. Add ip output from the previous command to  ~/.ssh/config so that it looks like this :
          Host xxx.xxx.xxx.xxx 
          User ec2-user
          IdentityFile /path-to-/your-aws-private-key

###  Testing launch
     On command prompt run : ./miniprojTest.sh 
