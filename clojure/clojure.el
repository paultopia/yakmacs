(straight-use-package 'cider)
(straight-use-package 'clojure-mode)

(straight-use-package 'flycheck-clj-kondo)
(require 'flycheck-clj-kondo)

(straight-use-package 'clj-refactor)
(require 'clj-refactor)

(defun activate-clj-refactor-h ()
    (clj-refactor-mode 1)
    (yas-minor-mode 1))

(add-hook 'clojure-mode-hook #'activate-clj-refactor-h)
