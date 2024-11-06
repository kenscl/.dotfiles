(setq inhibit-splash-screen t)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
(global-set-key (kbd "C-c c") 'compile)


(add-hook 'c-mode-hook (lambda () (c-set-style "linux")))
(setq indent-tabs-mode t)
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
 '(package-selected-packages
   '(auctex flycheck elpy magit yasnippet lsp-mode projectile corfu evil)))
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

(use-package catppuccin-theme
  :ensure t
  :config
  ;; Set the Catppuccin flavor (mocha, latte, macchiato, frappe)
  (setq catppuccin-flavor 'mocha) ;; or any other flavor
  (load-theme 'catppuccin t))

(load-theme 'catppuccin :no-confirm)
(setq catpuccin-flavor 'mocha)

(set-face-attribute 'default nil :font "Iosevka-11.5")


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
(unless (package-installed-p 'elpy)
  (package-refresh-contents)
  (package-install 'elpy))
(elpy-enable)

(unless (package-installed-p 'flycheck)
  (package-refresh-contents)
  (package-install 'flycheck))

(add-hook 'after-init-hook #'global-flycheck-mode)

;; company

;; Ensure 'company-mode' is installed and loaded before setting backends
(unless (package-installed-p 'company)
  (package-refresh-contents)
  (package-install 'company))

;; Enable company-mode globally
(add-hook 'after-init-hook 'global-company-mode)

;; Ensure company is loaded before modifying company-backends
(with-eval-after-load 'company
  (setq company-idle-delay 0.2)          
  (setq company-minimum-prefix-length 1)
  (setq company-show-numbers t)
  ;; Add clang backend for C/C++ modes
  (add-to-list 'company-backends 'company-clang))

;; Enable company mode in C/C++ modes
(add-hook 'c-mode-hook 'company-mode)
(add-hook 'c++-mode-hook 'company-mode)

;; Python (optional, commented out)
;; (add-hook 'python-mode-hook 'company-mode)
;; (with-eval-after-load 'company

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
  :init (setq markdown-command "multimarkdown"))

(setq make-backup-files nil)

;; LaTex
(unless (package-installed-p 'auctex)
  (package-refresh-contents)
  (package-install 'auctex))


