(custom-set-variables '(coffee-tab-width 2))
(add-hook 'coffee-mode-hook (lambda ()
                              (define-key evil-insert-state-local-map (kbd "RET") 'coffee-newline-and-indent)
                              (setq evil-auto-indent nil)
                              (eval-after-load 'evil-mode
                                (progn
                                  (defun evil-coffee-open-below ()
                                    (interactive)
                                    (end-of-line)
                                    (coffee-newline-and-indent)
                                    (evil-insert 1))
                                  (defun evil-coffee-open-above ()
                                    (interactive)
                                    (previous-line 1)
                                    (end-of-line)
                                    (coffee-newline-and-indent)
                                    (evil-insert 1))))
                              (define-key evil-normal-state-local-map "o" 'evil-coffee-open-below)
                              (define-key evil-normal-state-local-map "O" 'evil-coffee-open-above)))
(provide 'setup-coffee-mode)
