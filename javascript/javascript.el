(straight-use-package 'js2-mode)
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(straight-use-package 'js2-refactor)
(straight-use-package 'xref-js2)
(require 'js2-refactor)
(require 'xref-js2)

(add-hook 'js2-mode-hook #'js2-refactor-mode)

(straight-use-package 'web-mode)

(straight-use-package 'vue-mode)
(add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))

(add-hook 'mmm-mode-hook
          (lambda ()
            (set-face-background 'mmm-default-submode-face nil)))
