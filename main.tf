#configure aws provider

provider  "aws" {
    region   = var.region
    profile = "terraform-user"
}


#create vpc
module "vpc" {
 source = "../modules/vpc"
 region = var.region
 project_name = var.project_name
 vpc_cidr = var.vpc_cidr
 public_subnet_az1_cidr = var.public_subnet_az1_cidr
 public_subnet_az2_cidr = var.public_subnet_az2_cidr
 private_app_subnet_az1_cidr = var.private_app_subnet_az1_cidr
 private_app_subnet_az2_cidr = var.private_app_subnet_az2_cidr
 private_data_subnet_az1_cidr = var.private_data_subnet_az1_cidr
 private_data_subnet_az2_cidr = var.private_data_subnet_az2_cidr
 ami_id = var.ami_id
 instance_type = var.instance_type
 desired_capacity = var.desired_capacity
 max_size = var.max_size 
 min_size = var.min_size
 launch_template_id = var.launch_template_id 

 health_check_type = var.health_check_type 
 health_check_grace_period = var.health_check_grace_period
 key_name = var.key_name
 volume_size = var.volume_size
 volume_type = var.volume_type
 bastion_ami_id = var.bastion_ami_id 
 bastion_instance_type = var.bastion_instance_type
 db_username = var.db_username 
 db_password = var.db_password 
 app_sg_id = var.app_sg_id
 db_engine_version = var.db_engine_version 
 db_instance_class = var.db_instance_class
 db_allocated_storage = var.db_allocated_storage 




}

