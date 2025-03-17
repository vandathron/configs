(require 'package)
(package-initialize)

;; Install `use-package` if not installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

;; Install and configure packages
(use-package company
  :ensure t
  :config
  (global-company-mode t)
  (setq company-idle-delay 0.1)  ;; Show suggestions almost instantly
  (setq company-minimum-prefix-length 1)
  (add-to-list 'company-backends 'company-yasnippet)) ;; Add snippets

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))  ;; Enable yasnippet globally

(use-package flycheck
  :ensure t
  :hook ((go-ts-mode . flycheck-mode)
         (csharp-ts-mode . flycheck-mode)))

(use-package vertico
  :ensure t
  :init
  (vertico-mode +1))

(use-package which-key
  :ensure t
  :config
  (which-key-mode +1))

(use-package magit
  :ensure t)  ;; Git integration

