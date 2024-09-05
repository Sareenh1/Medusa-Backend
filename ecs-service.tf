resource "aws_ecs_service" "my_service" {
  name            = "my-ecs-service"
  cluster         = aws_ecs_cluster.my_cluster.id
  task_definition = aws_ecs_task_definition.my_task.arn
  desired_count   = 1

  launch_type = "FARGATE"

  network_configuration {
    subnets          = ["subnet-12345678"]  # Replace with your subnet IDs
    security_groups   = ["sg-12345678"]    # Replace with your security group IDs
    assign_public_ip  = true
  }

  tags = {
    Name = "my-service"
  }
}
