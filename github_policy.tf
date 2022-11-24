locals {
  github_policy = {
    archive_on_destroy = true

    visibility = "public"
    has_issues = true
    has_projects = true
    has_wiki = true
    has_downloads = true

    allow_merge_commit = false
    allow_squash_merge = false
    allow_rebase_merge = true
    allow_auto_merge = true

    squash_merge_commit_title = null
    squash_merge_commit_message = null
    merge_commit_title = null
    merge_commit_message = null

    delete_branch_on_merge = true

    creation = {
      auto_init = false
      gitignore_template = null
      license_template = null
      template = null
    }

    security_and_analysis = {
      advanced_security = "enabled"
      secret_scanning = "enabled"
      secret_scanning_push_protection = "enabled"
    }

    topics = null
    vulnerability_alerts = true
    ignore_vulnerability_alerts_during_read = false
    allow_update_branch = true
  }
}
