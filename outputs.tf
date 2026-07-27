output "repository_topics_id" {
  description = "Map of id values across all repository_topics, keyed the same as var.repository_topics"
  value       = { for k, v in github_repository_topics.repository_topics : k => v.id if v.id != null && length(v.id) > 0 }
}
output "repository_topics_repository" {
  description = "Map of repository values across all repository_topics, keyed the same as var.repository_topics"
  value       = { for k, v in github_repository_topics.repository_topics : k => v.repository if v.repository != null && length(v.repository) > 0 }
}
output "repository_topics_topics" {
  description = "Map of topics values across all repository_topics, keyed the same as var.repository_topics"
  value       = { for k, v in github_repository_topics.repository_topics : k => v.topics if v.topics != null && length(v.topics) > 0 }
}

