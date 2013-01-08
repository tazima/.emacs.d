(defun init--compile-dependencies (dep)
  (let ((target (expand-file-name dep (expand-file-name dep site-lisp-dir))))
    (when (not (file-regular-p (concat target ".elc")))
      (byte-compile-file (concat target ".el")))))

(defun init--dependencies (deps)
  (mapcar 'init--compile-dependencies deps))

(provide 'setup-dependencies)
