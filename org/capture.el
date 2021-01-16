(setq org-default-notes-file "~/Dropbox/org/inbox.org")
(setq org-capture-templates 
  '(("t" "Unfiled Task"  entry
    (file org-default-notes-file)
      "* TODO %?" :empty-lines 1)))

(setq org-agenda-files '("~/Dropbox/org/inbox.org"))

(setq rolusa_tasks "~/OneDrive - Northwestern University/tasks/rolusa_tasks.org")
(setq netlev_tasks "~/OneDrive - Northwestern University/tasks/netlev_tasks.org")

(add-to-list 'org-capture-templates
    '("r" "Rule of Law in USA Task"  entry
      (file rolusa_tasks)
	"* TODO %?" :empty-lines 1))

(add-to-list 'org-agenda-files rolusa_tasks 'append)

(add-to-list 'org-capture-templates
    '("n" "Networked Leviathan Task"  entry
      (file netlev_tasks)
	"* TODO %?" :empty-lines 1))
(add-to-list 'org-agenda-files netlev_tasks 'append)
