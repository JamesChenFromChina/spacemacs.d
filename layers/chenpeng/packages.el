;;; packages.el --- chenpeng layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: ChenPeng <chenpeng@CPVM1604>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `chenpeng-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `chenpeng/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `chenpeng/pre-init-PACKAGE' and/or
;;   `chenpeng/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst chenpeng-packages
  '(
    protobuf-mode
    bazel-mode
    dockerfile-mode
    zenburn-theme
    )
  "The list of Lisp packages required by the chenpeng layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

(defun chenpeng/init-protobuf-mode()
  (use-package chenpeng
    :defer t
    :commands (protobuf-mode)
    :init
    (progn
      ;; (add-hook 'c-mode-hook 'protobuf-mode)
      ;; (add-hook 'c++-mode-hook 'protobuf-mode)
    )
  )
)

(defun chenpeng/init-bazel-mode()
  (use-package chenpeng
    :defer t
    :commands (bazel-mode)
    :init
    (progn
      )
    )
  )

(defun chenpeng/init-dockerfile-mode()
  (use-package chenpeng
    :defer t
    :commands (dockerfile-mode)
    :init
    (progn
      )
    )
  )

(defun chenpeng/init-zenburn-theme()
  (use-package chenpeng
    :defer t
    :init
    (progn
      )
    )
  )
;;; packages.el ends here
