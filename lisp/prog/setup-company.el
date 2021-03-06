(require 'company)
(global-company-mode)

(setq company-tooltip-limit 8)                       ; bigger popup window
(setq company-minimum-prefix-length 1)               ; autocomplete right after '.'
(setq company-idle-delay 0.3)                        ; decrease delay before autocompletion popup shows
(setq company-echo-delay 0)                          ; remove annoying blinking
(setq company-begin-commands '(self-insert-command)) ; start autocompletion only after typing

;; The useful keybindins from https://github.com/tcrayford/emacs/blob/master/vendor/slime-company.el
(define-key company-active-map (kbd "\C-n") 'company-select-next)
(define-key company-active-map (kbd "\C-p") 'company-select-previous)
(define-key company-active-map (kbd "\C-d") 'company-show-doc-buffer)
(define-key company-active-map (kbd "\C-v") 'company-show-location)
(define-key company-active-map (kbd "<tab>") 'company-complete)
(define-key company-active-map (kbd "\C-g") '(lambda ()
                                               (interactive)
                                               (company-abort)))

(define-key company-active-map (kbd "<escape>") '(lambda ()
                                                   (interactive)
                                                   (company-abort)
                                                   (if (fboundp 'evil-normal-state)
                                                       (evil-normal-state))))
(require 'company)
(add-to-list 'company-dabbrev-code-modes 'web-mode)

(provide 'setup-company)
