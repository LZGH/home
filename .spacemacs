;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides
Start checking fbexac-apInvalid face reference: quoteplvia the OS X Notiy: Spawning child Iemacs
    f:/emacsnvalid face reference: quote [22 times]
setcdr: Wrong typ
e argument: number-or-marker-p, nilInvalid face reference: quote
Invorg-link-typesalid face reference: quote [12 times]process: Invalid argumentjs2-setup-auto-completeac-define-source-mode: Invalid function: ac-define-source
    ~/.emacs.d/private/local/merriam.elSkPreparing diary...doneipping check for new version (reason: dotfile)es.d/diary
    ~/.spa apphelm-autoresize-modely: Searching fo    f:/emacs/use.htmlr program: No such file or (No changes need to be saved)directory, fauto-completeirefoxc/emacsor neshow
-paren-modew version...shi.plo-complete-insevil-states(overwrite-moevilifyde t)tall-dirmodifying tnit-switch-windowhe variause-packageble
values."
  (setq-default
   ;;saveBitMap = win32ui.CreateBitmap()   Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; better-defaults
     ;;git
     ;;
     ;; org
     ;; spell-checking
     ;; version-control
     emacs-lisp
	 	 auto-completion
     ;;python
     markdown
     erc
	   python
     ;;emoji
     (ibuffer :variables ibuffer-group-buffers-by 'projects)

     (shell :variables
             shell-default-height 30
             shell-default-position 'bottom)
     syntax-checking

     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      ace-jump-mode
                                      auto-indent-mode
                                      expand-region
                                      whole-line-or-region
                                      switch-window
                                      flymd
                                      ac-js2
                                      js2-mode
                                      skewer-mode
                                      simple-httpd
                                      org-bullets
                                      web-mode
                                      emmet-mode
                                      sr-speedbar
                                      helm-gtags
                                      importmagic
                                      ;;cygwin-mount
                                      ;;elpy
                                      ;;py-autopep8
                                      ;;ein
                                      ;;websocket
                                      ;;request
                                      ;;auto-complete
                                      smartrep
                                      flycheck
                                      ;;flycheck-pyflakes
                                      ox-reveal
                                      htmlize
                                      ob-ipython
                                      ;; jedi
   )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(
                                    org-octopress
                                    session
                                    git
                                    coffee-mode
                                    json-mode
																		fiplr
   )
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 20
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update nil
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'nil
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 10
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
						 						 solarized-dark
                         spacemacs-light
                         solarized-light
                         leuven
                         monokai
                         zenburn)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Consolas"
                               :size 16
                               :weight normal
                               :width normal
                               :powerline-scale 2)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 10
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

  ;;myInit start
   ;; (with-eval-after-load 'evil
     ;; (global-set-key (kbd "C-z") 'evil-force-normal-state))


  ;;(setq-default git-magit-status-fullscreen t)

;;myInit end
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."


;;myConfig start

(push "~/.emacs.d/private/local/" load-path)



;;----------------------------------------------------------------------------
;; Cut/copy the current line if no region is active
;;----------------------------------------------------------------------------

(setq-default major-mode 'text-mode)
(whole-line-or-region-mode t)
;;(diminish 'whole-line-or-region-mode)
(make-variable-buffer-local 'whole-line-or-region-mode)

;;(global-git-commit-mode t)
(global-company-mode)
(global-flycheck-mode)
(delete-selection-mode 1)
(global-font-lock-mode t)
(auto-indent-global-mode)
(setq auto-indent-assign-indent-level 4)

(projectile-global-mode)
(setq projectile-enable-caching t)

(add-hook 'python-mode-hook 'importmagic-mode)

(use-package init-python)

(use-package init-ox-publish)

(use-package init-erc)

(use-package base-init)

(use-package init-indent)

;;(use-package init-appt)

(use-package init-windows)

(use-package init-web-mode)

(use-package init-javascript)
;;(use-package cygwin-mount)
;;(use-package init-cygwin)
;;(use-package init-telnet)
;;(use-package init-telnet-contrib)

(use-package init-helm-gtags)

(use-package init-sr-speedbar)

(defun my-company-mode-hook ()
  (company-mode -1))

(add-hook 'org-mode-hook 'my-company-mode-hook)
(add-hook 'python-hook 'my-company-mode-hook)
(add-hook 'org-mode-hook 'anaconda-mode)

(use-package merriam
	:bind ("<f5>" . merriam)
)

(use-package expand-region
  :bind ("C-=" . er/expand-region)
)

(use-package ace-jump-mode
  :bind ("C-," . ace-jump-char-mode))

(use-package find-file-suggest
  :config
  (ffs-create-file-index "test" "F:/emacs/" "\\.pl$" "\\.cache")
  (ffs-create-file-index "emacs" "~/.emacs.d/" "\\.el$\\|\\.md$\\|\\.org$" "\\.cache")
  (ffs-create-file-index "aj" "F:/project/DevelopmentLibrary/dev/aj-zhyy/src/main/webapp/" "\\.jsp$\\|\\.html$\\|\\.js$\\|\\.css$" "\\.cache")
  :bind
  ("C-c f" . find-file-suggest)
	("C-c g" . ffs-use-file-index)
  )

(use-package flymd
  :init (defun my-flymd-browser-function (url)
          (let ((browse-url-browser-function 'browse-url-firefox))
            (browse-url url)))
  (setq flymd-browser-open-function 'my-flymd-browser-function)
  (setq flymd-output-directory "F:/")
  :bind ("C-c C-m" . flymd-flyit)
  )

(use-package multi-term
  :init
  (setq multi-term-program "F:/wsl-terminal/bin/outbash.exe")
  )
;;"<img draggable="false" class="emoji" alt="" src="https://s0.wp.com/wp-content/mu-plugins/wpcom-smileys/twemoji/2/svg/26ab.svg">"
(use-package org-bullets
  :ensure t
  :init
  (setq org-bullets-bullet-list'("☯" "☂" "✈" "☁" "➹" "☠" "♨" "✍" "☣"))
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;;!@
(setq org-todo-keywords '((sequence "☞ TODO(t)" "|" "✔ DONE(d)")
                          (sequence "☢ WAIT(w)" "|")
                          (sequence "|" "✘ CANCELED(c)")))

(use-package git-emacs
  :init
  (push "~/.emacs.d/private/git-emacs/" load-path))


(use-package init-compile-dwim
  :bind ("C-c s" . compile-dwim-compile)
  ("C-c r" . compile-dwim-run))

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

;; Various preferences
(setq
  ;; turn on the syntax highlight in the org mode
  org-src-fontify-natively t
  ;; when exporting the org file, do not evaluate the code block if the exports header is both
  org-export-babel-evaluate nil
  ;; skip the confirmation step when evaluate a code block
  org-confirm-babel-evaluate nil)

 ;;禁用下划线转义
(setq-default org-use-sub-superscripts nil)
(setq org-export-with-sub-superscripts nil)

;;simple-httpd
(setq httpd-root "F:/emacs")

;;Task Estimates and column view
;; Set default column view headings: Task Effort Clock_Summary
(setq org-columns-default-format "%80ITEM(Task) %10Effort(Effort){:} %10CLOCKSUM")
;; global Effort estimate values
;; global STYLE property values for completion
(setq org-global-properties (quote (("Effort_ALL" . "0:15 0:30 0:45 1:00 2:00 3:00 4:00 5:00 6:00 0:00")
                                    ("STYLE_ALL" . "habit"))))

(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

;; org-mode自动换行
(global-set-key [f12] 'toggle-truncate-lines)
(global-set-key (kbd "M-/") 'yas/expand)
;; org-mode缩进
(setq org-startup-indented t)
(electric-pair-mode t)

(setq skeleton-pair-alist
      '((?\" _ "\"" >)
        (?\' _ "\'" >)
		(?\“ _ "\”" >)
		(?\‘ _ "\’" >)))

(setq skeleton-pair t)

;; 绑定全局键值
;; 也可以绑定单独到某个mode，比如cc-mode (define-key cc-mode-map (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\'") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\“") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\‘") 'skeleton-pair-insert-maybe)


(global-set-key (kbd "C-k") 'delete-backward-char)
(global-set-key (kbd "M-k") 'backward-kill-word)
;;mark set
(global-set-key (kbd "C-M-,") 'set-mark-command)
(global-set-key (kbd "C-x C-.") 'pop-global-mark)

;;(run-with-idle-timer 1 nil 'w32-send-sys-command 61488)
(setq tidy-config-file nil)


;; 显示行号
(global-linum-mode)
;;不显示行号mode
(setq inhibit-linum-mode-alist
      '(
	      org-mode
        eshell-mode
        shell-mode
        term-mode
        ))
(defadvice linum-on (around inhibit-for-modes activate)
  "Stop turing linum-mode if it is in the inhibit-linum-mode-alist."
  (unless (member major-mode inhibit-linum-mode-alist)
    ad-do-it))

;;helm
(use-package helm
  :init
  (setq helm-autoresize-max-height 0)
  (setq helm-autoresize-min-height 20)
  (setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
        helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
        helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
        helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
        helm-ff-file-name-history-use-recentf t
        helm-echo-input-in-header-line t)
  :bind ("M-x" . helm-M-x)
  ("C-x C-b" . helm-buffers-list)
  ("C-x b" . helm-mini)
  ("C-c o" . helm-occur)
  ("M-y" . helm-show-kill-ring)
  ("C-h f" . helm-apropos)
  ("C-c C-v" . helm-semantic-or-imenu)
  ("C-h r" . helm-info-emacs)
  ("C-x C-f" . helm-find-files)
  ("C-h C-l" . helm-locate-library)
  ("C-h i" . helm-info-at-point)
  )

(use-package ox-reveal
  :init
  (setq org-reveal-root "file:///F:/emacs25/libexec/emacs/25.0.94/home/.emacs.d/private/reveal.js-3.3.0/"))


;; (use-package auto-save
;;   :init
;;   (setq auto-save-slient t)
;;  )

;; (auto-save-enable)
;; (use-package gpicker
;;   :init
;;   (push "~/.emacs.d/private/gpicker/" load-path)
;;   (setq *gpicker-project-dir* "F:/")
;;   ;;:bind ("C-x f" . gpicker-find-file)
;;   )

;; (use-package everything
;;   :init
;;   (setq everything-ffap-integration nil)
;;   (setq everything-cmd "F:/emacs25/libexec/emacs/25.0.94/home/.emacs.d/private/es.exe")
;;   :bind ("C-x f" . everything)
;;   )

;; (use-package find-file-in-project
;;   :init
;;   (setq ffip-project-root "/")
;;   ;; well, I'm not interested in concatenated BIG js file or file in dist/
;;   (setq ffip-find-options "-not -size +64k -not -iwholename '*/dist/*'")
;;   ;; for this project, I'm only interested certain types of files
;;   ;;(setq ffip-patterns '("*.html" "*.js" "*.css" "*.java" "*.xml" "*.el"))
;;   ;; exclude below directories and files
;;   (setq ffip-prune-patterns '("*/.metadata/*" "*/classes/*"))

;;   (if (eq system-type 'windows-nt)
;;       ;; Native Windows
;;       (setq ffip-project-root "F:/emacs25")
;;     )

;;   ;;:bind ("C-x f" . find-file-in-project)
;;   :bind ("C-c f" . find-file-in-project-by-selected)
;;   )


;;org-octopress
;; (use-package org-octopress
;;   :init
;;   (setq org-octopress-directory-top       "F:/octopress/source")
;;   (setq org-octopress-directory-posts     "F:/octopress/source/_posts")
;;   (setq org-octopress-directory-org-top   "F:/octopress/source")
;;   (setq org-octopress-directory-org-posts "F:/octopress/source/blog")
;;   (setq org-octopress-setup-file          "F:/octopress/source/setupfile.org"))

 ;;myConfig end
 )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#272822" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(evil-toggle-key "")
 '(helm-gtags-auto-update t)
 '(helm-gtags-ignore-case t)
 '(helm-gtags-path-style (quote relative))
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#49483E" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#49483E" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-sexp-background-color "#efebe9")
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-selected-packages
   (quote
    (auto-indent-mode jedi-core python-environment pydoc-info importmagic epc concurrent deferred ob-ipython dash-functional material-theme smartrep ein websocket py-autopep8 flycheck-pyflakes elpy find-file-in-project ivy erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks cygwin-mount fiplr grizzl sr-speedbar helm-gtags emmet-mode web-mode emoji-cheat-sheet-plus company-emoji org-bullets json-mode json-snatcher json-reformat coffee-mode ac-js2 skewer-mode js2-mode simple-httpd flymd mmm-mode markdown-toc markdown-mode gh-md org-octopress ctable orglue org-mac-link epic htmlize pyvenv pytest pyenv-mode py-yapf pip-requirements hy-mode helm-pydoc cython-mode company-anaconda anaconda-mode pythonic f switch-window whole-line-or-region ibuffer-projectile session ox-reveal ace-jump-mode xterm-color shell-pop multi-term eshell-prompt-extras esh-help flycheck-pos-tip flycheck helm-company helm-c-yasnippet company-statistics company-quickhelp pos-tip company auto-yasnippet yasnippet ac-ispell auto-complete zenburn-theme monokai-theme solarized-theme smeargle orgit magit-gitflow helm-gitignore request gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger evil-magit magit magit-popup git-commit with-editor ws-butler window-numbering volatile-highlights vi-tilde-fringe spaceline s powerline smooth-scrolling restart-emacs rainbow-delimiters popwin persp-mode pcre2el paradox hydra spinner page-break-lines open-junk-file neotree move-text macrostep lorem-ipsum linum-relative leuven-theme info+ indent-guide ido-vertical-mode hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-args evil-anzu anzu eval-sexp-fu highlight elisp-slime-nav define-word clean-aindent-mode buffer-move bracketed-paste auto-highlight-symbol auto-compile packed dash aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async quelpa package-build use-package which-key bind-key bind-map evil spacemacs-theme)))
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(speedbar-hide-button-brackets-flag t)
 '(speedbar-show-unknown-files t)
 '(speedbar-smart-directory-expand-flag t)
 '(speedbar-use-images nil)
 '(sr-speedbar-auto-refresh nil)
 '(sr-speedbar-max-width 30)
 '(sr-speedbar-right-side nil)
 '(sr-speedbar-skip-other-window-p t)
 '(sr-speedbar-width 20)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#49483E" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
