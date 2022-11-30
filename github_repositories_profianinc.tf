
resource "github_repository" "profianinc-assets" {
  provider = github.profianinc

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "assets"
  description  = ""
  homepage_url = ""

  visibility    = local.github_policy.visibility
  has_issues    = local.github_policy.has_issues
  has_projects  = local.github_policy.has_projects
  has_wiki      = local.github_policy.has_wiki
  has_downloads = local.github_policy.has_downloads

  allow_merge_commit = local.github_policy.allow_merge_commit
  allow_squash_merge = local.github_policy.allow_squash_merge
  allow_rebase_merge = local.github_policy.allow_rebase_merge
  allow_auto_merge   = local.github_policy.allow_auto_merge

  squash_merge_commit_title   = local.github_policy.squash_merge_commit_title
  squash_merge_commit_message = local.github_policy.squash_merge_commit_message
  merge_commit_title          = local.github_policy.merge_commit_title
  merge_commit_message        = local.github_policy.merge_commit_message

  delete_branch_on_merge = local.github_policy.delete_branch_on_merge
  allow_update_branch    = local.github_policy.allow_update_branch

  auto_init          = local.github_policy.creation.auto_init
  gitignore_template = local.github_policy.creation.gitignore_template
  license_template   = local.github_policy.creation.license_template

  security_and_analysis {
    advanced_security {
      status = local.github_policy.security_and_analysis.advanced_security
    }
    secret_scanning {
      status = local.github_policy.security_and_analysis.secret_scanning
    }
    secret_scanning_push_protection {
      status = local.github_policy.security_and_analysis.secret_scanning_push_protection
    }
  }

  topics = local.github_policy.topics

  vulnerability_alerts                    = local.github_policy.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = local.github_policy.ignore_vulnerability_alerts_during_read
}

resource "github_repository" "profianinc-benefice" {
  provider = github.profianinc

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "benefice"
  description  = "Demo workload executor"
  homepage_url = ""

  visibility    = local.github_policy.visibility
  has_issues    = local.github_policy.has_issues
  has_projects  = local.github_policy.has_projects
  has_wiki      = local.github_policy.has_wiki
  has_downloads = local.github_policy.has_downloads

  allow_merge_commit = local.github_policy.allow_merge_commit
  allow_squash_merge = local.github_policy.allow_squash_merge
  allow_rebase_merge = local.github_policy.allow_rebase_merge
  allow_auto_merge   = local.github_policy.allow_auto_merge

  squash_merge_commit_title   = local.github_policy.squash_merge_commit_title
  squash_merge_commit_message = local.github_policy.squash_merge_commit_message
  merge_commit_title          = local.github_policy.merge_commit_title
  merge_commit_message        = local.github_policy.merge_commit_message

  delete_branch_on_merge = local.github_policy.delete_branch_on_merge
  allow_update_branch    = local.github_policy.allow_update_branch

  auto_init          = local.github_policy.creation.auto_init
  gitignore_template = local.github_policy.creation.gitignore_template
  license_template   = local.github_policy.creation.license_template

  security_and_analysis {
    advanced_security {
      status = local.github_policy.security_and_analysis.advanced_security
    }
    secret_scanning {
      status = local.github_policy.security_and_analysis.secret_scanning
    }
    secret_scanning_push_protection {
      status = local.github_policy.security_and_analysis.secret_scanning_push_protection
    }
  }

  topics = local.github_policy.topics

  vulnerability_alerts                    = local.github_policy.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = local.github_policy.ignore_vulnerability_alerts_during_read
}

resource "github_repository" "profianinc-build-steward" {
  provider = github.profianinc

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "build-steward"
  description  = ""
  homepage_url = ""

  visibility    = local.github_policy.visibility
  has_issues    = local.github_policy.has_issues
  has_projects  = local.github_policy.has_projects
  has_wiki      = local.github_policy.has_wiki
  has_downloads = local.github_policy.has_downloads

  allow_merge_commit = local.github_policy.allow_merge_commit
  allow_squash_merge = local.github_policy.allow_squash_merge
  allow_rebase_merge = local.github_policy.allow_rebase_merge
  allow_auto_merge   = local.github_policy.allow_auto_merge

  squash_merge_commit_title   = local.github_policy.squash_merge_commit_title
  squash_merge_commit_message = local.github_policy.squash_merge_commit_message
  merge_commit_title          = local.github_policy.merge_commit_title
  merge_commit_message        = local.github_policy.merge_commit_message

  delete_branch_on_merge = local.github_policy.delete_branch_on_merge
  allow_update_branch    = local.github_policy.allow_update_branch

  auto_init          = local.github_policy.creation.auto_init
  gitignore_template = local.github_policy.creation.gitignore_template
  license_template   = local.github_policy.creation.license_template

  security_and_analysis {
    advanced_security {
      status = local.github_policy.security_and_analysis.advanced_security
    }
    secret_scanning {
      status = local.github_policy.security_and_analysis.secret_scanning
    }
    secret_scanning_push_protection {
      status = local.github_policy.security_and_analysis.secret_scanning_push_protection
    }
  }

  topics = local.github_policy.topics

  vulnerability_alerts                    = local.github_policy.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = local.github_policy.ignore_vulnerability_alerts_during_read
}

