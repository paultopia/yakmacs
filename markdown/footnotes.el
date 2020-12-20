(defun end-of-fn ()
  "Assumes point is at beginning of fn bracket, jumps to end and returns value of point. Depends on smartparens."
  (sp-end-of-sexp)
  (point)
  )


;works
(defun find-next-inline-footnote ()
  "Return a pair of points for starting caret and ending bracket of next footnote in current buffer."
  (interactive)
  (let* (
	 (fn (search-forward "^["))
	 (start (1- fn))
	 (end (end-of-fn))
	 (results (list start end))
	 )
    (print results)
    results
    ))
