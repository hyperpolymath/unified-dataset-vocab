;; SPDX-License-Identifier: AGPL-3.0-or-later
;; ECOSYSTEM.scm - Ecosystem relationships for rsr-template-repo
;; Media-Type: application/vnd.ecosystem+scm

(ecosystem
  (version "1.0.0")
  (name "rsr-template-repo")
  (type "library")  ;; or: application, tool, specification, template
  (purpose "Hyperpolymath ecosystem component")

  (position-in-ecosystem
    "Part of the hyperpolymath ecosystem of 500+ repositories "
    "following Rhodium Standard Repository (RSR) conventions.")

  (related-projects
    ;; Examples - customize based on actual relationships:
    ;; (sibling-standard "rsr-template-repo" "Template for new repos")
    ;; (dependency "hypatia" "Security scanning")
    ;; (consumer "gitbot-fleet" "Quality enforcement")
    )

  (what-this-is
    "A component of the hyperpolymath ecosystem. "
    "[TODO: Add specific description]")

  (what-this-is-not
    "This is not a standalone project - it integrates with "
    "the broader hyperpolymath tooling ecosystem."))
