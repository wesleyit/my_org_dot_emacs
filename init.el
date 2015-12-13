;;; init.el --- Where all the magic begins
;;
;; This file loads Org-mode and then loads the rest of our Emacs initialization from Emacs lisp
;; embedded in literate Org-mode files.

;; First, load the custom settings
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(load-file "~/.emacs.d/org-dotemacs.el")
(let 
  (find-file-hook) 
  (org-dotemacs-load-file ":enabled:" "~/.emacs.d/MyConfig.org"))

;;; init.el ends here
