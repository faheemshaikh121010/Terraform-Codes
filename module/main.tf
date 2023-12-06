provider "aws" {
    region = "us-east-1"
  
}
module "ec2module" {
    source = "./ec2"
    ec2name = "Name from Module"

}
output "moduleoutput" {
    value = module.ec2module.instance_id
  
}