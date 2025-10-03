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
   '("8df271b95462b5441d2bf6bf7e788e5875d8881c6e3ecd4a72451f4723c7ce4c"
     "299c5ff73c3e0fb6d08ae3b337578e9e3725fa2b087bc1ab116489f0818134f7"
     "e17487045d287a2619f08c4d923a26fb07be2df58eedbef973789480c080345b"
     "f7255b9830f66c322da648fa3fe6e697ca69c8b8b54c72a4cfc5eafe7a75a5ef"
     "19d07998cb84e362c99640904cbf0d202fe9712f8e9584b2c4af6f7bdc7e4148"
     "b912bf450512a2018310db509c000b4dbf7e2cb8c74e996c7cbae59b7fa1edea"
     "825ecb29254db7ac3704a2d1f0d178fba2bf96544db5b8eefaa62bb8fcc65dc3"
     "fa3aefcd69d90a21e4efbb07e35d62df4aa161820bbb0f8e3b3a6c2e1c6db743"
     "7fe72e94a1f9034ca3daafad61a9e957168cdbcabb22b4a6a57a9f8d028be88b"
     "939299334c12a2bdba7cb8bd2eab1bac66798125b628a2572653bafa62984aab"
     "872b71616a92b0f4f849a223073d9107fb35650385c0046d34452b57228c6b6e"
     "4720b9e4bba3626a980558a65e4c8b3ae799a26f0b464a69b185ff5aaf107274"
     "c17ee75652ab93f1bb4ec01f1ab6ee5116a238f21923a5d1fc7a0a9665bfdf3f"
     "0dce5c7b1a3c5219c6b2b2767b4bec9ae19bda5dbe7e3d005e444c6a0893fd92"
     "8391a7ce4990f0f888e4b10e3428d4395758daf54534c43bdf793d3e3c57f9cf"
     "62e3f4b75bd7dc9bcb2ad2c036afc4da5c3f1fdd61eef523e3d43ec17c8fbadb"
     "e5656c2f4ad62c78c0f3cdaed1e012032574ece66baa0a3c69dff102c17b1cf3"
     "a0eae714fb70bedaac4369f7ed1e3d5ab46f5c9a2e0d8173c60ac2e97faaddb6"
     "ce4d5a04e9fddfc68d4b7970a89d764ff1c8698935b282b816fc3cb546fbbd05"
     "de8c7d51c30472840806fc36d5b10af53e0584a0db797bb8e7e18b5841cfe892"
     "dd3492e005ad95b761f507174b085f936b0e0f4c81e9f64ad2bca6dedb94dac1"
     "e39e581293716fb8195fedeb69f50336347899e320352b76f670ec1f81155e74"
     "5e4865949153072a5991678ba6d4fae98c0c227790a68165a28eea185369157d"
     "4344bd681d8472f482a58b010770587f0b980214d796121f2d463f40aebf6926"
     "c8a6ababd69b91deba7284f156c0a2ec615215434aeca0cf36590fdb96dd0c58"
     "5f718188e0d4a8d4c3aa8c963882dbc1e07e1bc2a06dbee229ba97ec9509613c"
     "e49fb647ec571a952b5848ac10fd4a18c021d5ce0ff43cfff8a96066f4614724"
     "c744e232bfb53d3487e2b64b72521278551b5cb1c0569adaa9997080647a1c24"
     "849106058070e2b10af2974cd1ffd3432ee8db84ca9b4797fefaa8d653d58d51"
     "69cb9ac6b8fe34eddbd1b3d2a143d2ddb7fb8b90eb35af9fa661ebf7f9e612a3"
     "9ecf6f5b90da5eb9b7d2dd9f716d24ff88525c35580627ba5d6f07052cce9adc"
     "53fa107007750adc936c3572aa329a5ccdc3e462dfcf3a3ee7742ec21fcf1277"
     "dad6f51b5907e3bab20e8e8745062d96bfed8b8aef31e50f82c3f67e89bf74ca"
     "f8d6c80c6da70dd054d42755f46c305e09966a3b1b96ab2b76beac54ff690678"
     "4e60f4daed252877a303e3e82e4da2709fdc49be662046ef188b6625e9cdb09b"
     "9a647f02094a23b19de52af523d798afea3bcccdc8f4ebd63f067acd794beec7"
     "10f88ec53f01a73eb4ac410316a3ab62128419db896a8135649850ca3b3fc187"
     "dbdc789abc3ea83ce87e67780b3d96182f19ac63d06135f70cf23e7c6ed34037"
     "d74ab1838fe1e0a4dadc50441b6145418e073921e619847c959cb3d92904c217"
     "8381698df75f6157af173700bbd7d06f5bc8d291d43dcdcbe2f42d06521eb332"
     "9bddff2a01d18d63d59e668edb0bbf69306ddc770054ca99c4b11e8aeea22ce1"
     "f52053d634ce9b996234acbb2085a50f7e198fabb1f1ab361f6f0f3b15434ea3"
     "2137c1c44aada10bc6fa24327132b90001d0032cdea300b62f42ff6300576e37"
     "9197b55c4d9f9ad3fce1703ee13af31587eb9367a069c2b8496c87d67a7973b8"
     "cb076a9838a2274e7f7ab34eebdd4496946744191cdd2eea41fa740fc1b38be9"
     "6e8d30f3c7bb0c094c3f857db160b2271ea976f6d225088210fd9571c553657c"
     "538d8ee820537573605c3432ff54187594ebf5161d28c437c72477d5d5979a4e"
     "0085fc779c87e5f102c22899c94480c4592cbec299010680748b879cde3e6d43"
     "8518952ad3b9637b1d5b124e898ea0b80c3b3672cadde503a6181b8a31429987"
     "d30862d0006c468cd6894e113fa013725b42a98b85152d4421165f0a100da890"
     "16a98aa7275d7630ad261b78e7c9ae619fa927b616e296357b4effc02ca94c67"
     "c88bf26ab14abd8c2f4f53244b3432ba02c676494d74edcd1d7c8b5dc0deb5dd"
     "0b95863af97a35d496550f5b31e0a983e2b307ff56a8da421199c3582427d5a6"
     "8ceabff283136b184f097f6c6cf196284bd8f42b4aa1fc4c01ae1f8ed363c5db"
     "e1d4f36173bed9ea718e4c30b16af7ad56bf54e108f31d8277406acaa2404437"
     "db131fffb5ade0858db828b62fa0b3bf71c3cf7e38b6072b2090c442ea66a629"
     "356440b6930efb4b8d8ca5ca007b08efe9a8a7606f1470ce290fa1b4db17c04d"
     "dd97a39e50cd85db11d079316d5c2140b85e552d24062564db635e6981a6a246"
     "4837a112a8d21c3cf8b0023292ab7d422f44b0a26e2bc13a8ebe5e48b8c3ad48"
     "af5c530072f82226b4875d00c8b9e1a128ea5b36466a53ebc02d4de4f72bdf15"
     "9af6d6890b50e6eb6b4585468896bdb26476097413d9a26c60a0d71513108c23"
     "da8107b354b3d9b1035391437283bc8e99be45affe4368dc8e6bcfd2f554b4f3"
     "a9f3a409991fe7a42d3301d0598bd599cef851abc29957b0f3d24b52a739b6f6"
     "acfe7ff6aacb9432f124cde4e35d6d2b4bc52916411de73a6ccded9750c9fa97"
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
   '(auctex catppuccin-theme clang-format company-irony company-jedi
	    corfu csv-mode doom-modeline doom-themes elpy evil
	    exotica-theme flycheck gruber-darker-theme gruvbox-theme
	    highlight-indent-guides ido-completing-read+ imenu-list
	    jetbrains-darcula-theme lsp-ui magit minimal-theme
	    nord-theme org-present pdf-tools projectile smex tao-theme
	    vscode-dark-plus-theme vterm)))
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

(add-to-list 'custom-theme-load-path "~/.config/emacs/themes")
(load-theme 'white t)
;(load-theme 'black t)

(set-face-attribute 'default nil :font "Iosevka-12")
;(set-face-attribute 'default nil :font "Jetbrains Mono-11")
;(set-face-attribute 'default nil :font "Atkinson Hyperlegible Mono-11.5")
(setq-default line-spacing 0.0)

(unless (package-installed-p 'nerd-icons)
  (package-install 'nerd-icons))

(unless (package-installed-p 'doom-modeline)
  (package-install 'doom-modeline))
(doom-modeline-mode 0)

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
;;; Whitespace mode
(defun rc/set-up-whitespace-handling ()
  (interactive)
  (whitespace-mode 1)
  (add-to-list 'write-file-functions 'delete-trailing-whitespace))

(add-hook 'tuareg-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'c++-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'c-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'simpc-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'emacs-lisp-mode 'rc/set-up-whitespace-handling)
(add-hook 'java-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'lua-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'rust-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'scala-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'markdown-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'haskell-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'python-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'erlang-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'asm-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'fasm-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'go-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'nim-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'yaml-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'porth-mode-hook 'rc/set-up-whitespace-handling)

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


