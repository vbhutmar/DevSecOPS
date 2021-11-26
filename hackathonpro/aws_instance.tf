resource "aws_instance" "web" {
   ami           = "${lookup(var.ami_id, var.region)}"
   instance_type = "t2.micro"
  
   vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  
   iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

   tags = {
     project = "devsecops"
   }

   key_name                = "hackathon_demo"
 }