resource "github_repository" "profianinc-drawbridge" {
  provider = github.profianinc

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "drawbridge"
  description  = ""
  homepage_url = ""

  visibility    = local.github_policy.visibility
  has_issues    = local.github_policy.has_issues
  has_projects  = local.github_policy.has_projects
  has_wiki      = local.github_policy.has_wiki
  has_downloads = local.github_policy.has_downloads

  allow_merge_commit = local.github_policy.allow_merge_commit
  allow_squash_merge = local.github_policy.allow_squash_merge
  allow_rebase_merge = local.github_policy.allow_rebase_merge
  allow_auto_merge   = local.github_policy.allow_auto_merge

  squash_merge_commit_title   = local.github_policy.squash_merge_commit_title
  squash_merge_commit_message = local.github_policy.squash_merge_commit_message
  merge_commit_title          = local.github_policy.merge_commit_title
  merge_commit_message        = local.github_policy.merge_commit_message

  delete_branch_on_merge = local.github_policy.delete_branch_on_merge
  allow_update_branch    = local.github_policy.allow_update_branch

  auto_init          = local.github_policy.creation.auto_init
  gitignore_template = local.github_policy.creation.gitignore_template
  license_template   = local.github_policy.creation.license_template

  security_and_analysis {
    advanced_security {
      status = local.github_policy.security_and_analysis.advanced_security
    }
    secret_scanning {
      status = local.github_policy.security_and_analysis.secret_scanning
    }
    secret_scanning_push_protection {
      status = local.github_policy.security_and_analysis.secret_scanning_push_protection
    }
  }

  topics = local.github_policy.topics

  vulnerability_alerts                    = local.github_policy.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = local.github_policy.ignore_vulnerability_alerts_during_read
}

resource "github_repository" "profianinc-enarxsign" {
  provider = github.profianinc

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "enarxsign"
  description  = ""
  homepage_url = ""

  visibility    = local.github_policy.visibility
  has_issues    = local.github_policy.has_issues
  has_projects  = local.github_policy.has_projects
  has_wiki      = local.github_policy.has_wiki
  has_downloads = local.github_policy.has_downloads

  allow_merge_commit = local.github_policy.allow_merge_commit
  allow_squash_merge = local.github_policy.allow_squash_merge
  allow_rebase_merge = local.github_policy.allow_rebase_merge
  allow_auto_merge   = local.github_policy.allow_auto_merge

  squash_merge_commit_title   = local.github_policy.squash_merge_commit_title
  squash_merge_commit_message = local.github_policy.squash_merge_commit_message
  merge_commit_title          = local.github_policy.merge_commit_title
  merge_commit_message        = local.github_policy.merge_commit_message

  delete_branch_on_merge = local.github_policy.delete_branch_on_merge
  allow_update_branch    = local.github_policy.allow_update_branch

  auto_init          = local.github_policy.creation.auto_init
  gitignore_template = local.github_policy.creation.gitignore_template
  license_template   = local.github_policy.creation.license_template

  security_and_analysis {
    advanced_security {
      status = local.github_policy.security_and_analysis.advanced_security
    }
    secret_scanning {
      status = local.github_policy.security_and_analysis.secret_scanning
    }
    secret_scanning_push_protection {
      status = local.github_policy.security_and_analysis.secret_scanning_push_protection
    }
  }

  topics = local.github_policy.topics

  vulnerability_alerts                    = local.github_policy.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = local.github_policy.ignore_vulnerability_alerts_during_read
}

