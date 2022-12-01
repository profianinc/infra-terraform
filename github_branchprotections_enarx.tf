
resource "github_branch_protection" "enarx-flagset-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-flagset.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = false
  require_conversation_resolution = false
  push_restrictions               = [
      "enarx/bots",
    ]
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = [
      "beta (debug)",
      "beta (release)",
      "cargo clippy",
      "cargo fmt",
      "nightly (debug)",
      "nightly (release)",
      "stable (debug)",
      "stable (release)",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-enarx-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-enarx.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = true
  push_restrictions               = [
      "/enarxbot",
    ]
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = [
      "Conventional Commit Message Checker (Commisery)",
      "cargo clippy (enarx)",
      "cargo clippy (shim-sgx)",
      "cargo deny (enarx, ./Cargo.toml)",
      "cargo fmt (enarx)",
      "cargo fmt (shim-sgx)",
      "check-spdx-headers",
      "enarx build-only nightly default-features",
      "enarx build-only nightly gdb",
      "enarx kvm nightly debug",
      "enarx kvm nightly debug with dbg",
      "enarx kvm nightly release",
      "shim-sgx nightly debug",
      "shim-sgx nightly release",
      "enarx sgx nightly debug",
      "enarx sgx nightly debug with dbg",
      "enarx sgx nightly release",
      "shim-kvm nightly release",
      "shim-kvm nightly debug",
      "cargo fmt (shim-kvm)",
      "cargo clippy (shim-kvm)",
      "enarx sev nightly debug",
      "enarx sev nightly debug with dbg",
      "enarx sev nightly release",
      "cargo clippy (exec-wasmtime)",
      "cargo fmt (exec-wasmtime)",
      "exec-wasmtime nightly debug",
      "exec-wasmtime nightly release",
      "cargo clippy (sallyport)",
      "cargo fmt (sallyport)",
      "sallyport nightly debug",
      "sallyport nightly release",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-enarx-archive" {
  provider = github.enarx
  repository_id = github_repository.enarx-enarx.node_id

  pattern = "archive"

  enforce_admins                  = true
  require_signed_commits          = true
  required_linear_history         = true
  require_conversation_resolution = true
  push_restrictions               = []
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = []
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = true
    required_approving_review_count = 6
  }
}

resource "github_branch_protection" "enarx-enarx-chore_slash_rust-update-workflow" {
  provider = github.enarx
  repository_id = github_repository.enarx-enarx.node_id

  pattern = "chore/rust-update-workflow"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = false
  push_restrictions               = [
      "/enarxbot",
      "enarx/admin",
    ]
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false
}

resource "github_branch_protection" "enarx-enarx-chore_slash_cargo-update" {
  provider = github.enarx
  repository_id = github_repository.enarx-enarx.node_id

  pattern = "chore/cargo-update"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = false
  push_restrictions               = [
      "/platten",
      "/enarxbot",
    ]
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false
}

