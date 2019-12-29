provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "node1" {
  ami                     = "ami-021e78b340c8f907e"
  instance_type           = "t2.micro"
  key_name                = "devops"
  vpc_security_group_ids  = ["sg-0255375ce75e2cc8d", "sg-064ad82e7020ebef4" ]
  tags = {
    Name = "Node1"
  }
}

// centos 8

//resource "aws_instance" "node2" {
//  ami = "ami-04ed2257ae9e881f3"
//  instance_type = "t2.micro"
//  vpc_security_group_ids = ["sg-0aea1c5e2dcfc9837"]
//  key_name  = "devops"
//  tags = {
//    Name = "Node2"
//  }
//}

resource "local_file" "inventory" {
  filename  = "/tmp/hosts"
  // content   = "${aws_instance.node1.public_ip}\n${aws_instance.node2.public_ip}"
  content   = "${aws_instance.node1.public_ip}\n"
}
