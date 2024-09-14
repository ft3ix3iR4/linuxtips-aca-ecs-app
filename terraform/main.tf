module "service" {
  source = "../git-repo/linuxtips-aca-ecs-service-module"
  region = var.region

  cluster_name                = var.cluster_name
  service_name                = var.service_name
  service_port                = var.service_port
  service_cpu                 = var.service_cpu
  service_memory              = var.service_memory
  service_listener            = data.aws_ssm_parameter.listener.value
  service_task_execution_role = aws_iam_role.main.arn
  service_healthcheck         = var.service_healthcheck

  environment_variables = var.environment_variables

  capabilities = var.capabilities

  vpc_id = data.aws_ssm_parameter.vpc_id.value
  private_subnets = [
    data.aws_ssm_parameter.private_subnet_1.value,
    data.aws_ssm_parameter.private_subnet_2.value,
    data.aws_ssm_parameter.private_subnet_3.value,
  ]

}