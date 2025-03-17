(require 'treesit)

;; Enable high-level syntax highlighting
(setq treesit-font-lock-level 4)

;; Install grammars (if needed)
(add-to-list 'treesit-language-source-alist '(gomod "https://github.com/camdencheek/tree-sitter-go-mod.git"))
(add-to-list 'treesit-language-source-alist '(bash "https://github.com/tree-sitter/tree-sitter-bash.git"))
(add-to-list 'treesit-language-source-alist '(go "https://github.com/tree-sitter/tree-sitter-go.git"))
(add-to-list 'treesit-language-source-alist '(csharp "https://github.com/tree-sitter/tree-sitter-c-sharp.git"))

;; Use bash-ts-mode for shell scripts
(add-to-list 'major-mode-remap-alist '(sh-mode . bash-ts-mode))

