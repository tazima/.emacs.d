;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Set path to dependencies
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path site-lisp-dir)

;; Setting for currently logged in user
(setq user-settings-dir
      (concat user-emacs-directory "users/" user-login-name))
(add-to-list 'load-path user-settings-dir)

;; Add external projects to load path
(dolist (project (directory-files site-lisp-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

;; Themes directory
(setq custom-theme-directory (expand-file-name "themes" user-emacs-directory))

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Setup elnode before packages to stop it from starting a server
(require 'setup-elnode)

;; Setup packages
(require 'setup-package)

;; Setup auto-install
(require 'setup-auto-install)

;; Setup site-lip
(require 'setup-dependencies)

;; Install extensions if they're missing
(defun init--install-packages ()
  (packages-install 
   (cons 'magit melpa)
   (cons 'helm melpa)
   (cons 'helm-c-yasnippet melpa)
   (cons 'color-moccur melpa)
   (cons 'helm-c-moccur melpa)
   (cons 'helm-git melpa)
   (cons 'coffee-mode melpa)
   (cons 'rinari melpa)
   (cons 'rhtml-mode melpa)
   (cons 'auto-complete marmalade)
   (cons 'undo-tree marmalade)))

(init--dependencies (list "js2-mode"))

(condition-case nil
    (init--install-packages)
  (error
   (package-refresh-contents)
   (init--install-packages)))

;; Setup extensions
(eval-after-load 'magit '(require 'setup-magit))
(require 'setup-auto-complete)
(require 'setup-undo-tree)
(require 'setup-helm)
(require 'setup-perspective)
(require 'setup-yasnippet)
(require 'setup-moccur-edit)
(require 'setup-rinari)
(require 's)

;; Language specific setup files
(eval-after-load 'js2-mode '(require 'setup-js2-mode))
(eval-after-load 'ruby-mode '(require 'setup-ruby-mode))
(eval-after-load 'markdown-mode '(require 'setup-markdown-mode))
(eval-after-load 'php-mode '(require 'setup-php-mode))

;; Map files to modes
(require 'mode-mappings)

;; Functions (load all files in defuns-dir)
(setq defuns-dir (expand-file-name "defuns" user-emacs-directory))
(dolist (file (directory-files defuns-dir t "\\w+"))
  (when (file-regular-p file)
    (load file)))

(require 'mark-more-like-this)
(require 'inline-string-rectangle)
(require 'multiple-cursors)

;; Setup key bindings
(require 'global-key-bindings)

;; Misc
(require 'appearance)
(require 'my-misc)

;; Conclude init by setting up specifics for the current user
(when (file-exists-p user-settings-dir)
  (mapc 'load (directory-files user-settings-dir nil "^[^#].*el$")))
