; init stuff 
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


;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
;; this line is only needed if I want to update/install plugins :), use M-x package-refresh-contents instead
;;(package-refresh-contents)

;; evil
(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  (define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
  (define-key evil-visual-state-map (kbd "C-u") 'evil-scroll-up)
  (define-key evil-insert-state-map (kbd "C-u")
  (setq evil-want-keybinding nil)
  (lambda ()
    (interactive)
    (evil-delete (point-at-bol) (point))))
  )

(use-package evil-collection
  :ensure t
  :config
  (when (require 'evil-collection nil t)
    (evil-collection-init))
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

; theme 
(use-package zenburn-theme
  :ensure t)

(load-theme 'zenburn t)

; font
(set-face-attribute 'default nil :font "Iosevka-13")
(setq default-frame-alist '((font . "Iosevka-13")))

(unless (package-installed-p 'nerd-icons)
  (package-install 'nerd-icons))

; language stuff

;; eglot
(use-package eglot
  :hook ((c-mode . eglot-ensure)
         (c++-mode . eglot-ensure)))

;; c/c++
(setq c-basic-offset 4)
(setq c-default-style '((java-mode . "java")
                        (awk-mode . "awk")
                        (other . "linux")))

;; cmake
(use-package cmake-mode)
(add-to-list 'auto-mode-alist '("CMakeLists\\.txt\\'" . cmake-mode))
(add-to-list 'auto-mode-alist '("\\.cmake\\'" . cmake-mode))

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

;; ido
(require 'ido)
(ido-mode t)
(ido-everywhere t)
;; ido enhancements
(use-package smex
  :ensure t
  :config
  (global-set-key (kbd "M-x") 'smex)
  )

;; imenu
(use-package imenu-list
  :ensure t
  :config)

; rebinds
(global-set-key (kbd "C-c c") 'compile)

;; files
(global-set-key (kbd "C-c a") 'ff-find-other-file)
(global-set-key (kbd "C-c C-a ") 'ff-find-other-file-other-window)

;; imenu
(global-set-key (kbd "C-c i") 'imenu-list)

;; other stuff
(evil-set-undo-system 'undo-redo)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(auctex catppuccin-theme clang-format company-irony company-jedi
	    corfu csv-mode doom-modeline doom-themes elpy evil
	    evil-collection exotica-theme flycheck gruber-darker-theme
	    gruvbox-theme highlight-indent-guides ido-completing-read+
	    imenu-list indent-guide jetbrains-darcula-theme julia-mode
	    lsp-ui magit material-theme minimal-theme nord-theme
	    org-present pdf-tools projectile smex tao-theme
	    vscode-dark-plus-theme vterm zenburn-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
