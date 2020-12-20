; works
(defun find-next-inline-footnote ()
  "Return a pair of points for starting caret and ending bracket of next footnote in current buffer."
  (interactive)
  (let* (
	 (fn (search-forward "^["))
	 (start (1- fn))
	 )
    (sp-end-of-sexp)
    ))
