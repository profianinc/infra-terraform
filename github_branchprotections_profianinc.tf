
resource "github_branch_protection" "profianinc-steward-main" {
  provider = github.profianinc
  repository_id = github_repository.profianinc-steward.node_id

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
      "rust",
      "Conventional Commit Message Checker (Commisery)",
      "deny",
      "readme",
      "DCO",
      "nix fmt",
      "nix flake check",
      "native",
      "wasi",
      "build (ubuntu-latest, x86_64-unknown-linux-musl, ./result/bin/steward --help, docker load < ./res...",
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

resource "github_branch_protection" "profianinc-drawbridge-main" {
  provider = github.profianinc
  repository_id = github_repository.profianinc-drawbridge.node_id

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
      "Conventional Commit Message Checker (Commisery)",
      "DCO",
      "test",
      "rust",
      "build (ubuntu-latest, x86_64-unknown-linux-musl, ./result/bin/drawbridge --help, docker load < ./...",
      "nix fmt",
      "nix flake check",
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

resource "github_branch_protection" "profianinc-benefice-main" {
  provider = github.profianinc
  repository_id = github_repository.profianinc-benefice.node_id

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
      "rust",
      "test",
      "Conventional Commit Message Checker (Commisery)",
      "DCO",
      "build (ubuntu-latest, x86_64-unknown-linux-musl, ./result/bin/benefice --help, docker load < ./re...",
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

resource "github_branch_protection" "profianinc-infrastructure-main" {
  provider = github.profianinc
  repository_id = github_repository.profianinc-infrastructure.node_id

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
      "Conventional Commit Message Checker (Commisery)",
      "DCO",
      "build (nixosConfigurations.snp-equinix-try.config.system.build.toplevel)",
      "build (nixosConfigurations.sgx-equinix-try.config.system.build.toplevel)",
      "build (nixosConfigurations.nuc-1.config.system.build.toplevel)",
      "build (nixosConfigurations.benefice-testing.config.system.build.toplevel)",
      "shell (ubuntu-latest)",
      "nix",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = false
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = [
      "/puiterwijk",
      "/rvolosatovs",
    ]
    require_code_owner_reviews      = false
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "profianinc-nixpkgs-nixos-22_05" {
  provider = github.profianinc
  repository_id = github_repository.profianinc-nixpkgs.node_id

  pattern = "nixos-22.05"

  enforce_admins                  = false
  require_signed_commits          = false
  required_linear_history         = false
  require_conversation_resolution = true
  push_restrictions               = [
      "/puiterwijk",
      "/rvolosatovs",
    ]
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false

  required_status_checks {
    strict   = false
    contexts = [
      "manual",
      "build (linuxPackages_enarx.kernel, ubuntu-20.04)",
      "build (sgx-psw, ubuntu-20.04)",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = false
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    required_approving_review_count = 0
  }
}

resource "github_branch_protection" "profianinc-images-main" {
  provider = github.profianinc
  repository_id = github_repository.profianinc-images.node_id

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
      "DCO",
      "nix",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = false
    restrict_dismissals             = false
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    required_approving_review_count = 0
  }
}
