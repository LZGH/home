
(setq-default dotspacemacs-configuration-layers '(
  (python :variables python-enable-yapf-format-on-save t)))
  
(setq-default dotspacemacs-configuration-layers
  '((python :variables python-sort-imports-on-save t)))
  
(setq-default dotspacemacs-configuration-layers
  '((python :variables python-sort-imports-on-save t)))

(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)

(setq-default flycheck-flake8-maximum-line-length 120)

(setenv "PYTHONIOENCODING" "utf8")
  
(setq python-shell-interpreter "E:\\Anaconda3\\python.exe"
      python-shell-interpreter-args
      "-i E:\\Anaconda3\\Scripts\\ipython-script.py")

(setq python-shell-prompt-detect-failure-warning nil)
(setq python-shell-interpreter "ipython" python-shell-interpreter-args "--simple-prompt --pprint") 

(org-babel-do-load-languages
 'org-babel-load-languages
 '((ipython . t)
   ;; other languages..
   ))
(setq org-confirm-babel-evaluate nil)
(add-hook 'org-babel-after-execute-hook 'org-display-inline-images 'append)


(provide 'init-python)
