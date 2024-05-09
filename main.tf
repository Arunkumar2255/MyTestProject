provider "aws" {
  region = "us-east-1"  # Replace with your desired AWS region
}

module "ec2_instance" {
  source = "./ec2-instance"  # Path to your EC2 instance module

  ami           = "ami-0d13e3e640877b0b9"
  instance_type = "t2.micro"
  instance_name = "ec2-created-from-terraform"
}
