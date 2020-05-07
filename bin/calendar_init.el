(add-to-list 'load-path "~/etc/org-journal/")

(setq org-agenda-files '("~/org")
      org-journal-dir "~/org/journal"
      org-journal-enable-agenda-integration t
      org-icalendar-store-UID t
      org-icalendar-include-todo "all"
      org-icalendar-combined-agenda-file "~/org/calendar/org-journal.ics"
      org-icalendar-use-deadline '(event-if-todo event-if-not-todo todo-due)
      org-icalendar-use-scheduled '(todo-start event-if-todo event-if-not-todo))

(require 'org-journal)

(org-journal-update-org-agenda-files)
(org-icalendar-combine-agenda-files)
(save-buffers-kill-emacs t))
