;;; -*- lexical-binding: t -*-

;; Set package sources
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))
;; Trust local .dir el files
(setq enable-local-eval t
      enable-local-variables :all)
;; Enable hs-minor-mode automatically in programming modes
(add-hook 'prog-mode-hook 'hs-minor-mode)

;; Load modular configurations
(load "~/.emacs.d/lisp/ui.el")   ;; ui management
(load "~/.emacs.d/lisp/packages.el")   ;; Package management
(load "~/.emacs.d/lisp/eglot.el")      ;; Eglot (LSP)
(load "~/.emacs.d/lisp/treesitter.el") ;; Tree-sitter setup
(load "~/.emacs.d/lisp/projectile.el") ;; Projectile (Project management)
(load "~/.emacs.d/lisp/keybindings.el") ;; Custom keybindings

(custom-set-variables
 '(inhibit-startup-screen t)
 '(package-selected-packages nil))
