(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/")

;; XML file handling
(load "~/.emacs.d/vendor/nxml-mode/rng-auto.el")
(setq auto-mode-alist
      (cons '("\\.\\(xml\\|xsl\\|rng\\|xhtml\\|html\\)\\'" . nxml-mode)
            auto-mode-alist))

; custom place to save customizations
(setq defuns-file "~/.emacs.d/wal/defuns.el")
(when (file-exists-p defuns-file) (load defuns-file))

; custom place to save customizations
(setq custom-file "~/.emacs.d/wal/custom.el")
(when (file-exists-p custom-file) (load custom-file))

(setq bindings-file "~/.emacs.d/wal/bindings.el")
(when (file-exists-p bindings-file) (load bindings-file))

;; Load theme if exists
(setq theme-file "~/.emacs.d/wal/theme.el")
(when (file-exists-p theme-file) (load theme-file))


(require 'ido)
(require 'magit)

(ido-mode t)
(vendor 'ruby-mode)
(vendor 'ruby-electric)
(setq auto-mode-alist  (cons '(".rb$" . ruby-mode) auto-mode-alist))

(ruby-electric-mode t)