resource "github_branch_protection" "enarx-enarx-b0_4_z" {
  provider = github.enarx
  repository_id = github_repository.enarx-enarx.node_id

  pattern = "b0.4.z"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = false
  push_restrictions               = []
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_pull_request_reviews {
    dismiss_stale_reviews           = false
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-enarx-release_slash__wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-enarx.node_id

  pattern = "release/*"

  enforce_admins                  = false
  require_signed_commits          = true
  required_linear_history         = true
  require_conversation_resolution = false
  push_restrictions               = []
  allows_deletions                = true
  allows_force_pushes             = false
  blocks_creations                = false

  required_pull_request_reviews {
    dismiss_stale_reviews           = false
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-enarx-nix-update" {
  provider = github.enarx
  repository_id = github_repository.enarx-enarx.node_id

  pattern = "nix-update"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = false
  require_conversation_resolution = false
  push_restrictions               = []
  allows_deletions                = false
  allows_force_pushes             = true
  blocks_creations                = false
}

resource "github_branch_protection" "enarx-_github-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-_github.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = true
  push_restrictions               = []
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = []
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-iocuddle-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-iocuddle.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = false
  push_restrictions               = [
      "enarx/bots",
    ]
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = [
      "beta (debug)",
      "beta (release)",
      "cargo clippy",
      "cargo fmt",
      "nightly (debug)",
      "nightly (release)",
      "stable (debug)",
      "stable (release)",
      "cargo readme",
      "1.56.0 (debug)",
      "1.56.0 (release)",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-nbytes-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-nbytes.node_id

  pattern = "*"

  enforce_admins                  = true
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = false
  push_restrictions               = [
      "enarx/bots",
    ]
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = true
    contexts = [
      "beta (debug)",
      "beta (release)",
      "cargo clippy",
      "cargo fmt",
      "cargo readme",
      "nightly (debug)",
      "nightly (release)",
      "stable (debug)",
      "stable (release)",
      "1.56.0 (debug)",
      "1.56.0 (release)",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-crt0stack-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-crt0stack.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = false
  push_restrictions               = [
      "enarx/bots",
    ]
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = [
      "beta (release)",
      "cargo clippy",
      "cargo fmt",
      "cargo readme",
      "nightly (debug)",
      "nightly (release)",
      "stable (debug)",
      "stable (release)",
      "1.56.0 (debug)",
      "1.56.0 (release)",
      "beta (debug)",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-vdso-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-vdso.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = false
  push_restrictions               = [
      "enarx/bots",
    ]
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = [
      "beta (debug)",
      "beta (release)",
      "cargo clippy",
      "cargo fmt",
      "cargo readme",
      "nightly (debug)",
      "nightly (release)",
      "stable (debug)",
      "stable (release)",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-xsave-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-xsave.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = true
  push_restrictions               = [
      "enarx/bots",
    ]
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = [
      "cargo clippy",
      "cargo fmt",
      "cargo readme",
      "nightly (debug)",
      "nightly (release)",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-lset-main" {
  provider = github.enarx
  repository_id = github_repository.enarx-lset.node_id

  pattern = "main"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = false
  push_restrictions               = [
      "enarx/bots",
    ]
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = [
      "beta (debug)",
      "beta (release)",
      "cargo clippy",
      "cargo fmt",
      "cargo readme",
      "nightly (debug)",
      "nightly (release)",
      "stable (debug)",
      "stable (release)",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-mmarinus-main" {
  provider = github.enarx
  repository_id = github_repository.enarx-mmarinus.node_id

  pattern = "main"

  enforce_admins                  = true
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = true
  push_restrictions               = [
      "enarx/bots",
    ]
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = true
    contexts = [
      "cargo clippy",
      "cargo fmt",
      "cargo readme",
      "ubuntu-latest beta (debug)",
      "ubuntu-latest beta (release)",
      "ubuntu-latest nightly (debug)",
      "ubuntu-latest nightly (release)",
      "ubuntu-latest stable (debug)",
      "ubuntu-latest stable (release)",
      "macos-latest beta (debug)",
      "macos-latest beta (release)",
      "macos-latest nightly (debug)",
      "macos-latest nightly (release)",
      "macos-latest stable (release)",
      "macos-latest stable (debug)",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-primordial-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-primordial.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = true
  push_restrictions               = [
      "enarx/bots",
    ]
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = []
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-sgx-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-sgx.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = false
  push_restrictions               = [
      "enarx/bots",
    ]
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = [
      "cargo clippy",
      "cargo fmt",
      "cargo readme",
      "hw nightly debug *",
      "hw nightly release *",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-ciborium-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-ciborium.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = true
  push_restrictions               = [
      "enarx/bots",
    ]
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = []
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-rcrt1-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-rcrt1.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = true
  push_restrictions               = []
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = []
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-snp-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-snp.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = true
  push_restrictions               = []
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = [
      "cargo clippy",
      "cargo fmt",
      "cargo readme",
      "check-spdx-headers",
      "sw nightly debug",
      "sw stable debug",
      "sw nightly release",
      "sw stable release",
      "sw beta debug",
      "sw beta release",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-noted-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-noted.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = true
  push_restrictions               = []
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = []
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-website-main" {
  provider = github.enarx
  repository_id = github_repository.enarx-website.node_id

  pattern = "main"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = false
  push_restrictions               = []
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = true
    contexts = [
      "netlify/enarx/deploy-preview",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = false
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-website-staging" {
  provider = github.enarx
  repository_id = github_repository.enarx-website.node_id

  pattern = "staging"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = false
  push_restrictions               = []
  allows_deletions                = false
  allows_force_pushes             = true
  blocks_creations                = false
}

resource "github_branch_protection" "enarx-mmledger-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-mmledger.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = true
  push_restrictions               = []
  allows_deletions                = false
  allows_force_pushes             = true
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = [
      "cargo clippy",
      "cargo fmt",
      "cargo readme",
      "stable (debug)",
      "stable (release)",
      "beta (debug)",
      "beta (release)",
      "nightly (release)",
      "nightly (debug)",
      "1.57.0 (debug)",
      "1.57.0 (release)",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-testaso-main" {
  provider = github.enarx
  repository_id = github_repository.enarx-testaso.node_id

  pattern = "main"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = true
  push_restrictions               = []
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = []
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-cryptle-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-cryptle.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = false
  push_restrictions               = []
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = [
      "build",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = false
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-codex-main" {
  provider = github.enarx
  repository_id = github_repository.enarx-codex.node_id

  pattern = "main"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = true
  push_restrictions               = []
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = [
      "build (cryptle-rust)",
      "build (fibonacci-rust)",
      "build (fibonacci-zig)",
      "build (fibonacci-c)",
      "build (fibonacci-cpp)",
      "build (fibonacci-go)",
      "build (chat-client-rust)",
      "build (chat-server-rust)",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = false
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-GreenhouseMonitor-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-GreenhouseMonitor.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = false
  push_restrictions               = []
  allows_deletions                = false
  allows_force_pushes             = true
  blocks_creations                = false
}

resource "github_branch_protection" "enarx-vscode-enarx-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-vscode-enarx.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = true
  push_restrictions               = []
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_pull_request_reviews {
    dismiss_stale_reviews           = false
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-vfs-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-vfs.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = true
  push_restrictions               = []
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = []
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "enarx-wasi-tests-_wild_" {
  provider = github.enarx
  repository_id = github_repository.enarx-wasi-tests.node_id

  pattern = "*"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = true
  require_conversation_resolution = true
  push_restrictions               = []
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = []
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}
