;; SPDX-License-Identifier: AGPL-3.0-or-later
;; STATE.scm - Project state tracking for rsr-template-repo
;; Media-Type: application/vnd.state+scm

(define-state rsr-template-repo
  (metadata
    (version "0.1.0")
    (schema-version "1.0.0")
    (created "2026-01-30")
    (updated "2026-01-30")
    (project "rsr-template-repo")
    (repo "hyperpolymath/rsr-template-repo"))

  (project-context
    (name "rsr-template-repo")
    (tagline "Hyperpolymath ecosystem project")
    (tech-stack ()))

  (current-position
    (phase "initialization")
    (overall-completion 5)
    (components ())
    (working-features ()))

  (route-to-mvp
    (milestones
      ((name "Initial Setup")
       (status "in-progress")
       (completion 50)
       (items
         ("Initialize repository structure" . done)
         ("Add standard workflows" . done)
         ("Define project scope" . todo)
         ("Set up development environment" . todo)))))

  (blockers-and-issues
    (critical ())
    (high ())
    (medium ())
    (low ()))

  (critical-next-actions
    (immediate
      "Define project scope and objectives"
      "Update README.adoc with project description")
    (this-week
      "Set up development environment"
      "Create initial architecture design")
    (this-month
      "Implement core functionality"
      "Add comprehensive tests"))

  (session-history ()))

;; Helper functions
(define (get-completion-percentage state)
  (current-position 'overall-completion state))

(define (get-blockers state severity)
  (blockers-and-issues severity state))

(define (get-milestone state name)
  (find (lambda (m) (equal? (car m) name))
        (route-to-mvp 'milestones state)))
