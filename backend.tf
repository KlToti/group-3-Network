terraform {
  backend "s3" {
    bucket         = "group-3-talent-academy-elk-project"
    key            = "network/sprint1/terraform.tfstates"
    dynamodb_table = "terraform-lock"
  }
}