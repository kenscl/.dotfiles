(setq inhibit-splash-screen t)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
(global-set-key (kbd "C-c c") 'compile)


;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
;; this line is only needed if I want to update/install plugins :), use M-x package-refresh-contents instead
;;(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)
(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-visual-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-insert-state-map (kbd "C-u")
  (lambda ()
    (interactive)
    (evil-delete (point-at-bol) (point))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("acfe7ff6aacb9432f124cde4e35d6d2b4bc52916411de73a6ccded9750c9fa97"
     "dc15dbd4b0a00c64610fd4379a89424e0be1b418f09457e0f062cac931e8ca82"
     "0325a6b5eea7e5febae709dab35ec8648908af12cf2d2b569bedc8da0a3a81c1"
     "456697e914823ee45365b843c89fbc79191fdbaff471b29aad9dcbe0ee1d5641"
     "9e36779f5244f7d715d206158a3dade839d4ccb17f6a2f0108bf8d476160a221"
     "014cb63097fc7dbda3edf53eb09802237961cbb4c9e9abd705f23b86511b0a69"
     "7964b513f8a2bb14803e717e0ac0123f100fb92160dcf4a467f530868ebaae3e"
     "7ec8fd456c0c117c99e3a3b16aaf09ed3fb91879f6601b1ea0eeaee9c6def5d9"
     "7c28419e963b04bf7ad14f3d8f6655c078de75e4944843ef9522dbecfcd8717d"
     "e14884c30d875c64f6a9cdd68fe87ef94385550cab4890182197b95d53a7cf40"
     "691d671429fa6c6d73098fc6ff05d4a14a323ea0a18787daeb93fde0e48ab18b"
     "4e2e42e9306813763e2e62f115da71b485458a36e8b4c24e17a2168c45c9cf9d"
     "dccf4a8f1aaf5f24d2ab63af1aa75fd9d535c83377f8e26380162e888be0c6a9"
     "b5fd9c7429d52190235f2383e47d340d7ff769f141cd8f9e7a4629a81abc6b19"
     "571661a9d205cb32dfed5566019ad54f5bb3415d2d88f7ea1d00c7c794e70a36"
     "b754d3a03c34cfba9ad7991380d26984ebd0761925773530e24d8dd8b6894738"
     "6e13ff2c27cf87f095db987bf30beca8697814b90cd837ef4edca18bdd381901"
     "18a1d83b4e16993189749494d75e6adb0e15452c80c431aca4a867bcc8890ca9"
     "c4a66d0d9557de08eadd6cc25112bd7eb776d8c8754ed8cc4e1b16d0c317433c"
     "4d16802de4686030ed8f30b5a844713d68edec9cc07322bef54493d15e68d8cd"
     "e9aa348abd3713a75f2c5ba279aa581b1c6ec187ebefbfa33373083ff8004c7c"
     "6454421996f0508c38215a633256e36c19a28591542fb0946cfc40f1dceb89cf"
     default))
 '(package-selected-packages
   '(auctex catppuccin-theme clang-format company-irony corfu csv-mode
	    doom-modeline doom-themes elpy evil exotica-theme flycheck
	    gruber-darker-theme gruvbox-theme highlight-indent-guides
	    ido-completing-read+ jetbrains-darcula-theme lsp-ui magit
	    minimal-theme nord-theme org-present pdf-tools projectile
	    smex tao-theme vscode-dark-plus-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; spell checking
(setq ispell-program-name "aspell") 
(global-set-key (kbd "C-c s s") 'flyspell-correct-word-before-point)
(defun enable-english-spell-check ()
  (interactive)
  (setq ispell-local-dictionary "en")
  (flyspell-mode 1))

(defun enable-german-spell-check ()
  (interactive)
  (setq ispell-local-dictionary "de")
  (flyspell-mode 1))



(global-set-key (kbd "C-c e") 'enable-english-spell-check)
(global-set-key (kbd "C-c d") 'enable-german-spell-check)

(use-package autothemer
  :ensure t)

;(load-theme 'leuven t)
(unless (package-installed-p 'gruber-darker-theme)
  (package-install 'gruber-darker-theme))
;(load-theme 'gruber-darker t)

(unless (package-installed-p 'gruvbox-theme)
  (package-install 'gruvbox-theme))
;;(load-theme 'gruvbox-dark-hard t)

;; git clone https://github.com/konrad1977/pinerose-emacs.git ~/.config/emacs/themes/pinerose

;(add-to-list 'custom-theme-load-path "~/.config/emacs/themes/pinerose")
;(load-theme 'rose-pine t)

(add-to-list 'custom-theme-load-path "~/.config/emacs/themes")
(load-theme 'white t)

(unless (package-installed-p 'jetbrains-darcula-theme)
  (package-install 'jetbrains-darcula-theme))
;;(use-package jetbrains-darcula-theme
;;  :config
;;  (load-theme 'jetbrains-darcula t))

;(use-package doom-themes
;  :ensure t
;  :config
;  ;; Global settings (defaults)
;  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
;        doom-themes-enable-italic t) ; if nil, italics is universally disabled
;  (load-theme 'doom-opera-light t)
;
;  ;; Enable flashing mode-line on errors
;  (doom-themes-visual-bell-config)
;  ;; Enable custom neotree theme (nerd-icons must be installed!)
;  (doom-themes-neotree-config)
;  ;; or for treemacs users
;  (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
;  (doom-themes-treemacs-config)
;  ;; Corrects (and improves) org-mode's native fontification.
;  (doom-themes-org-config))

(use-package catppuccin-theme
  :ensure t
  :config
  ;; Set the Catppuccin flavor (mocha, latte, macchiato, frappe)
  (setq catppuccin-flavor 'mocha) ;; or any other flavor
  ;(load-theme 'catppuccin t)
  )

;;(load-theme 'catppuccin :no-confirm)

;(set-face-attribute 'default nil :font "Iosevka-11.5")
;(set-face-attribute 'default nil :font "Jetbrains Mono-11")
(set-face-attribute 'default nil :font "Atkinson Hyperlegible Mono-11.3")
(setq-default line-spacing 0.2)

(unless (package-installed-p 'nerd-icons)
  (package-install 'nerd-icons))

(unless (package-installed-p 'doom-modeline)
  (package-install 'doom-modeline))
(doom-modeline-mode 1)

;; company
;; Ensure 'company-mode' is installed and loaded before setting backends
(use-package lsp-mode
  :ensure t
  :hook ((c-mode c++-mode) . lsp)
  :commands lsp)

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)

(unless (package-installed-p 'company)
  (package-refresh-contents)
  (package-install 'company))

;; Enable company-mode globally
(add-hook 'after-init-hook 'global-company-mode)

;; Ensure company is loaded before modifying company-backends
(with-eval-after-load 'company
  (setq company-idle-delay 0.05)          
  (setq company-minimum-prefix-length 1)
  (setq company-show-numbers t)
  ;; Add clang backend for C/C++ modes
  (add-to-list 'company-backends 'company-clang))

(add-hook 'c-mode-hook 'company-mode)
(add-hook 'c++-mode-hook 'company-mode)

(unless (package-installed-p 'clang-format)
  (package-refresh-contents)
  (package-install 'clang-format))
(setq clang-format-style "llvm")

(use-package projectile
  :ensure t
  :config
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c g") 'projectile-grep)
  )

;; git stuff
(unless (package-installed-p 'magit)
  (package-refresh-contents)
  (package-install 'magit))
(use-package magit
  :ensure t
  :init
  )

;; markdown stuff
(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown")
  :bind (:map markdown-mode-map
         ("C-c C-e" . markdown-do)))

(setq make-backup-files nil)

;; LaTex
 	
(use-package tex
  :ensure auctex)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(set-default 'preview-scale-function 1.5)
(eval-after-load 'tex-mode
  '(define-key LaTeX-mode-map (kbd "C-c p") 'preview-buffer))
(eval-after-load 'tex-mode
  '(define-key LaTeX-mode-map (kbd "C-c P") 'preview-clearout))


;; lsp stuff
;; ido
(unless (package-installed-p 'smex)
  (package-refresh-contents)
  (package-install 'smex))

(unless (package-installed-p 'ido-completing-read+)
  (package-refresh-contents)
  (package-install 'ido-completing-read+))

(require 'smex)
(require 'ido-completing-read+)

(ido-mode t)
(ido-everywhere 1)
(ido-ubiquitous-mode 1)
(setq ido-enable-flex-matching t)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


;; python
(use-package elpy
  :ensure t
  :init
  (elpy-enable))
(setq elpy-rpc-python-command "python3")
(setq elpy-rpc-verbose t)

;; csv
(use-package csv-mode 
  :ensure t
  :init 
  )

(use-package org-present 
  :ensure t
  :init 
  )
(eval-after-load "org-present"
  '(progn
     (add-hook 'org-present-mode-hook
               (lambda ()
                 (org-present-big)
                 (org-display-inline-images)
                 (org-present-hide-cursor)
                 (org-present-read-only)))
     (add-hook 'org-present-mode-quit-hook
               (lambda ()
                 (org-present-small)
                 (org-remove-inline-images)
                 (org-present-show-cursor)
                 (org-present-read-write)))))

;; indent guides
(use-package highlight-indent-guides
  :ensure t
  :init 
  )
(setq highlight-indent-guides-method 'bitmap)
(setq highlight-indent-guides-bitmap-function 'highlight-indent-guides--bitmap-line)
(setq highlight-indent-guides-auto-character-face-perc 60)
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)


;; pdf

(use-package pdf-tools
  :ensure t
  :config
  (pdf-tools-install))


;; rebinds

(global-set-key (kbd "C-c a") 'ff-find-other-file)
(global-set-key (kbd "C-c C-a ") 'ff-find-other-file-other-window)
(evil-set-undo-system 'undo-redo)

