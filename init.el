;;; init.el --- Where all the magic begins
;;
;; This file loads Org-mode and then loads the rest of our Emacs initialization from Emacs lisp
;; embedded in literate Org-mode files.

;; First, load the custom settings
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; Then, load orgmode to be able to parse the config
(setq orgmode "~/.emacs.d/org-dotemacs.el")
(load orgmode)

;; And finally generate the config.el from the config.org
(setq config-org "~/.emacs.d/MyConfig.org")
(setq config-el "~/.emacs.d/MyConfig.el")
(let 
  (find-file-hook) 
  (org-dotemacs-load-file ":enabled:" config-org config-el))

;;; init.el ends here
