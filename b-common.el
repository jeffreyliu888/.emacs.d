(menu-bar-mode -1)
(global-display-line-numbers-mode 1)
(column-number-mode 1)
(global-hl-line-mode 1)

(display-time-mode 1)
(setq display-time-format "%a W%U %Y-%m-%d %H:%M")
(setq display-time-default-load-average 1)
(set-default 'cursor-type 'bar)
(size-indication-mode 1)
(which-function-mode 1)
(electric-pair-mode 1)
(winner-mode 1)

(set-default-font "Menlo 14")
(setq default-buffer-file-coding-system 'utf-8-unix)
(setq default-file-name-coding-system 'utf-8-unix)
(setq default-keyboard-coding-system 'utf-8-unix)
(setq default-process-coding-system 'utf-8-unix)
(setq default-sendmail-coding-system 'utf-8-unix)
(setq default-terminal-coding-system 'utf-8-unix)

(recentf-mode 1)
(setq recentf-max-menu-item 20)
(global-set-key (kbd "C-x r") 'recentf-open-files)

(font-lock-add-keywords 'emacs-lisp-mode '("[(]" "[)]"))


(provide 'b-common)
;;; b-common.el ends here
