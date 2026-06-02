output "load_balancer_dns_name" {
  description = "DNS link Load Balancera za pristup aplikaciji"
  value       = aws_lb.app_alb.dns_name
}

output "s3_bucket_name" {
  description = "Ime S3 Bucketa za upload slika"
  value       = aws_cloudformation_stack.s3_bucket.outputs["BucketName"]
}

output "rds_endpoint" {
  description = "Endpoint (Adresa) za spajanje na RDS PostgreSQL bazu"
  value       = aws_db_instance.postgres_db.endpoint
}

output "ec2_instance_1_public_ip" {
  description = "Javna IP adresa prve EC2 instance (za SSH)"
  value       = aws_instance.app_server_1.public_ip
}

output "ec2_instance_2_public_ip" {
  description = "Javna IP adresa druge EC2 instance (za SSH)"
  value       = aws_instance.app_server_2.public_ip
}