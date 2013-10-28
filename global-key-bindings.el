;; helm-mini
(global-set-key (kbd "C-c h") 'helm-mini)

;; helm-c-yasnippet
(global-set-key (kbd "C-c y") 'helm-c-yas-complete)

;; helm-occur
(global-set-key (kbd "M-o") 'helm-occur)

;; Mark additional regions matching current region
(global-set-key (kbd "C-<") 'mark-previous-like-this)
(global-set-key (kbd "C->") 'mark-next-like-this)
(global-set-key (kbd "C-M-m") 'mark-more-like-this)
(global-set-key (kbd "C-*") 'mark-all-like-this)

(provide 'global-key-bindings)
