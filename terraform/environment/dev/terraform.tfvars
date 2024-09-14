region = "u-east-1"

cluster_name = "linuxtips-ecs-cluster"

service_name = "chip"

service_port = 8080

service_cpu = 256

service_memory = 512

ssm_listener = "/linutxtips/ecs/lb/listener"

#### SSM VPC PARAMETERS ####

ssm_vpc_id = "/linuxtips-vpc/vpc/vpc_id"

ssm_private_subnet_1 = "/linuxtips-vpc/private_subnet_1a"

ssm_private_subnet_2 = "/linuxtips-vpc/private_subnet_1b"

ssm_private_subnet_3 = "/linuxtips-vpc/private_subnet_1c"