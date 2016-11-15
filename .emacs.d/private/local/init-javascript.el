
;;ac-js2
(add-hook 'js2-mode-hook 'ac-js2-mode)
(add-hook 'js2-mode-hook 'skewer-mode)
(setq ac-js2-evaluate-calls t)

(defconst preferred-javascript-indent-level 4)

;; Need to first remove from list if present, since elpa adds entries too, which
;; may be in an arbitrary order
(eval-when-compile (require 'cl))
(autoload 'js2-mode "js2-mode" nil t) 
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))


;; js2-mode

;; Change some defaults: customize them to override
(setq-default js2-basic-offset 4
              js2-bounce-indent-p nil)

;; js-mode
(setq-default js-indent-level preferred-javascript-indent-level)

;;(setq httpd-root "/var/www")
;;(httpd-start)

;;(defservlet hello-world text/plain (path)
;;  (insert "hello, " (file-name-nondirectory path)))

(provide 'init-javascript)
