resource "aws_ecs_task_definition" "main" {
  family                   = "node-datadog-dev"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = 256
  memory                   = 512
  execution_role_arn       = "arn:aws:iam::072056452537:role/ecsTaskExecutionRole"

  container_definitions = file("containers.json")

}
