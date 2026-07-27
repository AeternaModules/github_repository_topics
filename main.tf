resource "github_repository_topics" "repository_topics" {
  for_each = var.repository_topics

  repository = each.value.repository
  topics     = each.value.topics
}

