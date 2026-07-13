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
  validation {
    condition = alltrue([
      for k, v in var.repository_topicses : (
        can(regex("^[-a-zA-Z0-9_.]{1,100}$", v.repository))
      )
    ])
    error_message = "must include only alphanumeric characters, underscores or hyphens and consist of 100 characters or less"
  }
  validation {
    condition = alltrue([
      for k, v in var.repository_topicses : (
        alltrue([for x in v.topics : can(regex("^[a-z0-9][a-z0-9-]{0,49}$", x))])
      )
    ])
    error_message = "must include only lowercase alphanumeric characters or hyphens and cannot start with a hyphen and consist of 50 characters or less"
  }
}

