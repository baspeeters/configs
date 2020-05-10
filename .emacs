;; Disable warning
;; TODO Find out which libraries use these things
(eval-when-compile
  (defvar oauth--token-data ())
  (defvar url-http-method ())
  (defvar url-http-data ())
  (defvar url-http-extra-headers ())
  (defvar url-callback-function ())
  (defvar url-callback-arguments ()))


;; Packages
(setq package-archives
'(
  ("org" . "https://orgmode.org/elpa/")
  ("gnu-elpa" . "https://elpa.gnu.org/packages/")
  ("melpa" . "https://melpa.org/packages/")
))

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(setq package-list '(use-package
                      centaur-tabs
                      company
                      diff-hl
                      hyperbole
                      magit
                      oauth2
                      org-caldav
                      org-journal
                      projectile
                      tramp
                      vdirel
                      yasnippet))

(require 'package)
(setq package-enable-at-startup nil)
(package-initialize)
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-refresh-contents)
    (package-install package))
  (require 'package))


; Customization
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(annotate-annotation-position-policy :by-length\ :margin)
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(ansi-term-color-vector
   [unspecified "#1d2021" "#fb4934" "#b8bb26" "#fabd2f" "#83a598" "#d3869b" "#83a598" "#d5c4a1"])
 '(custom-enabled-themes (quote (bas)))
 '(custom-safe-themes
   (quote
    ("a3cdc9c76eb134429f85a3ca7b9601d20093048f8972c51d2e0e5a45fdef8296" "0e76a7d536d71897377b1f2f0d0df669f4bd9eb5c701a2c59c26cb67e36042dd" "6c7033908b33d8638f16e8d3f20e800f6dd0a15f9e1fc5b25dac6e9a1826e082" "cc1b9669ed643e069c0bce3f7ceeb73476661df4ba3c1c4bfb835bc19b17732a" "0f5cebcafc8463d1abc52917c7060499ce0c037989ae635c493945db3e5c0dda" "3701e6bfedf6f8c722cdf496878af3cf06abb3749e4a01f2e2c8131568828381" "1582f304d2d565e16c7b8768ca330e53a7f82514b25116f1ab1f898ef152c6e8" "7e584689e869665058f372aca8fde1f4c92974ecf7cead231d4a1b96a1ab1797" "6901580e6a62b73f991204ad57cb081287e2c7eb846543d969ba8e47dcbda0f6" "fc9da46f9f157b5ed690691d0e1916ec2200648e3e51b4e0c96d3df9af163d6c" "c67f741390ec8e5a056af9bccdbb538bc50f96d7147d2ad0251a1622186741fe" "9e5321526345938734ea272e5ad201f22d9eb332449a0a8d048c6d75673b8434" "171c1c7a4499122b13252db53f418da8c52cce16adebbeda21160b8f19caaa0c" "45392b8dfaf7f777c48ab1e763d7802775299220d9813513542ab8e17d954fd6" "e854e4d59877ff204279071e78866faa84ef4d175972c7facd346b482d98226f" "a77c2710eacb65dbb8c327df6e60b445f69b65f77798355844fc45d7ccecb62f" "ab9f53d95c52141ae6f5f3110e8cef72b01c7c6f76afe7f8e2497136ab975121" "7f91cba0da1a395a34aafac3427c3815004cb1d70dea91a24d05665d44149504" "2643ddeb911b38fd233cd6625d04d98d22cb871d0a783d0303d2aef3584df7a4" "e7029f56abc78eaedf52c16a58608794a611061028c53322e818133c5b2083a1" "d38b8b2a023a2dfbbe5fa0aec32ad84ac1207f94045dc8dcf60517c4399bc1db" "a9752466f6983a9b4320f24f97ae0e1f9c3019d3faddec0e4483a464c89c4fce" "32986ac6a6a9b1abe872ba95a6c1c0c899a317a03dc09a976a0f035692567d29" "51bd2f47dbb2dabe0a061f2a017182cdc94a0a70b421f0604264d1b0904f0ba6" "4aeb270d1e6c69daba11cecf816f242f3e94d40d88d8bff4a0773092604ed6b8" "8365f257ac11c98d94c37731c8b5fe63569c3b7ccd5b8593ab9fecd624410e80" "acab2b248fc40a1b979e71873422531681259bfb0beab69c53f0d0c9b59ea4f6" "dc594e589d7927c234c35de25a355203ab702008494cbd5213a9f17458411d85" "cb9f879ffc4006bab31dba5a437194a0b1b922663ea31ee046a5950c0d6ca459" "59ba50f24540958f33699a5247255d10f34dd812f3975837e3eddccdc4caa32e" "80930c775cef2a97f2305bae6737a1c736079fdcc62a6fdf7b55de669fbbcd13" "6145e62774a589c074a31a05dfa5efdf8789cf869104e905956f0cbd7eda9d0e" "f66abed5139c808607639e5a5a3b5b50b9db91febeae06f11484a15a92bde442" "50ff65ab3c92ce4758cc6cd10ebb3d6150a0e2da15b751d7fbee3d68bba35a94" "d2bd16a8bcf295dce0b70e1d2b5c17bb34cb28224a86ee770d56e6c22a565013" "bc4c89a7b91cfbd3e28b2a8e9e6750079a985237b960384f158515d32c7f0490" "c614d2423075491e6b7f38a4b7ea1c68f31764b9b815e35c9741e9490119efc0" "b3bcf1b12ef2a7606c7697d71b934ca0bdd495d52f901e73ce008c4c9825a3aa" "8e79884e89740cf6b7e0210f52e4ac995dc1f1a9a17151bfcfb4d660757a011b" "bcd0237b2a5b7897e482458cc62c4f3fa3d9d7f9a9667338e67d4c7a8e009819" "454c1c9ce70f7d807c51c890910365fd3c64a9e63f596511e9ff57dd97bbeea8" "03cc0972581c0f4c8ba3c10452cb6d52a9f16123df414b917e06445c5fdbe255" "4feee83c4fbbe8b827650d0f9af4ba7da903a5d117d849a3ccee88262805f40d" "6daa09c8c2c68de3ff1b83694115231faa7e650fdbb668bc76275f0f2ce2a437" "196df8815910c1a3422b5f7c1f45a72edfa851f6a1d672b7b727d9551bb7c7ba" "fede08d0f23fc0612a8354e0cf800c9ecae47ec8f32c5f29da841fe090dfc450" "1263771faf6967879c3ab8b577c6c31020222ac6d3bac31f331a74275385a452" "ed4c48eb91d07c2e447b445e2491ef17e9b326d43a60022297fd56af4749e772" "99c86852decaeb0c6f51ce8bd46e4906a4f28ab4c5b201bdc3fdf85b24f88518" "4a91a64af7ff1182ed04f7453bb5a4b0c3d82148d27db699df89a5f1d449e2a4" default)))
 '(fci-rule-color "#111111")
 '(global-git-gutter-mode t)
 '(org-agenda-files (quote ("~/org/")))
 '(org-drill-done-count-color "#663311")
 '(org-drill-failed-count-color "#880000")
 '(org-drill-mature-count-color "#005500")
 '(org-drill-new-count-color "#004488")
 '(package-selected-packages
   (quote
    (hyperbole oauth2 org-oauth2 org-oauth org-caldav org-pomodoro plantuml-mode company-php centaur-tabs yasnippet-snippets yasnippet phpunit php-mode ggtags typescript-mode treemacs diff-hl magit org-ref org-journal eziam-theme parchment-theme vue-mode base16-theme company)))
 '(pdf-view-midnight-colors (quote ("#ffffff" . "#000000")))
 '(tempo-insert-region t)
 '(tempo-interactive t)
 '(vc-annotate-background "#111111"))


