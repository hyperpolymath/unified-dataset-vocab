;; SPDX-License-Identifier: PMPL-1.0-or-later
(ecosystem
  (metadata
    (version "0.1.0")
    (last-updated "2026-03-02"))
  (project
    (name "unified-dataset-vocab")
    (purpose "Formal vocabulary definitions and taxonomies for describing datasets across the hyperpolymath ecosystem")
    (role vocabulary-standard))
  (related-projects
    (sibling "a2ml" "AI markup language consuming these vocabulary definitions")
    (sibling "rhodium-standard-repositories" "RSR compliance framework")
    (consumer "nextgen-databases" "Databases using dataset vocabulary for schema annotations")))
