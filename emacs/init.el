(setq inhibit-splash-screen t)
(menu-bar-mode -1)
(scroll-bar-mode 0)
(tool-bar-mode -1)

(setq scroll-margin 8)
(setq scroll-step 1
      scroll-conservatively 101
      scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01)


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

(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))

(set-face-attribute 'default nil :font "Iosevka-13")
(setq default-frame-alist '((font . "Iosevka-13")))

(unless (package-installed-p 'nerd-icons)
  (package-install 'nerd-icons))

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
  (setq company-idle-delay 0.01)          
  (setq company-minimum-prefix-length 1)
  (setq company-show-numbers t)
  ;; Add clang backend for C/C++ modes
  (add-to-list 'company-backends 'company-clang))

(add-hook 'c-mode-hook 'company-mode)
(add-hook 'c++-mode-hook 'company-mode)

(unless (package-installed-p 'clang-format)
  (package-refresh-contents)
  (package-install 'clang-format))
(setq clang-format-style "Google")

(use-package projectile
  :ensure t
  :config
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c g") 'projectile-grep)
  )

;; julia

(use-package julia-mode
  :ensure t
  )

;; c-stuff
(defun my-c-mode-hook ()
  (c-set-style "gnu")     ; or "bsd", "java", "k&r", etc.
  (setq c-basic-offset 4)
  (setq indent-tabs-mode nil))

(add-hook 'c-mode-hook 'my-c-mode-hook)


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
(setq TeX-view-program-selection '((output-pdf "Okular"))
      TeX-source-correlate-start-server t)

(setq TeX-view-program-list
      '(("Okular" "okular --unique %o#src:%n%b")))
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
(which-function-mode 1)

(use-package elpy
  :ensure t
  :init
  (elpy-enable))
(setq elpy-rpc-python-command "python3")
(setq elpy-rpc-verbose t)
(setq mode-line-format
      (list
       '(:eval (which-function))))

(use-package pyvenv
  :ensure t)
(require 'pyvenv)

;; Optional: automatically update environment for Elpy
(add-hook 'pyvenv-post-activate-hooks
          (lambda ()
            (elpy-rpc-restart)))  ;; Restart Elpy to use the venv

;; terminal
(use-package vterm
  :ensure t)

;; csv
(use-package csv-mode 
  :ensure t
  :init 
  )

(use-package org-present 
  :ensure t
  :init 
  )

;; pdf
(use-package pdf-tools
  :ensure t
  :config
  (pdf-tools-install))

;; imenu
(use-package imenu-list
  :ensure t
  :config)

; rebinds
;; files
(global-set-key (kbd "C-c a") 'ff-find-other-file)
(global-set-key (kbd "C-c C-a ") 'ff-find-other-file-other-window)

;; imenu
(global-set-key (kbd "C-c i") 'imenu-list)

;; other stuff
(evil-set-undo-system 'undo-redo)

