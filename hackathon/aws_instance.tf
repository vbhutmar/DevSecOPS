resource "aws_instance" "web1" {
   ami           = "${lookup(var.ami_id, ap-south-1)}"
   instance_type = "t2.micro"
 }
