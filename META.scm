;; SPDX-License-Identifier: AGPL-3.0-or-later
;; META.scm - Architectural decisions and project meta-information
;; Media-Type: application/meta+scheme

(define-meta rsr-template-repo
  (version "1.0.0")

  (architecture-decisions
    ;; ADR format: (adr-NNN status date context decision consequences)
    ((adr-001 accepted "2026-01-30"
      "Need to establish repository structure and standards"
      "Adopt RSR (Rhodium Standard Repository) conventions from rsr-template-repo"
      "Ensures consistency with 500+ repos in hyperpolymath ecosystem. "
      "Enables automated quality enforcement via gitbot-fleet and Hypatia.")))

  (development-practices
    (code-style
      "Follow hyperpolymath language policy: "
      "Prefer ReScript, Rust, Gleam, Elixir. "
      "Avoid TypeScript, Go, Python per RSR.")
    (security
      "All commits signed. "
      "Hypatia neurosymbolic scanning enabled. "
      "OpenSSF Scorecard tracking.")
    (testing
      "Comprehensive test coverage required. "
      "CI/CD runs on all pushes.")
    (versioning
      "Semantic versioning (semver). "
      "Changelog maintained in CHANGELOG.md.")
    (documentation
      "README.adoc for overview. "
      "STATE.scm for current state. "
      "ECOSYSTEM.scm for relationships.")
    (branching
      "Main branch protected. "
      "Feature branches for new work. "
      "PRs required for merges."))

  (design-rationale
    (why-rsr
      "RSR provides standardized structure across 500+ repos, "
      "enabling automated tooling and consistent developer experience.")
    (why-hypatia
      "Neurosymbolic security scanning combines neural pattern recognition "
      "with symbolic reasoning for fast, deterministic security checks.")))
