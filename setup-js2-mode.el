(setq-default js2-global-externs '("module" "require" "jQuery" "$" "_" "buster" "sinon" "assert" "refute" "setTimeout" "clearTimeout" "setInterval" "clearInterval" "location" "__dirname" "console" "JSON" "describe" "it" "before" "after" "beforeEach" "afterEach" "expect"))

(require 'js2-mode)
(require 'js2-refactor)

(require 'js2-imenu-extras)
(js2-imenu-extras-setup)
(custom-set-variables '(js2-basic-offset 2))
(setq js2-mode-hook
  '(lambda () (progn (set-variable 'indent-tabs-mode nil))))

;; Use lambda for anonymous functions
(font-lock-add-keywords
 'js2-mode `(("\\(function\\) *("
              (0 (progn (compose-region (match-beginning 1)
                                        (match-end 1) "\u0192")
                        nil)))))

;; Use right arrow for return in one-line functions
(font-lock-add-keywords
 'js2-mode `(("function *([^)]*) *{ *\\(return\\) "
              (0 (progn (compose-region (match-beginning 1)
                                        (match-end 1) "\u2190")
                        nil)))))

(provide 'setup-js2-mode)
