output "repository_topicses_id" {
  description = "Map of id values across all repository_topicses, keyed the same as var.repository_topicses"
  value       = { for k, v in github_repository_topics.repository_topicses : k => v.id if v.id != null && length(v.id) > 0 }
}
output "repository_topicses_repository" {
  description = "Map of repository values across all repository_topicses, keyed the same as var.repository_topicses"
  value       = { for k, v in github_repository_topics.repository_topicses : k => v.repository if v.repository != null && length(v.repository) > 0 }
}
output "repository_topicses_topics" {
  description = "Map of topics values across all repository_topicses, keyed the same as var.repository_topicses"
  value       = { for k, v in github_repository_topics.repository_topicses : k => v.topics if v.topics != null && length(v.topics) > 0 }
}

