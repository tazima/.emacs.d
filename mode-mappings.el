;; JavaScript
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . javascript-mode))
(add-to-list 'magic-mode-alist '("#!/usr/bin/env node$" . js2-mode))

;; Markdown
(autoload 'markdown-mode "markdown-mode")
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
(add-hook 'markdown-mode-hook (lambda () (define-key markdown-mode-map (kbd "<tab>") 'yas/expand)))

;; PHP
(autoload 'php-mode "php-mode")
(setq php-file-patterns nil)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

;; Erlan
(autoload 'erlang "erlang-mode")
(add-to-list 'auto-mode-alist '("\\.erl$" . erlang-mode))

;; CoffeeScript
(autoload 'coffee-mode "coffee-mode")
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-hook 'coffee-mode-hook (lambda () (make-local-variable 'tab-width) (set 'tab-width 2)))

;; LESS
(autoload 'less-css-mode "less-css-mode")
(add-to-list 'auto-mode-alist '("\\.less$" . less-css-mode))
(add-hook 'less-css-mode-hook 'flymake-less-load)

(provide 'mode-mappings)
