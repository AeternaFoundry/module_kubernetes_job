output "jobs_id" {
  description = "Map of id values across all jobs, keyed the same as var.jobs except keys with no id are omitted"
  value       = { for k, v in kubernetes_job.jobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "jobs_metadata" {
  description = "Map of metadata values across all jobs, keyed the same as var.jobs except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_job.jobs : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "jobs_spec" {
  description = "Map of spec values across all jobs, keyed the same as var.jobs except keys with no spec are omitted"
  value       = { for k, v in kubernetes_job.jobs : k => one(v.spec) if v.spec != null && length(v.spec) > 0 }
}
output "jobs_wait_for_completion" {
  description = "Map of wait_for_completion values across all jobs, keyed the same as var.jobs except keys with no wait_for_completion are omitted"
  value       = { for k, v in kubernetes_job.jobs : k => v.wait_for_completion if v.wait_for_completion != null }
}

