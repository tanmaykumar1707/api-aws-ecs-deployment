variable "aws_region" {
  default = "ap-south-1"
}

variable "project_name" {
  default = "aad-fis-agent"
}


variable "vpc_id" {}
variable "public_subnets" {
  type = list(string)
}
variable "private_subnets" {
  type = list(string)
}

variable "cluster_name" {
  default = "aad-fis-agent-cluster"
}

variable "service_name" {
  default = "aad-fis-agent-api-service"
}

variable "task_family" {
  default = "aad-fis-agent-api-task"
}

variable "container_name" {
  default = "aad-task-container"
}

variable "container_port" {
  default = 8080
}

variable "cpu" {
  default = 512
}

variable "memory" {
  default = 1024
}

variable "desired_count" {
  default = 1
}

variable "health_check_path" {
  default = "/actuator/health"
}

variable "ecr_repo_url" {
  description = "ECR Repo URL "
  default = "741448954606.dkr.ecr.ap-south-1.amazonaws.com/testing/ecs-api-deployment"
}