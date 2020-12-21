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
  "Return a pair of points for starting caret and ending bracket of next footnote in current buffer. If not found, return a list beginning with -2."
  (interactive)
  (let* (
	 (fn (check-for-next-fn))
	 (start (- fn 2))
	 (end (1+ (end-of-fn)) )
	 (results (list start end))
	 )
    ;; (print results)
    results
    ))

(defun get-all-inline-footnotes ()
  "Returns locations of all footnotes in buffer in reverse order."
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

;; utility function to look at footnotes
(defun inspect-footnote (pair)
  (let* ((start (car pair))
	 (end (car (cdr pair)))
	 (content (buffer-substring start end)))
    (print content)
    ))

;; utility function to make sure that I have the right coordinates for text plus markers.
(defun inspect-next-footnote ()
  (interactive)
  (inspect-footnote (find-next-inline-footnote)))

(defun extract-footnote (pair)
  (let* ((start (car pair))
	 (end (car (cdr pair)))
	 (content (buffer-substring-no-properties start end)))
    content
    ))

(defun extract-text (footnote)
  "Extract text part of footnote."
  (string-trim-right (string-trim-left footnote "\\^\\[") "]") )

;; utility function to make sure I clean footnote correctly (yes)
(defun inspect-clean-footnote ()
  (interactive)
  (let ((result (extract-text (extract-footnote (find-next-inline-footnote)))))
    (print result)
    ))

(defun enumerate-all-inline-footnotes ()
  "Extract all footnotes in buffer and enumerate them. Returns numbered list of footnotes in order of buffer."
  (interactive)
  (let* ((out)
	 (notelocs (get-all-inline-footnotes))
	 (num (length notelocs)))
    (dolist (item notelocs out)
      (setq out (cons (list num item) out))
      (setq num (1- num))
      )
   ; (print out)
    out
    ))

(defun place-endnote-at-point (enum-note)
  "Place an endnote, in pandoc format, at point. Does not add note marker to text."
  (let* ((num (car enum-note))
	 (pair (car (cdr enum-note)))
	 (note (extract-footnote pair))
	 (text (extract-text note))
	 (ref (format "[^%d]: %s" num text)))
    (insert ref)))

(defun place-endnotes (enum-notes)
  "Loops over list of enumerated footnotes, putting each at end of buffer. Does not add note markers to text."
  (save-excursion
    (end-of-buffer)
    (insert "\n\n")
    (dolist (elem enum-notes)
      (place-endnote-at-point elem)
      (insert "\n\n")
      )))

;; test function for putting all endnotes at bottom.
(defun experimental-add-endnotes ()
  (interactive)
  (let ((enum-notes (enumerate-all-inline-footnotes)))
    (place-endnotes enum-notes)
    ))

(defun replace-fn-with-marker (enum-note)
  "Takes an enumerated note, deletes the locations specified by it, and replaces with an endnote marker."
  (let* ((num (car enum-note))
	 (pair (car (cdr enum-note)))
	 (start (car pair))
	 (end (car (cdr pair)))
	 (marker (format "[^%d]" num)))
    (delete-region start end)
    (insert marker)))

(defun replace-footnotes-with-markers (enum-notes)
  "Replace all footnotes with markers, from reverse to keep buffer locations from changing."
  (let ((items (reverse )))
    (dolist (elem items)
      (replace-fn-with-marker elem)
	)))

(defun footnotes-to-endnotes ()
  (interactive)
  (let ((enum-notes (enumerate-all-inline-footnotes)))
    (place-endnotes enum-notes)
    (replace-footnotes-with-markers (enum-notes))))