resource "github_repository" "profianinc-images" {
  provider = github.profianinc

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "images"
  description  = "ProfianInc images"
  homepage_url = ""

  visibility    = local.github_policy.visibility
  has_issues    = local.github_policy.has_issues
  has_projects  = local.github_policy.has_projects
  has_wiki      = local.github_policy.has_wiki
  has_downloads = local.github_policy.has_downloads

  allow_merge_commit = local.github_policy.allow_merge_commit
  allow_squash_merge = local.github_policy.allow_squash_merge
  allow_rebase_merge = local.github_policy.allow_rebase_merge
  allow_auto_merge   = local.github_policy.allow_auto_merge

  squash_merge_commit_title   = local.github_policy.squash_merge_commit_title
  squash_merge_commit_message = local.github_policy.squash_merge_commit_message
  merge_commit_title          = local.github_policy.merge_commit_title
  merge_commit_message        = local.github_policy.merge_commit_message

  delete_branch_on_merge = local.github_policy.delete_branch_on_merge
  allow_update_branch    = local.github_policy.allow_update_branch

  auto_init          = local.github_policy.creation.auto_init
  gitignore_template = local.github_policy.creation.gitignore_template
  license_template   = local.github_policy.creation.license_template

  security_and_analysis {
    advanced_security {
      status = local.github_policy.security_and_analysis.advanced_security
    }
    secret_scanning {
      status = local.github_policy.security_and_analysis.secret_scanning
    }
    secret_scanning_push_protection {
      status = local.github_policy.security_and_analysis.secret_scanning_push_protection
    }
  }

  topics = local.github_policy.topics

  vulnerability_alerts                    = local.github_policy.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = local.github_policy.ignore_vulnerability_alerts_during_read
}

resource "github_repository" "profianinc-infra-terraform" {
  provider = github.profianinc

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "infra-terraform"
  description  = "Terraform for some configurations"
  homepage_url = ""

  visibility    = local.github_policy.visibility
  has_issues    = local.github_policy.has_issues
  has_projects  = local.github_policy.has_projects
  has_wiki      = local.github_policy.has_wiki
  has_downloads = local.github_policy.has_downloads

  allow_merge_commit = local.github_policy.allow_merge_commit
  allow_squash_merge = local.github_policy.allow_squash_merge
  allow_rebase_merge = local.github_policy.allow_rebase_merge
  allow_auto_merge   = local.github_policy.allow_auto_merge

  squash_merge_commit_title   = local.github_policy.squash_merge_commit_title
  squash_merge_commit_message = local.github_policy.squash_merge_commit_message
  merge_commit_title          = local.github_policy.merge_commit_title
  merge_commit_message        = local.github_policy.merge_commit_message

  delete_branch_on_merge = local.github_policy.delete_branch_on_merge
  allow_update_branch    = local.github_policy.allow_update_branch

  auto_init          = local.github_policy.creation.auto_init
  gitignore_template = local.github_policy.creation.gitignore_template
  license_template   = local.github_policy.creation.license_template

  security_and_analysis {
    advanced_security {
      status = local.github_policy.security_and_analysis.advanced_security
    }
    secret_scanning {
      status = local.github_policy.security_and_analysis.secret_scanning
    }
    secret_scanning_push_protection {
      status = local.github_policy.security_and_analysis.secret_scanning_push_protection
    }
  }

  topics = local.github_policy.topics

  vulnerability_alerts                    = local.github_policy.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = local.github_policy.ignore_vulnerability_alerts_during_read
}

resource "github_repository" "profianinc-infrastructure" {
  provider = github.profianinc

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "infrastructure"
  description  = "Profian Inc Network Infrastructure"
  homepage_url = ""

  visibility    = local.github_policy.visibility
  has_issues    = local.github_policy.has_issues
  has_projects  = local.github_policy.has_projects
  has_wiki      = local.github_policy.has_wiki
  has_downloads = local.github_policy.has_downloads

  allow_merge_commit = local.github_policy.allow_merge_commit
  allow_squash_merge = local.github_policy.allow_squash_merge
  allow_rebase_merge = local.github_policy.allow_rebase_merge
  allow_auto_merge   = local.github_policy.allow_auto_merge

  squash_merge_commit_title   = local.github_policy.squash_merge_commit_title
  squash_merge_commit_message = local.github_policy.squash_merge_commit_message
  merge_commit_title          = local.github_policy.merge_commit_title
  merge_commit_message        = local.github_policy.merge_commit_message

  delete_branch_on_merge = local.github_policy.delete_branch_on_merge
  allow_update_branch    = local.github_policy.allow_update_branch

  auto_init          = local.github_policy.creation.auto_init
  gitignore_template = local.github_policy.creation.gitignore_template
  license_template   = local.github_policy.creation.license_template

  security_and_analysis {
    advanced_security {
      status = local.github_policy.security_and_analysis.advanced_security
    }
    secret_scanning {
      status = local.github_policy.security_and_analysis.secret_scanning
    }
    secret_scanning_push_protection {
      status = local.github_policy.security_and_analysis.secret_scanning_push_protection
    }
  }

  topics = local.github_policy.topics

  vulnerability_alerts                    = local.github_policy.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = local.github_policy.ignore_vulnerability_alerts_during_read
}

