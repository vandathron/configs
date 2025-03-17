;;; ui.el --- UI Customizations -*- lexical-binding: t; -*-

;; This file contains all UI-related settings for Emacs.

;; Enable battery indicator
(display-battery-mode t)

;; Show time in the mode line
(display-time-mode t)

;; Remove fringe (gutter)
(fringe-mode 0)

;; Enable line numbers globally
(global-display-line-numbers-mode t)

;; Disable line numbers for specific modes
(dolist (mode '(eshell-mode-hook
                shell-mode-hook
                term-mode-hook
                vterm-mode-hook
                treemacs-mode-hook
                dired-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; Hide the scroll bar
(scroll-bar-mode -1)

;; Show file size in mode line
(size-indication-mode t)

;; Disable tool bar
(tool-bar-mode -1)

;; Set tool bar position
;;(setq tool-bar-position 'left)

;; Enable electric-pair-mode for auto-closing brackets
(add-hook 'prog-mode-hook 'electric-pair-mode)

;; Set custom font
(set-face-attribute 'default nil
                    :family "Ubuntu Sans Mono"
                    :foundry "DAMA"
                    :slant 'normal
                    :weight 'light
                    :height 90
                    :width 'normal)

;; Load theme on startup
(load-theme 'doom-bluloco-dark t)
;; Custom faces for syntax highlighting
(set-face-attribute 'font-lock-function-call-face nil :inherit 'font-lock-function-name-face)
(set-face-attribute 'font-lock-property-name-face nil :foreground "#ce9887")
(set-face-attribute 'font-lock-property-use-face nil :foreground "#ce9887")
(set-face-attribute 'font-lock-punctuation-face nil :foreground "#7a82da" :distant-foreground "#7a82da")

(provide 'ui)
