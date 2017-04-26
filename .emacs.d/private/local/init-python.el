
(setq-default dotspacemacs-configuration-layers '(
  (python :variables python-enable-yapf-format-on-save t)))
  
(setq-default dotspacemacs-configuration-layers
  '((python :variables python-sort-imports-on-save t)))
  
(setq-default dotspacemacs-configuration-layers
  '((python :variables python-sort-imports-on-save t)))
  
;; load pylookup when compile time
(eval-when-compile (require 'pylookup))

;; set executable file and db file
(setq pylookup-program (concat pylookup-dir "/pylookup.py"))
(setq pylookup-db-file (concat pylookup-dir "/pylookup.db"))

;; to speedup, just load it on demand
(autoload 'pylookup-lookup "pylookup"
  "Lookup SEARCH-TERM in the Python HTML indexes." t)

(autoload 'pylookup-update "pylookup" 
  "Run pylookup-update and create the database at `pylookup-db-file'." t)
  
  
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

;;(elpy-enable)
;;(setq elpy-rpc-backend "jedi")
;;(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
;;(when (require 'flycheck nil t)
;;  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
;;  (add-hook 'elpy-mode-hook 'flycheck-mode))

;;(elpy-use-ipython)

;;(setq python-shell-interpreter "ipython")
;;(setq python-shell-interpreter-args "-i")


;;(setq ein:use-auto-complete t)
;;(setq ein:use-smartrep t)

;;(add-hook 'python-mode-hook 'flycheck-mode)
;;(add-to-list 'flycheck-disabled-checkers 'python-flake8)
;;(add-to-list 'flycheck-disabled-checkers 'python-pylint)

(provide 'init-python)