resource "github_repository" "profianinc-iqt-demo" {
  provider = github.profianinc

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "iqt-demo"
  description  = ""
  homepage_url = ""

  visibility    = local.github_policy.visibility
  has_issues    = local.github_policy.has_issues
  has_projects  = local.github_policy.has_projects
  has_wiki      = local.github_policy.has_wiki
  has_downloads = local.github_policy.has_downloads

  allow_merge_commit = local.github_policy.allow_merge_commit
  allow_squash_merge = local.github_policy.allow_squash_merge
  allow_rebase_merge = local.github_policy.allow_rebase_merge
  allow_auto_merge   = local.github_policy.allow_auto_merge

  squash_merge_commit_title   = local.github_policy.squash_merge_commit_title
  squash_merge_commit_message = local.github_policy.squash_merge_commit_message
  merge_commit_title          = local.github_policy.merge_commit_title
  merge_commit_message        = local.github_policy.merge_commit_message

  delete_branch_on_merge = local.github_policy.delete_branch_on_merge
  allow_update_branch    = local.github_policy.allow_update_branch

  auto_init          = local.github_policy.creation.auto_init
  gitignore_template = local.github_policy.creation.gitignore_template
  license_template   = local.github_policy.creation.license_template

  security_and_analysis {
    advanced_security {
      status = local.github_policy.security_and_analysis.advanced_security
    }
    secret_scanning {
      status = local.github_policy.security_and_analysis.secret_scanning
    }
    secret_scanning_push_protection {
      status = local.github_policy.security_and_analysis.secret_scanning_push_protection
    }
  }

  topics = local.github_policy.topics

  vulnerability_alerts                    = local.github_policy.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = local.github_policy.ignore_vulnerability_alerts_during_read
}

resource "github_repository" "profianinc-k8s-configs" {
  provider = github.profianinc

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "k8s-configs"
  description  = "Kubernetes cluster configuration"
  homepage_url = ""

  visibility    = local.github_policy.visibility
  has_issues    = local.github_policy.has_issues
  has_projects  = local.github_policy.has_projects
  has_wiki      = local.github_policy.has_wiki
  has_downloads = local.github_policy.has_downloads

  allow_merge_commit = local.github_policy.allow_merge_commit
  allow_squash_merge = local.github_policy.allow_squash_merge
  allow_rebase_merge = local.github_policy.allow_rebase_merge
  allow_auto_merge   = local.github_policy.allow_auto_merge

  squash_merge_commit_title   = local.github_policy.squash_merge_commit_title
  squash_merge_commit_message = local.github_policy.squash_merge_commit_message
  merge_commit_title          = local.github_policy.merge_commit_title
  merge_commit_message        = local.github_policy.merge_commit_message

  delete_branch_on_merge = local.github_policy.delete_branch_on_merge
  allow_update_branch    = local.github_policy.allow_update_branch

  auto_init          = local.github_policy.creation.auto_init
  gitignore_template = local.github_policy.creation.gitignore_template
  license_template   = local.github_policy.creation.license_template

  security_and_analysis {
    advanced_security {
      status = local.github_policy.security_and_analysis.advanced_security
    }
    secret_scanning {
      status = local.github_policy.security_and_analysis.secret_scanning
    }
    secret_scanning_push_protection {
      status = local.github_policy.security_and_analysis.secret_scanning_push_protection
    }
  }

  topics = local.github_policy.topics

  vulnerability_alerts                    = local.github_policy.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = local.github_policy.ignore_vulnerability_alerts_during_read
}

