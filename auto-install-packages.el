(require 'package)

(defvar pkg-lst
  '(ac-slime ace-jump-mode ack-and-a-half ag auctex auto-complete
             autopair android-mode anzu ac-js2 ac-emmet ac-math
             ace-window auto-complete-clang anaconda-mode
             c-eldoc company company-go color-moccur css-eldoc coffee-mode command-log-mode
             clang-format
             clojure-mode cider ac-cider-compliment
             dired-subtree dired-details dired-details+ dired-single dynamic-fonts diminish
             eldoc-extension emacs-eclim erc-hl-nicks expand-region emmet-mode
             evil evil-leader evil-numbers evil-matchit
             flex-isearch fuzzy flycheck flx flx-ido fullframe
             geiser git-commit-mode google-this
             gitconfig-mode github-browse-file gitignore-mode google-c-style
             go-mode go-eldoc go-snippets ggtags
             helm helm-ack helm-ag helm-c-moccur helm-gtags helm-rails
             helm-projectile helm-css-scss helm-flycheck helm-open-github helm-swoop
             htmlize haskell-mode highlight-symbol
             ibuffer-vc ido-sort-mtime ido-ubiquitous ido-yes-or-no
             ido-vertical-mode iedit inf-ruby inf-mongo ipretty
             js2-mode
             kibit-mode
             magit multi-term
             nlinum
             openwith org org-octopress ox-reveal
             pkgbuild-mode pos-tip popwin projectile pangu-spacing prodigy
             php-mode
             quickrun
             rainbow-delimiters rainbow-mode ruby-electric ruby-block robe rinari
             window-numbering
             session shell-pop slime smex smartparens
             solarized-theme surround scss-mode slime-company sr-speedbar
             tronesque-theme
             undo-tree
             visual-regexp
             w3m wgrep wgrep-ack wgrep-helm web-mode
             yasnippet yari yaml-mode))


;; install the missing packages
(defun auto-install-packages ()
  (dolist (package pkg-lst)
    (when (not (package-installed-p package))
      (package-install package))))

(provide 'auto-install-packages)
