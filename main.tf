provider "aws" {
  region = "ap-south-1"
}

# S3 Bucket
resource "aws_s3_bucket" "example_bucket" {
  bucket = "m-manu619"
}

# EC2 Instance
resource "aws_instance" "web_server" {
  ami           = "ami-004b958968a74efe8" # Updated with a t2.micro-compatible AMI ID (Ubuntu Jammy 22.04)
  instance_type = "t2.micro"              # t2.micro instance type
  tags = {
    Name = "ExampleWebServer"
  }
}


# RDS Instance
resource "aws_db_instance" "example_db" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0.32"         # Update to a supported version
  instance_class       = "db.t4g.micro"  # ARM-based RDS instance
  username             = "admin"
  password             = "password"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  publicly_accessible  = true            # Optional: Allow public access
}

# Route53 Hosted Zone
resource "aws_route53_zone" "example_zone" {
  name = "m1manu1969.com"
}

