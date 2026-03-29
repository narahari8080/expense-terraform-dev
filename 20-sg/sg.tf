module "mysql_sg" {
    source = "git::https://github.com/narahari8080/terraform-aws-securitygroup-module.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "mysql"
    vpc_id = local.vpc_id
    common_tags = var.common_tags
    sg_tags = var.mysql_sg_tags
}

