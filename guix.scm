; SPDX-License-Identifier: MPL-2.0
;; guix.scm — GNU Guix package definition for unified-dataset-vocab
;; Usage: guix shell -f guix.scm

(use-modules (guix packages)
             (guix build-system gnu)
             (guix licenses))

(package
  (name "unified-dataset-vocab")
  (version "0.1.0")
  (source #f)
  (build-system gnu-build-system)
  (synopsis "unified-dataset-vocab")
  (description "unified-dataset-vocab — part of the hyperpolymath ecosystem.")
  (home-page "https://github.com/hyperpolymath/unified-dataset-vocab")
  (license ((@@ (guix licenses) license) "MPL-2.0"
             "https://github.com/hyperpolymath/palimpsest-license")))
