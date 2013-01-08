(require 'helm-config)
(helm-mode 1)

(require 'helm-c-yasnippet)
(setq helm-c-yas-space-match-any-greedy t)

(require 'helm-c-moccur)
(setq helm-c-moccur-enable-initial-pattern t)
(setq helm-c-yas-display-key-on-candidate t)
(add-hook 'dired-mode-hook
	  '(lambda ()
	     (local-set-key (kbd "O") 'helm-c-moccur-dired-do-moccur-by-moccur)))

(provide 'setup-helm)
