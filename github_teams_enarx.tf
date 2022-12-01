resource "github_team" "enarx-owners" {
  provider = github.enarx

  name = "owners"
  description = "Crate.io release team"
  privacy = "closed"
}

resource "github_team" "enarx-admin" {
  provider = github.enarx

  name = "admin"
  description = ""
  privacy = "closed"
}

resource "github_team" "enarx-bots" {
  provider = github.enarx

  name = "bots"
  description = ""
  privacy = "closed"
}

resource "github_team" "enarx-codeowners" {
  provider = github.enarx

  name = "codeowners"
  description = "Enarx Org CODEOWNERS / Super-reviewers"
  privacy = "closed"
}

resource "github_team" "enarx-codexteam" {
  provider = github.enarx

  name = "codexteam"
  description = ""
  privacy = "closed"
}

resource "github_team" "enarx-documentation" {
  provider = github.enarx

  name = "documentation"
  description = ""
  privacy = "closed"
}

resource "github_team" "enarx-members" {
  provider = github.enarx

  name = "members"
  description = ""
  privacy = "closed"
}

resource "github_team" "enarx-reviews" {
  provider = github.enarx

  name = "reviews"
  description = ""
  privacy = "closed"
}
