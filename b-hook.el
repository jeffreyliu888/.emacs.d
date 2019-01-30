(add-hook 'hs-minor-mode-hook #'hs-hide-all)
(add-hook 'c-mode-hook (lambda() (setq hs-allow-nesting 1) (hs-minor-mode 1) (gtags-mode 1)))
(add-hook 'emacs-lisp-mode-hook (lambda() (hs-minor-mode 1)))

(defun jl-rename-eww-hook ()
  "Rename eww browser's buffer so sites open in new page."
  (rename-buffer "eww" t))
(add-hook 'eww-mode-hook #'jl-rename-eww-hook)

(add-hook 'gnus-startup-hook
  '(lambda ()
     (gnus-demon-init)
     (setq gnus-demon-timestep 60)  ;; each timestep is 60 seconds
     ;; Check for new mail every 1 timestep (1 minute)
     (gnus-demon-add-handler 'gnus-demon-scan-news 1 t)

     ;; Don't crash gnus if disconnected
     (defadvice gnus-demon-scan-news (around gnus-demon-timeout activate)
       "Timeout for Gnus."
       (with-timeout
       (120 (message "Gnus timed out."))
     ad-do-it))))


(provide 'b-hook)
;;;b-hook.el ends here
