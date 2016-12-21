resource "aws_key_pair" "miniproj-kp" {
  key_name = "${var.public_key}"
  public_key = "${file("${var.public_key}")}"
}
