# This file contains scripts for creating the S3 bucket and the folder structure for the project.
#  The S3 bucket will be used to store raw data, processed data, rejected data, Glue job scripts, miscellaneous files, and logs.
# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.0"
#     }
#   }
# }

# provider "aws" {
#   region = "ap-southeast-2"
# }

resource "aws_s3_bucket" "parent_bucket" {
  bucket        = "my-finance-etl-project-bucket"
  force_destroy = true
}

resource "aws_s3_object" "project_prefix_raw" {
  bucket  = aws_s3_bucket.parent_bucket.id
  key     = "raw/"
  content = ""
}

resource "aws_s3_object" "project_prefix_processed" {
  bucket  = aws_s3_bucket.parent_bucket.id
  key     = "processed/"
  content = ""
}

resource "aws_s3_object" "project_prefix_rejected" {
  bucket  = aws_s3_bucket.parent_bucket.id
  key     = "rejected/"
  content = ""
}

resource "aws_s3_object" "project_prefix_glue_jobs" {
  bucket  = aws_s3_bucket.parent_bucket.id
  key     = "glue_jobs/"
  content = ""
}


resource "aws_s3_object" "project_prefix_misc" {
  bucket  = aws_s3_bucket.parent_bucket.id
  key     = "misc/"
  content = ""
}

resource "aws_s3_object" "project_prefix_logs" {
  bucket  = aws_s3_bucket.parent_bucket.id
  key     = "logs/"
  content = ""
}


