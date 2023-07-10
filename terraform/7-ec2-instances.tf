resource "aws_instance" "machine1" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"
  key_name      = "your-key-pair-name"

  tags = {
    Name = "machine1"
  }
}

resource "aws_instance" "machine2" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro" 
  key_name      = "your-key-pair-name"

  tags = {
    Name = "machine2"
  }
}
