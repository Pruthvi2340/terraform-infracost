output "z_cost" {
  description = "Estimated cost breakdown for this deployment"
  value       = try(data.local_file.cost[0].content, "n/a")
}
