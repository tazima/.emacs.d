(require 'moccur-edit)

(defadvice moccur-edit-change-file
  (after save-after-moccur-edit-buffer activate)
  (save-buffer))

(provide 'setup-moccur-edit)
