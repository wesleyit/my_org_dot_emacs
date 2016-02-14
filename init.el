;;; init.el --- Where all the magic begins
;;
;; This file loads Org-mode and then loads the rest of our Emacs initialization from Emacs lisp
;; embedded in literate Org-mode files.

;; First, load the custom settings
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; Then, load the use-package utility with the
;; newest org-mode and org-dotemacs
(setq package-archives 
  '(("gnu" . "http://elpa.gnu.org/packages/")
    ("marmalade" . "http://marmalade-repo.org/packages/")
    ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(use-package org :ensure t)
(use-package org-dotemacs :ensure t)

;; And finally generate the config.el from the config.org
(setq config-org "~/.emacs.d/MyConfig.org")
(setq config-el "~/.emacs.d/MyConfig.el")
(let 
  (find-file-hook) 
  (org-dotemacs-load-file ":enabled:" config-org config-el))

;;; init.el ends here
