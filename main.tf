provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "mumbai" {
  ami           = "ami-0e53db6fd757e38c7"
  instance_type = "t2.micro"  # Free tier eligible
}

provider "aws" {
  region = "ap-southeast-1"
  alias = "hyd"
}

resource "aws_instance" "hyderabad" {
  ami           = "ami-04a5ce820a419d6da"
  instance_type = "t2.micro"  # Free tier eligible
  provider = aws.hyd
}