;; Using https://github.com/purcell/emacs.d
;; git clone https://github.com/purcell/emacs.d.git ~/.emacs.d 
;; Maybe use M-x package-refresh-contents 

;; Custom Keybindings
(global-set-key (kbd "M-+") 'beginning-of-buffer)
(global-set-key (kbd "M-#") 'end-of-buffer)
(global-set-key (kbd "C-'") #'er/expand-region)

;; Default directory setting
(setq default-directory (concat (getenv "HOME") "/"))

;; xclip Mode for copy-paste
;; (xclip-mode 1)

;;PYTHON Stuff
(eval-after-load 'python
  '(progn
     (setq elpy-rpc-python-command "python3")
     (setq python-shell-interpreter "python3")))

(provide 'init-local)