resource "github_repository" "profianinc-nixpkgs" {
  provider = github.profianinc

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "nixpkgs"
  description  = "Nix Packages collection"
  homepage_url = ""

  visibility    = local.github_policy.visibility
  has_issues    = local.github_policy.has_issues
  has_projects  = local.github_policy.has_projects
  has_wiki      = local.github_policy.has_wiki
  has_downloads = local.github_policy.has_downloads

  allow_merge_commit = local.github_policy.allow_merge_commit
  allow_squash_merge = local.github_policy.allow_squash_merge
  allow_rebase_merge = local.github_policy.allow_rebase_merge
  allow_auto_merge   = local.github_policy.allow_auto_merge

  squash_merge_commit_title   = local.github_policy.squash_merge_commit_title
  squash_merge_commit_message = local.github_policy.squash_merge_commit_message
  merge_commit_title          = local.github_policy.merge_commit_title
  merge_commit_message        = local.github_policy.merge_commit_message

  delete_branch_on_merge = local.github_policy.delete_branch_on_merge
  allow_update_branch    = local.github_policy.allow_update_branch

  auto_init          = local.github_policy.creation.auto_init
  gitignore_template = local.github_policy.creation.gitignore_template
  license_template   = local.github_policy.creation.license_template

  security_and_analysis {
    advanced_security {
      status = local.github_policy.security_and_analysis.advanced_security
    }
    secret_scanning {
      status = local.github_policy.security_and_analysis.secret_scanning
    }
    secret_scanning_push_protection {
      status = local.github_policy.security_and_analysis.secret_scanning_push_protection
    }
  }

  topics = local.github_policy.topics

  vulnerability_alerts                    = local.github_policy.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = local.github_policy.ignore_vulnerability_alerts_during_read
}

resource "github_repository" "profianinc-operations" {
  provider = github.profianinc

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "operations"
  description  = "Operations issue tracker"
  homepage_url = ""

  visibility    = local.github_policy.visibility
  has_issues    = local.github_policy.has_issues
  has_projects  = local.github_policy.has_projects
  has_wiki      = local.github_policy.has_wiki
  has_downloads = local.github_policy.has_downloads

  allow_merge_commit = local.github_policy.allow_merge_commit
  allow_squash_merge = local.github_policy.allow_squash_merge
  allow_rebase_merge = local.github_policy.allow_rebase_merge
  allow_auto_merge   = local.github_policy.allow_auto_merge

  squash_merge_commit_title   = local.github_policy.squash_merge_commit_title
  squash_merge_commit_message = local.github_policy.squash_merge_commit_message
  merge_commit_title          = local.github_policy.merge_commit_title
  merge_commit_message        = local.github_policy.merge_commit_message

  delete_branch_on_merge = local.github_policy.delete_branch_on_merge
  allow_update_branch    = local.github_policy.allow_update_branch

  auto_init          = local.github_policy.creation.auto_init
  gitignore_template = local.github_policy.creation.gitignore_template
  license_template   = local.github_policy.creation.license_template

  security_and_analysis {
    advanced_security {
      status = local.github_policy.security_and_analysis.advanced_security
    }
    secret_scanning {
      status = local.github_policy.security_and_analysis.secret_scanning
    }
    secret_scanning_push_protection {
      status = local.github_policy.security_and_analysis.secret_scanning_push_protection
    }
  }

  topics = local.github_policy.topics

  vulnerability_alerts                    = local.github_policy.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = local.github_policy.ignore_vulnerability_alerts_during_read
}

resource "github_repository" "profianinc-steward" {
  provider = github.profianinc

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "steward"
  description  = ""
  homepage_url = ""

  visibility    = local.github_policy.visibility
  has_issues    = local.github_policy.has_issues
  has_projects  = local.github_policy.has_projects
  has_wiki      = local.github_policy.has_wiki
  has_downloads = local.github_policy.has_downloads

  allow_merge_commit = local.github_policy.allow_merge_commit
  allow_squash_merge = local.github_policy.allow_squash_merge
  allow_rebase_merge = local.github_policy.allow_rebase_merge
  allow_auto_merge   = local.github_policy.allow_auto_merge

  squash_merge_commit_title   = local.github_policy.squash_merge_commit_title
  squash_merge_commit_message = local.github_policy.squash_merge_commit_message
  merge_commit_title          = local.github_policy.merge_commit_title
  merge_commit_message        = local.github_policy.merge_commit_message

  delete_branch_on_merge = local.github_policy.delete_branch_on_merge
  allow_update_branch    = local.github_policy.allow_update_branch

  auto_init          = local.github_policy.creation.auto_init
  gitignore_template = local.github_policy.creation.gitignore_template
  license_template   = local.github_policy.creation.license_template

  security_and_analysis {
    advanced_security {
      status = local.github_policy.security_and_analysis.advanced_security
    }
    secret_scanning {
      status = local.github_policy.security_and_analysis.secret_scanning
    }
    secret_scanning_push_protection {
      status = local.github_policy.security_and_analysis.secret_scanning_push_protection
    }
  }

  topics = local.github_policy.topics

  vulnerability_alerts                    = local.github_policy.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = local.github_policy.ignore_vulnerability_alerts_during_read
}
