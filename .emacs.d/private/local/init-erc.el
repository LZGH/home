

(defconst irc-channels
  '(("freenode.net" "#emacs" "##javascript" "##java"
     ;; "#geekhack"
     )
    ;;("oftc.net" "#arch-cn" "#njulug" "#wormux-cn" "#emacs-cn")
    ;;("esper.net" "#minecraft-cn")
    ))
(ignore-errors (setq erc-autojoin-channels-alist irc-channels))

(defun erc-start ()
  (interactive)
  (erc :server "irc.freenode.net" :port 6667 :nick "devlz")
  ;; (erc-tls :server "irc.oftc.net" :port 6697 :nick irc-nick
  ;;          :password irc-password :full-name irc-full-name)
  ;; (erc-tls :server "irc.esper.net" :port 6697 :nick irc-nick
  ;;          :password irc-password :full-name irc-full-name)
  )

(provide 'init-erc)

;;; init-erc.el ends here

