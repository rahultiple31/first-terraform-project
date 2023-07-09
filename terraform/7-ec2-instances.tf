resource "aws_instance" "instance_1" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"

  tags = {
    Name = "instance_1"
  }
}

resource "aws_instance" "instance_2" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"

  tags = {
    Name = "instance_2"
  }
}
