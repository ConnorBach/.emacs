(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
'("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
(package-refresh-contents)
(package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
	 ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
	 (quote
		("bf390ecb203806cbe351b966a88fc3036f3ff68cd2547db6ee3676e87327b311" "571a762840562ec5b31b6a9d4b45cfb1156ce52339e188a8b66749ed9b3b22a2" "0f1733ad53138ddd381267b4033bcb07f5e75cd7f22089c7e650f1bb28fc67f4" "37c5cf50a60548aa7e01dbe36fd8bb643af7502d55d26f000070255a6b21c528" "bd0c3e37c53f6515b5f5532bdae38aa0432a032171b415159d5945a162bc5aaa" "97b8bf2dacc3ae8ffbd6f0a76c606a659a0dbca5243e55a750cbccdad7efb098" "bee55ba5e878d0584db9b2fb33f75c348a3008fcfe8e05ab8cae897ca604fd95" "bf39b2d814971a6eaf4e9adde3b11016b742fe68dfe4c38667497821525a1662" "9f08dacc5b23d5eaec9cccb6b3d342bd4fdb05faf144bdcd9c4b5859ac173538" "8abc02cbf62cc9efb0e571233387866b9b26c3c4e8ab75148b502f0646b46225" "030346c2470ddfdaca479610c56a9c2aa3e93d5de3a9696f335fd46417d8d3e4" "79dc2bcd864232143f961d46454c2252bb705b691967b61558e038e8497ff2e5" "36c3457b6b364cc93f2d52e2d9b9ec32bab75b27f5bd2394757657f18f4d324e" "e2fd81495089dc09d14a88f29dfdff7645f213e2c03650ac2dd275de52a513de" "a622aaf6377fe1cd14e4298497b7b2cae2efc9e0ce362dade3a58c16c89e089c" "47ec21abaa6642fefec1b7ace282221574c2dd7ef7715c099af5629926eb4fd7" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "595617a3c537447aa7e76ce05c8d43146a995296ea083211225e7efc069c598f" default)))
 '(fci-rule-color "#073642")
 '(frame-brackground-mode (quote dark))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
	 (--map
		(solarized-color-blend it "#002b36" 0.25)
		(quote
		 ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
	 (quote
		(("#073642" . 0)
		 ("#546E00" . 20)
		 ("#00736F" . 30)
		 ("#00629D" . 50)
		 ("#7B6000" . 60)
		 ("#8B2C02" . 70)
		 ("#93115C" . 85)
		 ("#073642" . 100))))
 '(hl-bg-colors
	 (quote
		("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
	 (quote
		("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
	 (quote
		("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-selected-packages
	 (quote
		(elixir-mode nord-theme kaolin-themes magit gruber-darker-theme md4rd company-lsp lsp-ui golden-ratio lsp-mode tide web-mode wc-mode use-package sx solarized-theme smex org-ref org json-mode js2-mode gruvbox-theme flycheck exec-path-from-shell evil cider auto-complete ace-window)))
 '(pdf-view-midnight-colors (quote ("#282828" . "#f2e5bc")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(savehist-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
	 (quote
		((20 . "#dc322f")
		 (40 . "#c9485ddd1797")
		 (60 . "#bf7e73b30bcb")
		 (80 . "#b58900")
		 (100 . "#a5a58ee30000")
		 (120 . "#9d9d91910000")
		 (140 . "#9595943e0000")
		 (160 . "#8d8d96eb0000")
		 (180 . "#859900")
		 (200 . "#67119c4632dd")
		 (220 . "#57d79d9d4c4c")
		 (240 . "#489d9ef365ba")
		 (260 . "#3963a04a7f29")
		 (280 . "#2aa198")
		 (300 . "#288e98cbafe2")
		 (320 . "#27c19460bb87")
		 (340 . "#26f38ff5c72c")
		 (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
	 (quote
		(unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
	 ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
	 ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
