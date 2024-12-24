resource "aws_instance" "nginx_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.nginx_sg.name]

  root_block_device {
    volume_size = var.disk_size
  }

  user_data = file("user_data.sh")

  tags = {
    Name = "Nginx-Web-Server"
  }
}
