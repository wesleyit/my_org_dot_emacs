;;; init.el --- Where all the magic begins
;;
;; This file loads Org-mode and then loads the rest of our Emacs initialization from Emacs lisp
;; embedded in literate Org-mode files.

;; First, load the custom settings
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(load-file "~/.emacs.d/org-dotemacs.el")
(org-dotemacs-load-file "~/.emacs.d/my_emacs_config.org" "")

;;; init.el ends here
