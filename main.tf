provider "aws" {
  region  = var.aws["region"]
  profile = var.aws["profile"]
}

resource "aws_lightsail_static_ip_attachment" "wordpress_on_lightsail" {
  static_ip_name = aws_lightsail_static_ip.wordpress_on_lightsail.id
  instance_name  = aws_lightsail_instance.wordpress_on_lightsail.id
}

resource "aws_lightsail_static_ip" "wordpress_on_lightsail" {
  name = "wordpress_on_lightsail_static_ip"
}

resource "aws_lightsail_instance" "wordpress_on_lightsail" {
  name              = "wordpress_on_lightsail_instance"
  availability_zone = "ap-northeast-1a"
  blueprint_id      = "wordpress"
  bundle_id         = "nano_2_0"
  tags = {
    Name = "wordpress_on_lightsail_instance"
  }
}
