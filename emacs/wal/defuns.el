(defcustom git-grep-switches "--extended-regexp -I -n --ignore-case"
  "Switches to pass to `git grep'."
  :type 'string)

(defun git-grep (command-args)
  (interactive
   (list (read-shell-command "Run git-grep (like this): "
                             (format "git grep %s -e "
                                     git-grep-switches)
                             'git-grep-history)))
  (let ((grep-use-null-device nil))
    (grep command-args)))

(defun nxml-pretty-format ()
    (interactive)
    (save-excursion
        (shell-command-on-region (point-min) (point-max) "xmllint --format -" (buffer-name) t)
        (nxml-mode)
        (indent-region begin end)))

(defun uniq-lines (beg end)
  "Unique lines in region.
Called from a program, there are two arguments:
BEG and END (region to sort)."
  (interactive "r")
  (save-excursion
    (save-restriction
      (narrow-to-region beg end)
      (goto-char (point-min))
      (while (not (eobp))
        (kill-line 1)
        (yank)
        (let ((next-line (point)))
          (while
              (re-search-forward
               (format "^%s" (regexp-quote (car kill-ring))) nil t)
            (replace-match "" nil nil))
          (goto-char next-line))))))

(defun vendor (library)
  (let* ((file (symbol-name library))
         (normal (concat "~/.emacs.d/vendor/" file))
         (suffix (concat normal ".el"))
         (defunkt (concat "~/.emacs.d/wal/" file)))
    (cond
     ((file-directory-p normal) (add-to-list 'load-path normal) (require library))
     ((file-directory-p suffix) (add-to-list 'load-path suffix) (require library))
     ((file-exists-p suffix) (require library)))
    (when (file-exists-p (concat defunkt ".el"))
      (load defunkt))))

(defun json-format ()
(interactive)
(save-excursion
(shell-command-on-region (mark) (point) "python -m json.tool" (buffer-name) t)
)
)