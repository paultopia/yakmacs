(setq org-default-notes-file "~/Dropbox/org/inbox.org")
(setq org-capture-templates 
  '(("t" "Unfiled Task"  entry
    (file org-default-notes-file)
      "* TODO %?" :empty-lines 1)))

(setq org-agenda-files '("~/Dropbox/org/inbox.org"))

(add-to-list 'org-capture-templates
    '("r" "Rule of Law in USA Task"  entry
      (file "~/repos/rol_in_usa/task_inbox.org")
	"* TODO %?" :empty-lines 1))

(add-to-list 'org-agenda-files "~/repos/rol_in_usa/task_inbox.org" 'append)

(add-to-list 'org-capture-templates
    '("n" "Networked Leviathan Task"  entry
      (file "~/repos/networked-leviathan/task_inbox.org")
	"* TODO %?" :empty-lines 1))
(add-to-list 'org-agenda-files "~/repos/networked-leviathan/task_inbox.org" 'append)
