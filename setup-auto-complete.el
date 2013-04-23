(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(require 'auto-complete-config)
(ac-config-default)

;; sql
(setq ac-modes (append ac-modes '(sql-mode)))
(setq ac-modes (append ac-modes '(coffee-mode)))

(provide 'setup-auto-complete)
