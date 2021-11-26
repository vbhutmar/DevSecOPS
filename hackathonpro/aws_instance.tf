resource "aws_instance" "web" {
   ami           = "${lookup(var.ami_id, var.region)}"
   instance_type = "t2.micro"
  
   user_data = <<-EOF
    #!/bin/bash
    set -ex
    sudo yum update -y
    sudo amazon-linux-extras install docker -y
    sudo service docker start
    sudo usermod -a -G docker ec2-user
    sudo curl -L https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
  EOF
  
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  tags = {
    project = "devsecops"
  }

  key_name                = "hackathon_demo"
  monitoring              = true
  disable_api_termination = false
  ebs_optimized           = true
}
