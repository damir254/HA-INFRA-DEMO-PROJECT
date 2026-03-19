terraform {
  backend "s3" {
    bucket         = "damir-bucket-01032026"
    key            = "dev/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
