(mode-binding 
:states '(normal motion)
:keymaps 'swift-mode-map
"s" '(:ignore t :which-key "Talk to REPL")
"ss" '(run-swift :which-key "Spawn REPL"))
