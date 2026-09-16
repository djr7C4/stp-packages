;; Run Emacs with
;;
;; emacs -Q -l <path-to-this-file>
;;
;; to use subtree-package to modify this repository.

(setq stp-source-directory "~/Code/elisp/stp-packages/package-source"
      stp-info-file (expand-file-name "../stp-pkg-info.eld" stp-source-directory))

(require 'stp-locked (expand-file-name "subtree-package/stp-locked.el" stp-source-directory))
(require 'stp-bootstrap (expand-file-name "subtree-package/stp-bootstrap.el" stp-source-directory))

;; Add installed packages to the load path.
(stp-update-load-paths)

(require 'stp)

;; Improve performance by adding various variables to
;; `savehist-additional-variables' in order to avoid repeating expensive
;; computations.
(require 'savehist)

;; The order of these calls is important.
(savehist-mode 1)
(stp-setup)

(keymap-global-set "C-c o" #'stp-find-package)
(keymap-global-set "C-c P" #'stp-list)
