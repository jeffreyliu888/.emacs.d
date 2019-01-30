;;;Key Registration Map
;;"C-c: `bdkhjlmnopuvy'"


;;;Global key settings

;;change buffer from current window
(global-set-key (kbd "C-c n") 'bs-cycle-next)
(global-set-key (kbd "C-c p") 'bs-cycle-previous)

;;kill current buffer
(global-set-key (kbd "C-c k") 'kill-this-buffer)

;;open buffer list in current window
(global-set-key (kbd "C-c b") 'buffer-menu)

;;window jump
(global-set-key (kbd "C-c o") 'windmove-up)
(global-set-key (kbd "C-c l") 'windmove-down)
(global-set-key (kbd "C-c h") 'windmove-left)
(global-set-key (kbd "C-c j") 'windmove-right)

;;window resize
(global-set-key (kbd "C-c m") 'windresize)

;;winner mode
(global-set-key (kbd "C-c u") 'winner-undo)
(global-set-key (kbd "C-c y") 'winner-redo)

;;list recent opened files
(global-set-key (kbd "C-x r") 'recentf-open-files)

;;hideshow
(global-set-key (kbd "C-x SPC") 'hs-toggle-hiding)
(global-set-key (kbd "C-x n") (lambda() (interactive) (hs-hide-level 1)))
(global-set-key (kbd "C-x m") (lambda() (interactive) (hs-hide-level 2)))

;;youdao dictionary
(global-set-key (kbd "C-c d") 'youdao-dictionary-search-at-point+)
(global-set-key (kbd "C-c v") 'youdao-dictionary-play-voice-at-point)


;;;Local key settings
(setq gtags-mode-hook
'(lambda ()
(local-set-key "\M-t" 'gtags-find-tag)
(local-set-key "\M-r" 'gtags-find-rtag)
(local-set-key "\M-s" 'gtags-find-symbol)
(local-set-key "\C-t" 'gtags-pop-stack)
))


(provide 'b-keybinding)
;;; b-keybinding.el ends here
