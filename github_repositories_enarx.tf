
resource "github_repository" "enarx-_github" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = ".github"
  description  = "Github-specific repository to hold organisation-wide community files."
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

resource "github_repository" "enarx-ciborium" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "ciborium"
  description  = "CBOR utilities"
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

resource "github_repository" "enarx-codex" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "codex"
  description  = "Code examples that can be compiled to WebAssembly for use with Enarx"
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

resource "github_repository" "enarx-create-pull-request" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "create-pull-request"
  description  = "A GitHub action to create a pull request for changes to your repository in the actions workspace"
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

resource "github_repository" "enarx-crt0stack" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "crt0stack"
  description  = "Tools for reading and creating Linux crt0 stack data"
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

resource "github_repository" "enarx-cryptle" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "cryptle"
  description  = "Secure multi-party clone of Wordle with Enarx"
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

resource "github_repository" "enarx-enarx" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "enarx"
  description  = "Enarx: Confidential Computing with WebAssembly"
  homepage_url = "https://enarx.dev/"

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

resource "github_repository" "enarx-flagset" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "flagset"
  description  = "Rust data types and a macro for generating enumeration-based bit flags"
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

resource "github_repository" "enarx-GreenhouseMonitor" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "GreenhouseMonitor"
  description  = "Sample application for ASP.NET Core on WASI"
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

resource "github_repository" "enarx-homebrew-enarx" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "homebrew-enarx"
  description  = "Homebrew Tap for Enarx"
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

resource "github_repository" "enarx-ICUMonitor" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "ICUMonitor"
  description  = "Sample .NET Application on Enarx"
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

resource "github_repository" "enarx-iocuddle" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "iocuddle"
  description  = "Safely call ioctls from Rust"
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

resource "github_repository" "enarx-linux" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "linux"
  description  = "Linux kernel source tree"
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

resource "github_repository" "enarx-lset" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "lset"
  description  = "Data types describing linear sets"
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

resource "github_repository" "enarx-mmarinus" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "mmarinus"
  description  = "A safe mmap implementation"
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

resource "github_repository" "enarx-mmledger" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "mmledger"
  description  = "A ledger for confidential computing (CC) shims for tracking memory management system calls"
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

resource "github_repository" "enarx-nbytes" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "nbytes"
  description  = "Rust compile-time evaluation of byte unit conversions"
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

resource "github_repository" "enarx-noted" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "noted"
  description  = "Library for creating ELF notes"
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

resource "github_repository" "enarx-outreach" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "outreach"
  description  = "Outreach efforts for the Enarx project"
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

resource "github_repository" "enarx-outreachy" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "outreachy"
  description  = "Repo to receive contributions from Outreachy applicants"
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

resource "github_repository" "enarx-primordial" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "primordial"
  description  = "Low-level CPU primitives"
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

resource "github_repository" "enarx-rcrt1" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "rcrt1"
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

resource "github_repository" "enarx-sgx" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "sgx"
  description  = "Library for Intel SGX"
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

resource "github_repository" "enarx-snp" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "snp"
  description  = "Library for AMD SEV-SNP"
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

resource "github_repository" "enarx-spdx" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "spdx"
  description  = "GitHub Action that tests source code for SPDX license headers"
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

resource "github_repository" "enarx-testaso" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "testaso"
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

resource "github_repository" "enarx-try_enarx_dev" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "try.enarx.dev"
  description  = "Try Enarx"
  homepage_url = "https://try.enarx.dev"

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

resource "github_repository" "enarx-vdso" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "vdso"
  description  = "Rust crate for resolving Linux vDSO symbols"
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

resource "github_repository" "enarx-vfs" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "vfs"
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

resource "github_repository" "enarx-vscode-enarx" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "vscode-enarx"
  description  = "An extension for VS Code which provides support for Enarx & WebAssembly"
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

resource "github_repository" "enarx-wasi-tests" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "wasi-tests"
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

resource "github_repository" "enarx-website" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "website"
  description  = "Enarx Website"
  homepage_url = "https://enarx.dev"

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

resource "github_repository" "enarx-xsave" {
  provider = github.enarx

  lifecycle {
    prevent_destroy = true
  }
  archive_on_destroy = local.github_policy.archive_on_destroy

  name         = "xsave"
  description  = "An implementation of x86 XSave semantics"
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
