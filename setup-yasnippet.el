(require 'yasnippet)

;; Use only own snippets, do not use bundled ones
(setq yas/snippet-dirs
      (expand-file-name "snippets" user-emacs-directory))
(yas/global-mode 1)

(provide 'setup-yasnippet)
