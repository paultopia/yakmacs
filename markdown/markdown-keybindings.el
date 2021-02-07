(mode-binding 
:keymaps 'markdown-mode-map
"v" 'markdown-toggle-markup-hiding
"h" '(:ignore t :which-key "Headers")
"ha" 'markdown-insert-header-dwim
"hp" 'pg-add-parent-header
"hc" 'pg-add-child-header
"hf" 'markdown-cycle
"hu" '(markdown-promote :which-key "Upshhift Header Subtree")
"hd" '(markdown-demote :which-key "Downshift Header Subtree") 
"n" '(:ignore t :which-key "Notes (Footnotes and Cites)")
"nv" '(origami-toggle-all-nodes :which-key "Toggle visibility of all cites and footnotes")
"nn" '(origami-toggle-node :which-key "Toggle visibility of note at point")
"s" '(:ignore t :which-key "Spell checking")
"ss" '(full-spellcheck :which-key "Mark and correct buffer")
"sm" '(flyspell-mode :which-key "Spellcheck on the fly")
"sb" '(flyspell-buffer :which-key "Mark spelling errors")
"sc" '(correct-marked-spelling-errors :which-key "Correct marked errors")
"sw" '(flyspell-word :which-key "Check spelling of word")
"sf" '(flyspell-correct-word-before-point :which-key "Correct marked word")
"o" '(:ignore t :which-key "Outline movement (Headers and Lists)")
"on" '(markdown-outline-next-same-level :which-key "Next item (same level)")
"op" '(markdown-outline-previous-same-level :which-key "Prev item (same level)")
"of" '(markdown-outline-next :which-key "Next item (any level)")
"ob" '(markdown-outline-previous :which-key "Prev item (any level)")
"ou" '(markdown-outline-up :which-key "Up to parent item")
"p" '(:ignore t :which-key "Pandoc conversions")
"pa" '(add-letterhead-address-block :which-key "Dummy Address Block for Letterhead")
"pl" '(pandoc-make-letterhead-from-buffer  :which-key "Convert Buffer to Letterhead")
"pi" '(add-default-pandoc-block :which-key "Add Pandoc Metadata")
"pp" '(pandoc-base  :which-key "Convert Buffer to Pandoc Basic (Non-Research)")
"pr" '(pandoc-research  :which-key "Convert Buffer With Pandoc for Research")
"pp" '(pandoc-bluebook :which-key "Convert Buffer to Pandoc Bluebook")
)
