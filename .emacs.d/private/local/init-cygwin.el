(setenv "PATH" (concat "E:/cygwin64/bin;" (getenv "PATH")))
(setq exec-path (cons "E:/cygwin64/bin" exec-path))
(cygwin-mount-activate)

(add-hook 'comint-output-filter-functions
    'shell-strip-ctrl-m nil t)
(add-hook 'comint-output-filter-functions
    'comint-watch-for-password-prompt nil t)
(setq explicit-shell-file-name "bash.exe")
;; For subprocesses invoked via the shell
;; (e.g., "shell -c command")
(setq shell-file-name explicit-shell-file-name)

(defun ftp (host)
  "03Mar01, sailor"
  "Run the ftp program using cygwin ftp."
  "Fixed the problem that the login prompt cannot be seen."
  (interactive "sFtp to Host : ")
  (let ((bufname)
        (bufobject))
    (setq bufname (concat "*ftp-" host "*"))
    (setq bufobject (get-buffer bufname))

    (cond
     ((and bufobject (get-buffer-process bufobject))
      (pop-to-buffer bufname)
      )
     (t
      (let ((login)
            (process)
            (ftp-program "ftp.exe"))
        (setq bufobject (get-buffer-create bufname))
        (pop-to-buffer bufobject)
        (comint-mode)
        (setq login (read-from-minibuffer (format "%s - Login : " host)))
        (comint-exec bufobject bufname ftp-program nil
            (list "--prompt=ftp> " "-v" host))
        (message "Login in progress. Please wait ...")
        (send-invisible (format "%s" login))
        (setq process (get-buffer-process (current-buffer)))
        (accept-process-output process)
        )
      )
     )
    )
  )
  
(defun shell-symbian ()
  "10Jan02, sailor. Invoke a bash shell for Symbian"
  (interactive)
  (let ((bufname "*shell-symbian*")
        (bufobject))

    (setq bufobject (get-buffer bufname))

    (cond
     ((and bufobject (get-buffer-process bufobject))
      (pop-to-buffer bufname)
      )
     (t
      (progn
        (set-buffer
           (apply 'make-comint-in-buffer
                  "shell"
                  bufname
                  explicit-shell-file-name
                  nil
                  '("--rcfile" "c:/documents/config/.symbianrc" "-i")
                  ))
        (shell-mode)
        (pop-to-buffer (current-buffer))
        )
      )
     )
    )
  )
(add-hook 'shell-mode-hook 'n-shell-mode-hook)
(defun n-shell-mode-hook ()
  "12Jan2002 - sailor, shell mode customizations."
  (local-set-key '[up] 'comint-previous-input)
  (local-set-key '[down] 'comint-next-input)
  (local-set-key '[(shift tab)] 'comint-next-matching-input-from-input)
  )


(provide 'init-cygwin)
