(custom-set-variables
 '(default-frame-alist (quote ((tool-bar-lines . 0) (foreground-color . "white") (background-color . "black") (menu-bar-lines . 1) (font . "-apple-inconsolata-medium-r-normal--20-150-72-72-m-150-iso10646-1"))))
 '(transient-mark-mode t))

(custom-set-faces

 '(default ((t (:stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :family "apple-inconsolata"))))
 '(autoface-default ((t (:inherit default :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :family "apple-inconsolata"))))
 '(emacs-lisp-mode-default ((t (:inherit autoface-default))) t)
 '(minibuffer-prompt ((((background dark)) (:foreground "cyan" :height 150))))
 '(mode-line ((t (:inherit aquamacs-variable-width :background "grey75" :foreground "black" :width normal))))
 '(text-mode-default ((t (:inherit autoface-default))) t))