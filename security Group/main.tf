provider "aws" {
    region = "us-east-1"
  
}
resource "aws_instance" "ec2" {

    ami = "ami-0230bd60aa48260c6"
    instance_type = "t2.micro"
    security_groups = [aws_security_group.webfirewall.name]
  
}
resource "aws_security_group" "webfirewall" {
    name = "Allow HTTPS"

    ingress {
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]

    }
    egress {
        
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]

    }
}