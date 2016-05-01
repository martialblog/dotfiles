;; My local emacs stuff

;; Using https://github.com/purcell/emacs.d
;; git clone https://github.com/purcell/emacs.d.git ~/.emacs.d 
;; Maybe use M-x package-refresh-contents 

(setq default-directory (concat (getenv "HOME") "/"))

;; Whitespace mode to catch those tricky characters
(global-whitespace-mode 1)

;; Neotree
;;(add-to-list 'load-path "~/.emacs.d/elpa/neotree-20160214.532/")
;;(require 'neotree)
;;(global-set-key [f8] 'neotree-toggle)

;;PYTHON
(eval-after-load 'python
  '(progn
     (setq elpy-rpc-python-command "python3")
     (setq python-shell-interpreter "python3")
     (elpy-enable)))

(provide 'init-local)
