provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "mumbai" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"  # Free tier eligible
}

provider "aws" {
  region = "ap-southeast-1s"
  alias = "hyd"
}

resource "aws_instance" "hyderabad" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"  # Free tier eligible
  provider = aws.hyd
}