(require 'eglot)

;; Enable Eglot for Go
(require 'go-mode)
(add-hook 'go-mode-hook 'eglot-ensure)
(add-to-list 'major-mode-remap-alist '(go-mode . go-ts-mode))
(add-hook 'go-ts-mode-hook 'eglot-ensure)

;; Format code on save
(defun goimports-after-save ()
  (save-excursion
      (shell-command (format "goimports -w %s" (buffer-file-name)))
      (revert-buffer :ignore-auto :noconfirm :preserve-modes)))

(add-hook 'go-ts-mode-hook
          (lambda ()
            (add-hook 'after-save-hook #'goimports-after-save nil t)))

;; Enable Eglot for C#
(require 'csharp-mode)
(add-hook 'csharp-mode-hook 'eglot-ensure)
(add-to-list 'major-mode-remap-alist '(csharp-mode . csharp-ts-mode))
(add-hook 'csharp-ts-mode-hook 'eglot-ensure)

;; Set OmniSharp as the LSP server for C#
(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               `(csharp-ts-mode . ("~/.omnisharp/OmniSharp" "--languageserver"
                                   "--hostPID" ,(number-to-string (emacs-pid))))))

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(elixir-ts-mode . ("~/.elixir-ls/scripts/language_server.sh"))))

;; Enable Eglot for Elixir
(require 'elixir-mode)
(add-to-list 'major-mode-remap-alist '(elixir-mode . elixir-ts-mode))
(add-hook 'elixir-ts-mode-hook 'eglot-ensure)


