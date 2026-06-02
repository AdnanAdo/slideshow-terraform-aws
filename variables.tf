variable "aws_region" {
  description = "AWS regija u kojoj se kreiraju resursi"
  default     = "us-east-1"
}

variable "project_name" {
  description = "Naziv projekta koji će se koristiti za tagiranje"
  default     = "slideshow-app"
}

variable "vpc_cidr" {
  description = "CIDR blok za VPC"
  default     = "10.0.0.0/16"
}

variable "db_username" {
  description = "Username za RDS PostgreSQL bazu"
  type        = string
  default     = "postgres"
}

variable "db_password" {
  description = "Password za RDS PostgreSQL bazu"
  type        = string
  sensitive   = true
}

variable "instance_type" {
  description = "Tip EC2 instance"
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID za EC2 instance (Ubuntu 22.04)"
  default     = "ami-0c7217cdde317cfec" 
}