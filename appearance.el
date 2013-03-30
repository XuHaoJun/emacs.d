;; (setq visible-bell nil
;;       font-lock-maximum-decoration t
;;       color-theme-is-global t
;;       truncate-partial-width-windows nil)

(blink-cursor-mode (- (*) (*) (*))) ;;blink disable

;; Theme
(require 'solarized-dark-theme)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; (require 'rainbow-delimiters)
;; (global-rainbow-delimiters-mode)

;; Let term color deal with solarized-dark theme
;; (when window-system
;;   (setq
;;    term-default-fg-color "#839496"
;;    term-default-bg-color "#002b36"))

;; Font
(require 'dynamic-fonts)
(dynamic-fonts-setup)

;; (set-face-background 'region "#464740")

;;Highlight current line
(global-hl-line-mode 1)

;; Customize background color of lighlighted line
;; (set-face-background 'hl-line "#222222")

;; Highlight in yasnippet
;;(set-face-background 'yas/field-highlight-face "#333399")

;; Preeeetty font in Emacs 24/Ubuntu
;; (if is-mac nil
;;   (set-default-font "DejaVu Sans Mono")
;;   (set-face-attribute 'default nil :height 105))

;; org-mode colors
;; (setq org-todo-keyword-faces
;;       '(
;;         ("INPR" . (:foreground "yellow" :weight bold))
;;         ("DONE" . (:foreground "green" :weight bold))
;;         ("IMPEDED" . (:foreground "red" :weight bold))
;;         ))


;; No menu bars
(menu-bar-mode -1)

;; (when window-system
;;   (setq frame-title-format '(buffer-file-name "%f" ("%b")))
;;   (turn-off-tool-bar)
;;   (tooltip-mode -1)
;;   (turn-off-tool-bar)
;;   (blink-cursor-mode -1))

;; (add-hook 'before-make-frame-hook 'turn-off-tool-bar)

;; Ditch them scrollbars
(scroll-bar-mode -1)

;; Make zooming affect frame instead of buffers
;; (require 'zoom-frm)

;; Sweet window-splits
;; (defadvice split-window-right (after balance activate) (balance-windows))
;; (defadvice delete-window (after balance activate) (balance-windows))

(provide 'appearance)
