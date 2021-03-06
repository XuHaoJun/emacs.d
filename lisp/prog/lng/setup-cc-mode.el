;; require package: '(clang-formt google-c-style ggtags)
(require 'cc-mode)

(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)

(setq clang-format-style "google")

(defun setup-ggtags-hook ()
  (ggtags-mode 1)
  (define-key evil-motion-state-local-map "gd" 'ggtags-find-tag-dwim)
  (define-key evil-motion-state-local-map "gD" 'ggtags-prev-mark))

(when (executable-find "gtags")
  (require 'ggtags)
  (add-hook 'c-mode-hook 'setup-ggtags-hook)
  (add-hook 'c++-mode-hook 'setup-ggtags-hook))

(setq company-clang-insert-arguments nil)

(require 'flycheck-clangcheck)

(defun my-select-clangcheck-for-checker ()
  "Select clang-check for flycheck's checker."
  (flycheck-set-checker-executable 'c/c++-clangcheck
                                   "clang-check")
  (flycheck-select-checker 'c/c++-clangcheck))

(add-hook 'c-mode-hook #'my-select-clangcheck-for-checker)
(add-hook 'c++-mode-hook #'my-select-clangcheck-for-checker)

;Edit;for work with auto-indent mode
(add-hook 'c-mode-common-hook
          (lambda () (setq indent-tabs-mode t)))

(add-hook 'c++-mode-hook
          (lambda () (setq flycheck-clang-language-standard "c++11")))

(add-hook 'c-mode-hook
          (lambda () (setq flycheck-clang-language-standard "c11")))

(provide 'setup-cc-mode)
