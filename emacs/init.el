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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(magit yasnippet lsp-mode projectile corfu evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(use-package catppuccin-theme
  :ensure t
  :config
  ;; Set the Catppuccin flavor (mocha, latte, macchiato, frappe)
  (setq catppuccin-flavor 'mocha) ;; or any other flavor
  (load-theme 'catppuccin t))

(load-theme 'catppuccin :no-confirm)
(setq catpuccin-flavor 'mocha)

(set-face-attribute 'default nil :font "Iosevka-11.5")

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

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

;; company

(unless (package-installed-p 'company)
  (package-refresh-contents)
  (package-install 'company))

(add-hook 'after-init-hook 'global-company-mode)

(setq company-idle-delay 0.2)          
(setq company-minimum-prefix-length 1)
(setq company-show-numbers t)  

;; c/c++
(add-hook 'c-mode-hook 'company-mode)
(add-hook 'c++-mode-hook 'company-mode)
(add-to-list 'company-backends 'company-clang)

;; python
(add-hook 'python-mode-hook 'company-mode)
(add-to-list 'company-backends 'company-anaconda)

(use-package projectile
  :ensure t
  :config
  (projectile-mode +1)
  ;;(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-switch-project)
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
  :init (setq markdown-command "multimarkdown"))
