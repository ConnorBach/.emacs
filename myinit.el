(setq org-src-fontify-natively t
    org-src-tab-acts-natively t
    org-confirm-babel-evaluate nil
    org-edit-src-content-indentation 0)

(setq inhibit-startup-screen t)
(global-display-line-numbers-mode)
(tool-bar-mode -1)

(set-default-font "Fira Code-14")
(load-theme 'gruvbox-light-soft t)

(setq visible-bell 0)
(setq ring-bell-function 'ignore)

(setq-default tab-width 2)

(global-hl-line-mode 1)
(scroll-bar-mode 0)

(add-to-list 'exec-path "~/bin")
;; set emacs path to osx path
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; evil mode for vim keybindings
(require 'evil)
(evil-mode 1)
;; get control U to work (define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
;; (define-key evil-visual-state-map (kbd "C-u") 'evil-scroll-up)
;; (define-key evil-insert-state-map (kbd "C-u")
;;   (lambda ()
;;     (interactive)
;;     (evil-delete (point-at-bol) (point))))

(require 'key-chord)
(key-chord-mode 1)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)

;; ido mode enabled
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(require 'org-ref)
(setq org-latex-pdf-process (list "latexmk -shell-escape -bibtex -f -pdf %f"))

(setq reftex-default-bibliography '("~/Documents/ND/references.bib"))

;; see org-ref for use of these variables
(setq org-ref-bibliography-notes "~/Documents/ND/notes.org"
      org-ref-default-bibliography '("~/Documents/ND/references.bib")
      org-ref-pdf-directory "~/Documents/ND/bibtex-pdfs/")

(setq backup-directory-alist `(("." . "~/.saves")))

;; set spellchecker
(setq ispell-program-name "/usr/local/bin/aspell")

;; create minor mode for writing
(define-minor-mode writer-mode
  "Enables flyspell spellchecker, and autofill-mode for text wrapping"
  :lighter "write mode"
  (auto-fill-mode)
  (flyspell-mode)
  (wc-mode))

;; setup smex for ido fuzzy matching on M-x
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; change buffer switching menu
(defalias 'list-buffers 'ibuffer)

;; window switching
(use-package ace-window
	     :ensure t
	     :init
	     (progn
	       (global-set-key [remap other-window] 'ace-window)
	       (custom-set-faces
		'(aw-leading-char-face
		  ((t (:inherit ace-jump-face-foreground :height 3.0)))))
	       ))
;; turn noise off

(use-package lsp-mode
  :hook (prog-mode . lsp))

(use-package lsp-ui)
(use-package company-lsp)

(use-package tide
  :ensure t
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         (before-save . tide-format-before-save)))

(add-hook 'js2-mode-hook #'setup-tide-mode)
;; configure javascript-tide checker to run after your default javascript checker
;;(flycheck-add-next-checker 'javascript-eslint 'javascript-tide 'append)

(defun eshell/clear ()
  "Clear the eshell buffer."
  (let ((inhibit-read-only t))
    (erase-buffer)
    (eshell-send-input)))

(use-package company
	:ensure t
	:config
	(setq company-idle-delay 0)
	(setq company-minimum-prefix-length 3)
	(global-company-mode t))

(use-package md4rd :ensure t
  :config
  (add-hook 'md4rd-mode-hook 'md4rd-indent-all-the-lines)
  (setq md4rd-subs-active '(emacs programming guitar tennis politics)))

(use-package magit
	:ensure t
	:config
	)

(global-set-key (kbd "C-x g") 'magit-status)

(use-package elixir-mode
:ensure t)
