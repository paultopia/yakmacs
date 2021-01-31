(straight-use-package 'swift-mode)
(straight-use-package 'lsp-sourcekit)
(eval-after-load 'lsp-mode
  (progn
    (require 'lsp-sourcekit)
    (setq lsp-sourcekit-executable
          "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/sourcekit-lsp")))
(add-hook 'swift-mode-hook #'lsp)
(straight-use-package 'flycheck-swift)
(eval-after-load 'flycheck '(flycheck-swift-setup))
(straight-use-package 'swift-helpful)