;; -*- mode: elisp -*-

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen 0)

;; Enable transient mark mode
(transient-mark-mode 1)

;; Spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Highlight current line
;(highlight-changes-mode 1)
;(hl-line-mode 1)


;;;;Org mode configuration
;; Enable Org mode
(require 'org)
;; Make Org mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-agenda-files '("~/org"))


;; Journal mode
(setq org-journal-dir "~/org/journal/"
      org-journal-enable-agenda-integration t)
(require 'org-journal)



;; Contacts
(setq vdirel-repository "~/org/contacts/default")


;;;; gtags configuration
;(require 'ggtags)
;(global-set-key "\M-t" 'gtags-find-tag)
;(global-set-key "\M-r" 'gtags-find-rtag)
;(global-set-key "\M-s" 'gtags-find-symbol)
;(global-set-key "\C-t" 'gtags-pop-stack)


;;;; Window split toggle configuration
(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
         (next-win-buffer (window-buffer (next-window)))
         (this-win-edges (window-edges (selected-window)))
         (next-win-edges (window-edges (next-window)))
         (this-win-2nd (not (and (<= (car this-win-edges)
                     (car next-win-edges))
                     (<= (cadr this-win-edges)
                     (cadr next-win-edges)))))
         (splitter
          (if (= (car this-win-edges)
             (car (window-edges (next-window))))
          'split-window-horizontally
        'split-window-vertically)))
    (delete-other-windows)
    (let ((first-win (selected-window)))
      (funcall splitter)
      (if this-win-2nd (other-window 1))
      (set-window-buffer (selected-window) this-win-buffer)
      (set-window-buffer (next-window) next-win-buffer)
      (select-window first-win)
      (if this-win-2nd (other-window 1))))))

(global-set-key (kbd "C-x |") 'toggle-window-split)


;;;; WindMove configuration
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)



;;;; Org capture
(setq org-default-notes-file "~/org/refile.org")
(setq org-refile-targets '((org-agenda-files :maxlevel  . 6)))
;;;; Footnotes
(setq org-footnote-define-inline +1)
(setq org-footnote-auto-label 'random)
(setq org-footnote-auto-adjust nil)
(global-set-key (kbd "C-c f") 'org-footnote-new)

;; I use C-c c to start capture mode
(global-set-key (kbd "C-c c") 'org-capture)

;; Capture templates for: TODO tasks, Notes, appointments, phone calls, meetings, and org-protocol
(setq org-capture-templates
      (quote (("t" "todo" entry (file "~/org/refile.org")
               "* TODO %?\n%U\n%a\n" :clock-in t :clock-resume t)
              ("r" "respond" entry (file "~/org/refile.org")
               "* NEXT Respond to %:from on %:subject\nSCHEDULED: %t\n%U\n%a\n" :clock-in t :clock-resume t :immediate-finish t)
              ("n" "note" entry (file "~/org/refile.org")
               "* %? :NOTE:\n%U\n%a\n" :clock-in t :clock-resume t)
              ("j" "Journal" entry (file+datetree "~/org/diary.org")
               "* %?\n%U\n" :clock-in t :clock-resume t)
              ("w" "org-protocol" entry (file "~/org/refile.org")
               "* TODO Review %c\n%U\n" :immediate-finish t)
              ("m" "Meeting" entry (file "~/org/refile.org")
               "* MEETING with %? :MEETING:\n%U" :clock-in t :clock-resume t)
              ("p" "Phone call" entry (file "~/org/refile.org")
               "* PHONE %? :PHONE:\n%U" :clock-in t :clock-resume t)
              ("h" "Habit" entry (file "~/org/refile.org")
               "* NEXT %?\n%U\n%a\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a .+1d/3d>>\")\n:PROPERTIES:\n:STYLE: habit\n:REPEAT_TO_STATE: NEXT\n:END:\n"))))





;;;; Misc
;; Disable system beep
(setq visible-bell 1)
;; Save sessions
;(desktop-save-mode 1)
;;; Autocomplete
(add-hook 'after-init-hook 'global-company-mode)

(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (ditaa . t)
   (dot . t)
   (plantuml . t)))

(setq org-src-tab-acts-natively 0)
(defun indent-org-block-automatically ()
  (when (org-in-src-block-p)
   (org-edit-special)
    (indent-region (point-min) (point-max))
    (org-edit-src-exit)))

;(run-at-time 1 10 'indent-org-block-automatically)



;; PlantUML
(setq plantuml-jar-path "/usr/share/plantuml/plantuml.jar")
(setq org-plantuml-jar-path "/usr/share/plantuml/plantuml.jar")



;; Disable menu bar and scroll bar
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; Enable text wrapping
(add-hook 'org-mode-hook 'toggle-word-wrap)

;; Show result image after code block eval
(define-key org-mode-map (kbd "C-c C-c")
  (lambda () (interactive)
    (org-ctrl-c-ctrl-c)
    (org-display-inline-images)))




;; Auto-commit
(defun auto-commit ()
  "Create an automated commit"
  (when (or (eq major-mode 'org-mode) (eq major-mode 'org-journal-mode))
    (interactive)
    (require 'magit)
    (message "Auto commit")
    (magit-call-git "add" "-A")
    (magit-call-git "commit" "-m" "Auto-commit")))

(add-hook 'after-save-hook 'auto-commit)


;; Programming modes
(define-minor-mode dev-mode
  "Developer Mode"
  :init-value nil
  :lighter "Dev"
  :group 'dev
  :keymap
  '(([C-g] . goto-line)
    ([C-n] . line-number-mode))
  (linum-mode 1)
  (whitespace-mode 1)
  (diff-hl-mode 1)
  (diff-hl-flydiff-mode 1)
  (yas-minor-mode 1)
  (centaur-tabs-mode))

(add-to-list 'auto-mode-alist '("\\.ts$" . typescript-mode))
(add-to-list 'auto-mode-alist '("\\.vue$" . vue-mode))
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

(add-hook 'typescript-mode-hook 'dev-mode)
(add-hook 'vue-mode-hook 'dev-mode)
(add-hook 'php-mode-hook 'dev-mode)
(add-hook 'emacs-lisp-mode-hook 'dev-mode)
(add-hook 'dockerfile-mode-hook 'dev-mode)
(add-hook 'yaml-mode-hook 'dev-mode)



;; Key bindings


;; Keyboard quit
(global-unset-key (kbd "ESC ESC ESC"))
(global-set-key (kbd "ESC ESC ESC") 'keyboard-quit)

;; Calendar
(global-set-key (kbd "C-c c") 'calendar)

;; Org-ref
(global-set-key (kbd "C-c r") 'org-ref)
(global-set-key (kbd "C-c C-r g") 'org-ref-insert-bibliography-link)

;; Line numbers
(global-set-key (kbd "C-c C-l g") 'goto-line) ;; Go to line number
(global-set-key (kbd "C-c C-l n") 'linum-mode) ;; Enable line numbers
(global-set-key (kbd "C-c C-l N") 'global-linum-mode) ;; Enable line numbers (globally)

;; Git (Magit)
(global-set-key (kbd "C-x g") 'magit-status)

;; Zoom

(global-set-key (kbd "M-=") 'text-scale-increase)
(global-set-key (kbd "M--") 'text-scale-decrease)

(define-globalized-minor-mode
    global-text-scale-mode
    text-scale-mode
    (lambda () (text-scale-mode 1)))

  (defun global-text-scale-adjust (inc) (interactive)
    (text-scale-set 1)
    (kill-local-variable 'text-scale-mode-amount)
    (setq-default text-scale-mode-amount (+ text-scale-mode-amount inc))
    (global-text-scale-mode 1)
  )

(global-set-key (kbd "M-S-0")
    '(lambda () (interactive)
       (global-text-scale-adjust (- text-scale-mode-amount))
       (global-text-scale-mode -1)))
(global-set-key (kbd "M-S-=")
    '(lambda () (interactive) (global-text-scale-adjust 1)))
(global-set-key (kbd "M-S--")
    '(lambda () (interactive) (global-text-scale-adjust -1)))

(custom-set-faces
 '(default ((t (
      :family "Iosevka Fixed Extended"
      :foundry "unknown"
      :slant normal
      :weight Regular
      :height 140
      :width normal))))
)
