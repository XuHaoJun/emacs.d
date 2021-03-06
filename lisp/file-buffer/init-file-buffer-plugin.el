(add-to-list 'load-path (concat base-setup-dir "/file-buffer/ido"))
(require 'setup-ido-init)

(require 'setup-ibuffer)
(require 'setup-dired)
(require 'setup-helm)
(require 'setup-openwith)
(require 'setup-popwin)
(require 'setup-fullframe)

(provide 'init-file-buffer-plugin)
