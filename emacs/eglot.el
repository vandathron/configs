(require 'eglot)

;; Enable Eglot for Go
(require 'go-mode)
(add-hook 'go-mode-hook 'eglot-ensure)
(add-to-list 'major-mode-remap-alist '(go-mode . go-ts-mode))
(add-hook 'go-ts-mode-hook 'eglot-ensure)

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

;; Format code on save
(defun eglot-format-buffer-before-save ()
  (add-hook 'before-save-hook #'eglot-format-buffer -10 t))

(add-hook 'go-mode-hook #'eglot-format-buffer-before-save)

