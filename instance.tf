resource "aws_instance" "miniproj-instance" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = "${aws_subnet.main-public-1.id}"

  # the security group
  vpc_security_group_ids = ["${aws_security_group.allow-http.id}"]

  # the public SSH key
  key_name = "${aws_key_pair.miniproj-kp.key_name}"
 
  #instance initiation scripts
  user_data = "${data.template_cloudinit_config.cloudinit.rendered}"
}

output "IP" {
    value = "${aws_instance.miniproj-instance.public_ip}"
}
