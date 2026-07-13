resource "github_repository_topics" "repository_topicses" {
  for_each = var.repository_topicses

  repository = each.value.repository
  topics     = each.value.topics
}

