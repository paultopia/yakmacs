(straight-use-package 'anaconda-mode)
(straight-use-package 'company-anaconda)
(eval-after-load "company"
 '(add-to-list 'company-backends 'company-anaconda))
(add-hook 'python-mode-hook 'anaconda-mode)

(straight-use-package 'pyvenv)
(straight-use-package 'transient)
(straight-use-package 'poetry)
(require 'poetry)
(add-hook 'python-mode-hook 'poetry-tracking-mode)

(straight-use-package 'pipenv)
(require 'pipenv)
(add-hook 'python-mode-hook 'pipenv-mode)

(defun pipenv-full-activate ()
  "clean any previous pipenv environment, activate new one, span a shell, then spawn a python"
  (pipenv-deactivate)
  (pipenv-activate)
  (pipenv-shell)
  (run-python))
