provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWOSEAU2H36QBESTO"
  secret_key = "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"

}
resource "aws_vpc" "test1" {
  cidr_block = "10.0.0.0/16"

}