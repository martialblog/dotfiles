;; My local emacs stuff

;; Using https://github.com/purcell/emacs.d
;; git clone https://github.com/purcell/emacs.d.git ~/.emacs.d 
;; Maybe use M-x package-refresh-contents 

;; Whitespace mode to catch those tricky characters
(global-whitespace-mode 1)

;; Neotree
(add-to-list 'load-path "~/.emacs.d/elpa/neotree-20160214.532/")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(provide 'init-local)
