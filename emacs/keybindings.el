(global-set-key (kbd "C-x k") 'kill-this-buffer) ;; Kill current buffer
(global-set-key (kbd "C-x C-b") 'ibuffer) ;; Better buffer list
(global-set-key (kbd "M-x") 'execute-extended-command)
(global-set-key (kbd "C-c h") 'hs-toggle-hiding) ;; Bind C-c h to toggle folding
(with-eval-after-load 'company
  (define-key company-mode-map (kbd "C-c C-c") 'company-complete)
)
