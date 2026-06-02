# Terraform Automatizacija Infrastrukture (Dio 2)

Ovaj repozitorij sadrži Terraform konfiguraciju koja automatski provisionira visoko-dostupnu infrastrukturu na AWS-u za potrebe web aplikacije (Docker, Nginx, Flask, PostgreSQL).

## Arhitektura koju Terraform kreira:
- **VPC** (10.0.0.0/16) sa Internet Gateway-om.
- **2 Public Subneta** (za EC2 instance i Load Balancer).
- **2 Private Subneta** (za RDS instancu).
- **Security Grupe**:
  - `alb-sg`: Dozvoljava HTTP promet sa interneta.
  - `ec2-sg`: Dozvoljava HTTP samo preko ALB-a i SSH sa interneta.
  - `rds-sg`: Dozvoljava PostgreSQL promet (5432) samo sa EC2 instanci.
- **Application Load Balancer (ALB)** povezan sa Target Grupom i EC2 instancama.
- **2 EC2 Instance** (Ubuntu 22.04) sa automatski pre-instaliranim Dockerom i Gitom (kroz `user_data`).
- **Amazon RDS (PostgreSQL)** u privatnoj mreži.
- **Amazon S3 Bucket** sa nasumičnim imenom za statičke datoteke.

## Upute za pokretanje

### Preduvjeti:
1. Instaliran Terraform na računaru.
2. Konfigurisan AWS CLI sa validnim kredencijalima (Access Key, Secret Key, Session Token) - *Posebno bitno za AWS Academy Learner Lab.*

### Koraci:

1. **Inicijalizacija Terraform repozitorija:**
   Preuzima potrebne AWS providere.
   ```bash
   terraform init