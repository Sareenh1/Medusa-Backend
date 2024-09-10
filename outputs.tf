output "ecs_cluster_name" {
  value = aws_ecs_cluster.medusa_cluster.name
}

output "service_url" {
  value = aws_ecs_service.medusa_service.load_balancer[0].dns_name
}
