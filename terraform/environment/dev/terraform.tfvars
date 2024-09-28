region = "us-east-1"

cluster_name = "linuxtips-ecs-cluster"

service_name = "chip"

service_port = 8080

service_cpu = 256

service_memory = 512

ssm_listener = "/linuxtips/ecs/lb/listener"

ssm_vpc_id = "/linuxtips-vpc/vpc/vpc_id"

environment_variables = [
  {
    name  = "foo"
    value = "bar"
  },
  {
    name  = "tico"
    value = "teco"
  }
]

capabilities = ["EC2"]

service_healthcheck = {
  healthy_threshold   = 3
  unhealthy_threshold = 10
  timeout             = 10
  interval            = 60
  matcher             = "200-399"
  path                = "/healthcheck"
  port                = 8080
}

ssm_private_subnet_1 = "/linuxtips-vpc/vpc/private_subnet_1a"

ssm_private_subnet_2 = "/linuxtips-vpc/vpc/private_subnet_1b"

ssm_private_subnet_3 = "/linuxtips-vpc/vpc/private_subnet_1c"

service_launch_type = "EC2"

service_task_count = 3

ssm_alb = "/linuxtips/ecs/lb/id"

service_hosts = [
  "chip.linuxtips.demo"
]

scale_type   = "requests_tracking"
task_minimum = 3
task_maximum = 12

### autoscaling CPU ###

scale_out_cpu_threshold = 50

scale_out_adjustment = 2

scale_out_comparison_operator = "GreaterThanOrEqualToThreshold"

scale_out_statistic = "Average"

scale_out_period = 60

scale_out_evaluation_periods = 2

scale_out_cooldown = 60

scale_in_cpu_threshold       = 30
scale_in_adjustment          = -1
scale_in_comparison_operator = "LessThanOrEqualToThreshold"
scale_in_statistic           = "Average"
scale_in_period              = 60
scale_in_evaluation_periods  = 2
scale_in_cooldown            = 60

scale_tracking_cpu      = 50
scale_tracking_requests = 30