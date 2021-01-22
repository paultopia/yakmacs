
; all this stuff is to set up a keybinding for elisp delimiters in my org file

(defvar in-config-file nil)

(defun add-lisp-delimiters ()
  (interactive)
  (if in-config-file
    (insert "#+BEGIN_SRC emacs-lisp

#+END_SRC")
    nil))

; stop nagging me about making the variable safe 

(put 'in-config-file 'safe-local-variable #'booleanp)

; load all the rest of my config

(org-babel-load-file "~/.emacs.d/readme.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (evil)))
 '(safe-local-variable-values (quote ((in-config-file . t))))
 '(which-key-max-description-length 50))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "dark orange"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "deep pink"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "forest green"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "firebrick3"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "orchid"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "spring green"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "sienna1")))))
