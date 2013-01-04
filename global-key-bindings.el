;; helm-mini
(global-set-key (kbd "C-c h") 'helm-mini)

;; helm-c-yasnippet
(global-set-key (kbd "C-c y") 'helm-c-yas-complete)

;; helm-c-moccur
(global-set-key (kbd "M-o") 'helm-c-moccur-occur-by-moccur)
(global-set-key (kbd "C-M-o") 'helm-c-moccur-dmoccur)
(global-set-key (kbd "C-M-s") 'helm-c-moccur-isearch-forward)
(global-set-key (kbd "C-M-r") 'helm-c-moccur-isearch-backward)

(provide 'global-key-bindings)
