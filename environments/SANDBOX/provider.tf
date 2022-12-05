provider "aws" {
    region = "us-east-1"
    default_tags {
      tags = {
        Name = "ziyotek-devops-${var.environment}"
      }
    }
}

terraform {
  backend "s3" {
    bucket = "Saidabbos2004-Bucket"
    key    = "dags/myfile"
    region = "us-east-1"
  }
}
