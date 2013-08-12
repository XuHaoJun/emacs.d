;; Let emacs find my local gem in my home.
(setenv "GEM_HOME" (expand-file-name "~/.gem"))

;; Depend on extern program rsense.
(when (executable-find "rsense")
  (setq rsense-home "/opt/rsense-0.3")
  (require 'rsense)
  (add-hook 'ruby-mode-hook
            (lambda ()
              (add-to-list 'ac-sources 'ac-source-rsense-method)
              (add-to-list 'ac-sources 'ac-source-rsense-constant))))

(require 'yari)

(provide 'setup-ruby-mode)
