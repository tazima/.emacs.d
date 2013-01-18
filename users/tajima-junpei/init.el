;; 時計
(display-time)

;; org-mode

;; TODO状態
(setq org-todo-keywords
      '((sequence "TODO(t)" "WAIT(w)" "|" "DONE(d)" "SOMEDAY(s)")))
;; DONEの時刻を記録
(setq org-log-done 'time)

;; 今いるディレクトリでgruntコマンドを実行する
(defun execute-grunt (task)
  (interactive "stask: ")
  (shell-command (concat "grunt " task)))

(global-set-key (kbd "C-x g") 'execute-grunt)


