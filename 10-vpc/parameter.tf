resource "aws_ssm_parameter" "foo" {
  name  = "${var.project_name}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}