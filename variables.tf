variable "repository_topicses" {
  description = <<EOT
Map of repository_topicses, attributes below
Required:
    - repository
    - topics
EOT

  type = map(object({
    repository = string
    topics     = set(string)
  }))
  # --- Unconfirmed validation candidates, derived from github_repository_topics's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: repository
  #   condition: can(regex("^[-a-zA-Z0-9_.]{1,100}$", value))
  #   message:   must include only alphanumeric characters, underscores or hyphens and consist of 100 characters or less
  # path: topics[*]
  #   condition: can(regex("^[a-z0-9][a-z0-9-]{0,49}$", value))
  #   message:   must include only lowercase alphanumeric characters or hyphens and cannot start with a hyphen and consist of 50 characters or less
}

