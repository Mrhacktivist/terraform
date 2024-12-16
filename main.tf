resource "aws_s3_bucket" "vaibhavvuck" {
  bucket = "sfjkbfuvbajbfahlhfbmsvbab"  # Change to a unique bucket name
  acl    = "private"  # Set the ACL for the bucket

  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
}