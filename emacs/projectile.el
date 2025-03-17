(use-package projectile
  :ensure t
  :init
  (setq projectile-project-search-path '("~/dotnet/" "~/go/src" "~go/src/k8s.io" "~/kubernetes")) ;;path to most of the projects I need to work on on emacs
  :config
  (define-key projectile-mode-map (kbd "C-c C-p") 'projectile-command-map)
  (global-set-key (kbd "C-c p") 'projectile-command-map)
  (projectile-mode +1))

