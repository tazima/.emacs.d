(require 'helm-config)
(helm-mode 1)

(require 'helm-c-yasnippet)
(setq helm-c-yas-space-match-any-greedy t)

(require 'helm-config)
(setq helm-occur-enable-initial-pattern t)
(setq helm-c-yas-display-key-on-candidate t)
(add-hook 'dired-mode-hook
	  '(lambda ()
	     (local-set-key (kbd "O") 'helm-occur-dired-do-moccur-by-moccur)))

(require 'helm-git nil t)
(global-set-key (kbd "C-x C-g") 'helm-git-find-files)

(require 'helm-git-grep)
(global-set-key (kbd "C-c g") 'helm-git-grep)
(global-set-key (kbd "C-c M-g") 'helm-git-grep-at-point)

(provide 'setup-helm)
