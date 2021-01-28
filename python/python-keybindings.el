(mode-binding 
:keymaps 'python-mode-map
"c" 'company-complete
"s" '(:ignore t :which-key "Talk to Interpreter")
"ss" '(run-python :which-key "Spawn Interpreter")
"sr" 'python-shell-send-region
"sl" 'python-shell-send-statement
"sb" 'python-shell-send-buffer
"o" '(:ignore t :which-key "Poetry")
"op" 'poetry
"oa" 'poetry-add-dep
"oi" 'poetry-install-install
"on" 'poetry-new
"v" '(:ignore t :which-key "Pipenv")
"va" 'pipenv-activate
"vd" 'pipenv-deactivate
"vs" 'pipenv-shell
"vi" 'pipenv-install
"i" '(:ignore t :which-key "Indententation")
"il" 'python-indent-shift-left
"ir" 'python-indent-shift-right
)
