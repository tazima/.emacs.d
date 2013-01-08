(setq-default js2-global-externs '("module" "require" "jQuery" "$" "_" "buster" "sinon" "assert" "refute" "setTimeout" "clearTimeout" "setInterval" "clearInterval" "location" "__dirname" "console" "JSON" "describe" "it" "before" "after" "beforeEach" "afterEach" "expect"))

(require 'js2-mode)
(require 'js2-refactor)

(require 'js2-imenu-extras)
(js2-imenu-extras-setup)
(custom-set-variables '(js2-basic-offset 2))

(provide 'setup-js2-mode)
