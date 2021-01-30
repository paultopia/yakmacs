(mode-binding 
:states '(normal motion)
:keymaps 'clojure-mode-map
"s" '(:ignore t :which-key "Talk to REPL")
"ss" '(cider-jack-in :which-key "Spawn REPL")
"sb" '(cider-load-buffer :which-key "Load and eval entire buffer")
"se" 'cider-eval-last-sexp-to-repl
"sr" 'cider-eval-region
"sf" 'cider-eval-defun-at-point
"p" '(:ignore t :which-key "Project-wide commands")
"pl" '(cider-load-all-files :which-key "Load every file in directory")
"pr" 'cider-ns-refresh
"h" '(:ignore t :which-key "Help")
"hl" 'cider-doc
"hd" 'cider-clojuredocs
)
