# store the terraform state file in s3
terraform {
  backend "s3" {
    bucket    = "terraform-multi-tier-architecture" 
    key       = "worldwide-web-ecs.tfstate"
    region    = "ca-central-1"
    profile = "terraform-user"
   
  }
}

