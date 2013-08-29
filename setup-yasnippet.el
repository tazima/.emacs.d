(require 'yasnippet)

;; Use only own snippets, do not use bundled ones
(setq yas/snippet-dirs
      (append yas/snippet-dirs
	      `(,(expand-file-name "snippets" user-emacs-directory))))
(yas/global-mode 1)

;; Include snippets for Buster.js
(require 'buster-snippets)

;; Include snippets for Mocha and expect.js
(require 'mocha-expect-snippets)

;; Include snippets for Express
(require 'express-snippets)

;; Include snippets for coffee-script
(require 'coffee-script-snippets)

(provide 'setup-yasnippet)
