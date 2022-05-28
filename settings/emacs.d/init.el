(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(awesome-tray-mode-line-active-color "#0031a9")
 '(awesome-tray-mode-line-inactive-color "#d7d7d7")
 '(custom-safe-themes
   '("f0eb51d80f73b247eb03ab216f94e9f86177863fb7e48b44aacaddbfe3357cf1" "02fff7eedb18d38b8fd09a419c579570673840672da45b77fde401d8708dc6b5" "c414f69a02b719fb9867b41915cb49c853489930be280ce81385ff7b327b4bf6" "76b4632612953d1a8976d983c4fdf5c3af92d216e2f87ce2b0726a1f37606158" "ba9c91bc43996f2fa710e4b5145d9de231150103e142acdcf24adcaaf0db7a17" "171d1ae90e46978eb9c342be6658d937a83aaa45997b1d7af7657546cae5985b" "9b4ae6aa7581d529e20e5e503208316c5ef4c7005be49fdb06e5d07160b67adc" default))
 '(exwm-floating-border-color "#888888")
 '(fci-rule-color "#778ca3")
 '(flymake-error-bitmap '(flymake-double-exclamation-mark modus-themes-fringe-red))
 '(flymake-note-bitmap '(exclamation-mark modus-themes-fringe-cyan))
 '(flymake-warning-bitmap '(exclamation-mark modus-themes-fringe-yellow))
 '(highlight-changes-colors nil)
 '(highlight-changes-face-list '(success warning error bold bold-italic))
 '(hl-todo-keyword-faces
   '(("HOLD" . "#70480f")
     ("TODO" . "#721045")
     ("NEXT" . "#5317ac")
     ("THEM" . "#8f0075")
     ("PROG" . "#00538b")
     ("OKAY" . "#30517f")
     ("DONT" . "#315b00")
     ("FAIL" . "#a60000")
     ("BUG" . "#a60000")
     ("DONE" . "#005e00")
     ("NOTE" . "#863927")
     ("KLUDGE" . "#813e00")
     ("HACK" . "#813e00")
     ("TEMP" . "#5f0000")
     ("FIXME" . "#a0132f")
     ("XXX+" . "#972500")
     ("REVIEW" . "#005a5f")
     ("DEPRECATED" . "#201f55")))
 '(ibuffer-deletion-face 'modus-themes-mark-del)
 '(ibuffer-filter-group-name-face 'modus-themes-pseudo-header)
 '(ibuffer-marked-face 'modus-themes-mark-sel)
 '(ibuffer-title-face 'default)
 '(mini-modeline-face-attr '(:background unspecified))
 '(nrepl-message-colors
   '("#00afef" "#778ca3" "#009c9f" "#778ca3" "#005cc5" "#fa1090" "#009c9f" "#778ca3"))
 '(org-src-block-faces 'nil)
 '(package-selected-packages
   '(modus-themes org-modern jedi org-roam company-c-headers format-all))
 '(pdf-view-midnight-colors '("#778ca3" . "#eaeafa"))
 '(tetris-x-colors
   [[229 192 123]
    [97 175 239]
    [209 154 102]
    [224 108 117]
    [152 195 121]
    [198 120 221]
    [86 182 194]])
 '(vc-annotate-background "#04c4c7")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#778ca3")
     (40 . "#00afef")
     (60 . "#778ca3")
     (80 . "#778ca3")
     (100 . "#778ca3")
     (120 . "#009c9f")
     (140 . "#778ca3")
     (160 . "#778ca3")
     (180 . "#778ca3")
     (200 . "#778ca3")
     (220 . "#009c9f")
     (240 . "#005cc5")
     (260 . "#fa1090")
     (280 . "#778ca3")
     (300 . "#005cc5")
     (320 . "#778ca3")
     (340 . "#009c9f")
     (360 . "#778ca3")))
 '(vc-annotate-very-old-color "#778ca3")
 '(widget-image-enable nil)
 '(widget-link-prefix "[")
 '(widget-link-suffix "]")
 '(widget-mouse-face '(highlight widget-button))
 '(widget-push-button-prefix "[")
 '(widget-push-button-suffix "]")
 '(x-underline-at-descent-line t)
 '(xterm-color-names
   ["black" "#a60000" "#005e00" "#813e00" "#0031a9" "#721045" "#00538b" "gray65"])
 '(xterm-color-names-bright
   ["gray35" "#972500" "#315b00" "#70480f" "#2544bb" "#8f0075" "#30517f" "white"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Configuração básica do emacs
(setq inhibit-startup-message t) ; remove mensagem inicial de ajuda

(tool-bar-mode -1)               ; Oculta barra de ferramentas
(menu-bar-mode -1)               ; Oculta barra de menu
(scroll-bar-mode -1)             ; Oculta barra de rolagem
(tooltip-mode -1)                ; Oculta dicas

(global-display-line-numbers-mode t) ; Exibe numero de linhas
(column-number-mode t)               ; Exibe coluna atual na modeline
(global-hl-line-mode t)              ; Exibe destaque de linha

(setq visible-bell t)                ; Alerta visual

(global-visual-line-mode t)          ; Quebra de linha
(setq backup-directory-alist `(("." . "~/.saves")))


;; Fonte
(set-face-attribute 'default nil :height 100)

;; Ativação do org-mode
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)


;; Configuração Org-roam
;; diretório dos nós
(setq org-roam-directory (file-truename "~/org-roam"))
(global-set-key (kbd "C-c n l") #'org-roam-buffer-toggle)
(global-set-key (kbd "C-c n f") #'org-roam-node-find)
(global-set-key (kbd "C-c n i") #'org-roam-node-insert)


;; Org-roam - controlar como o popup do buffer é exibido
(add-to-list 'display-buffer-alist
	     '("\\*org-roam\\*"
	       (display-buffer-in-direction)
	       (direction . right)
	       (window-width . 0.33)
               (window-height . fit-window-to-buffer)))

;; Configuração do jedi
;; instalar python3-virtualenv
;; M-x jedi:install-server
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)


;; Melhora o auto revert (variavel que cuida da atualização
;; da mode line sobre controle de versionament
(setq auto-revert-check-vc-info  t)


;; Definindo tema - desabilitado porque estou carregando um tema dentro do load-org-modern.el
;; (load-theme 'leuven t) 

;; Carrega org-modern de um arquivo separado
(load "~/.emacs.d/load-org-modern.el")

;; Muda C-c C-p para subir um IPython3
 (setq python-shell-interpreter "ipython3"
        python-shell-interpreter-args "-i --simple-prompt --InteractiveShell.display_page=True")

;; Adicionar env python para ler pacotes
(setq jedi:server-args
      '("--virtual-env" "/home/franklint/Projects/flask-fluente/env"))

