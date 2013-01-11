
(add-to-list 'load-path "/usr/lib/erlang/lib/tools-2.6.6.5/emacs")
(setq erlang-root-dir "/usr/lib/erlang")
(setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
(require 'erlang-start)

(provide 'setup-erlang)
