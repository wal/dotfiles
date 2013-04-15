(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/vendor")

;; Own cusomization
(load "wal/custom")
(load "wal/theme")
(load "wal/javascript")
(load "wal/defuns")
(load "wal/fullscreen")

(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; Stuff nicked from github.com/defunkt/emacs
(load "defunkt/modes")
(load "defunkt/github")
(load "defunkt/git")
(load "defunkt/todo")

(vendor 'ack)
(vendor 'cheat)
(vendor 'magit)
(vendor 'gist)
(vendor 'textile-mode)
(vendor 'yaml-mode)
(vendor 'tpl-mode)