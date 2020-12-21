(defun end-of-fn ()
  "Assumes point is at beginning of fn bracket, jumps to end and returns value of point. Depends on smartparens."
  (sp-end-of-sexp)
  (point)
  )

(defun check-for-next-fn ()
  (interactive)
  (let ((fn (search-forward "^[" nil t)))
    (if fn
       fn
       0
	)))

(defun find-next-inline-footnote ()
  "Return a pair of points for starting caret and ending bracket of next footnote in current buffer. If not found, return a list beginning with -1."
  (interactive)
  (let* (
	 (fn (check-for-next-fn))
	 (start (1- fn))
	 (end (end-of-fn))
	 (results (list start end))
	 )
    ;; (print results)
    results
    ))

(defun get-all-inline-footnotes ()
  "gets locations of all footnotes in buffer"
  (interactive)
  (save-excursion
    (beginning-of-buffer)
    (let ((curnote)
	  (results)
	  (curpoint 0))
      (while (>= curpoint 0)
	(setq curnote (find-next-inline-footnote))
	(setq curpoint (car curnote))
	(if (>= curpoint 0)
	    (setq results (cons curnote results))
	    )
	)
      (print results)
      results
      ))
  )

