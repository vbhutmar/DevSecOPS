resource "aws_instance" "testweb" {
   ami           = "ami-0108d6a82a783b352"
   instance_type = "t2.micro"
 }
