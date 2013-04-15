(setq make-backup-files nil)
(global-font-lock-mode t)

(require 'ido)
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(exec-path (quote ("/usr/kerberos/bin" "/usr/local/bin" "/usr/bin" "/bin" "/usr/X11R6/bin" "/home/walmc/bin" "/apollo/env/Emacs23/libexec/emacs/23.2/i686-pc-linux-gnu" "/apollo/env/SDETools/bin")))
 '(make-backup-files nil)
 '(indent-tabs-mode nil)
 '(show-paren-mode t)
 '(standard-indent 2)
 '(tool-bar-mode nil)
 '(inhibit-startup-message t)
 '(x-select-enable-clipboard t)
 '(transient-mark-mode t))
