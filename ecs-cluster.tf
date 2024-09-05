provider "aws" {
  region = "us-east-1"  # Change to your desired region
}

resource "aws_ecs_cluster" "my_cluster" {
  name = "my-ecs-cluster"
}
