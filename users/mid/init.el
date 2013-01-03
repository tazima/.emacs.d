;; undo
(global-set-key (kbd "C-z") 'undo)

;; 画面分割を入れ替える
(defun swap-screen()
  "Swap two screen,leaving cursor at current window."
  (interactive)
  (let ((thiswin (selected-window))
        (nextbuf (window-buffer (next-window))))
    (set-window-buffer (next-window) (window-buffer))
    (set-window-buffer thiswin nextbuf)))
(defun swap-screen-with-cursor()
  "Swap two screen,with cursor in same buffer."
  (interactive)
  (let ((thiswin (selected-window))
        (thisbuf (window-buffer)))
    (other-window 1)
    (set-window-buffer thiswin (window-buffer))
    (set-window-buffer (selected-window) thisbuf)))
(global-set-key [f9] 'swap-screen)
(global-set-key [S-f9] 'swap-screen-with-cursor)

;; ブラウザ
(setq browse-url-browser-function 'browse-url-generic)
(setq browse-url-generic-program 
  (if (file-exists-p "/usr/bin/chromium")
    "/usr/bin/chromium" "/usr/bin/google-chrome"))

;; 桁数の表示
(add-hook 'text-mode-hook 'ruler-mode)
