;; merriam-webster dictionary
(defvar webster-url "http://www.m-w.com/cgi-bin/dictionary?book=Dictionary&va=")

(defun merriam (word)
  (interactive "slook up a word in merriam-webster: ")
  (let (start (point))
    ;; 
    (cond ((string= (format "%s" (current-buffer)) "*eww*")
           (eww-browse-url (concat webster-url word)))
          ;; 
          ((bufferp (get-buffer "*eww*"))
           (progn (view-buffer-other-window (get-buffer "*eww*"))
                  (eww-browse-url (concat webster-url word))))
          ;; 
          (t
           (progn (view-buffer-other-window (get-buffer "*scratch*"))
                  (eww-browse-url (concat webster-url word)))))))

(provide 'merriam)
;;; merriam.el ends here
