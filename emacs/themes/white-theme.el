(autothemer-deftheme
 white "A simple light theme"

 ;; Palette
 ((((class color) (min-colors #xFFFFFF))) ;; We're only concerned with graphical Emacs

  ;; Define our color palette
  (w-black      "#191919")
  (w-white      "#ffffff")
  (w-gray       "#3D3D3D")
  (w-l-gray     "#666666")
  (w-blue       "#276FBF")
  (w-purple     "#A63446")
  (w-ll-gray    "#C2C2C2")
  (w-viridian   "#2A7F62")
  )

 ;; Faces
 ((default                        (:foreground w-black :background w-white))
  (cursor                         (:background w-gray))
  (region                         (:background w-ll-gray))
  (fringe                         (:background w-white))
  
  ;; --- Mode line / minibuffer ---
  (mode-line                      (:background w-black :foreground w-white))
  (mode-line-inactive             (:background w-ll-gray :foreground w-gray))
  (mode-line-highlight            (:foreground w-blue :weight 'bold))
  (mode-line-buffer-id            (:foreground w-purple :weight 'bold))
  (mode-line-emphasis             (:foreground w-blue))
  (minibuffer-prompt              (:foreground w-blue :weight 'bold))

  (mode-line-modes            (:foreground w-black :background w-black))
  (evil-normal-state-tag      (:foreground w-white :background w-blue :weight 'bold))
  (evil-insert-state-tag      (:foreground w-white :background w-purple :weight 'bold))
  (evil-visual-state-tag      (:foreground w-white :background w-l-gray :weight 'bold))
  (evil-replace-state-tag     (:foreground w-white :background w-purple :weight 'bold))
  (evil-motion-state-tag      (:foreground w-white :background w-blue :weight 'bold))
  (evil-operator-state-tag    (:foreground w-white :background w-l-gray :weight 'bold))

  ;; Magit minor modes
  (magit-section-heading      (:foreground w-blue :weight 'bold))
  (magit-branch-local         (:foreground w-purple :weight 'bold))
  (magit-branch-remote        (:foreground w-blue :weight 'bold))
  (magit-diff-added           (:foreground w-viridian))
  (magit-diff-removed         (:foreground w-purple))

  ;; --- Syntax highlighting ---
  (font-lock-keyword-face         (:foreground w-blue))
  (font-lock-constant-face        (:foreground w-blue))
  (font-lock-string-face          (:foreground w-gray))
  (font-lock-builtin-face         (:foreground w-l-gray))
  (font-lock-comment-face         (:foreground w-l-gray))
  (font-lock-comment-delimiter-face (:inherit font-lock-comment-face))
  (font-lock-type-face            (:foreground w-purple :weight 'bold))
  (font-lock-variable-name-face   (:foreground w-gray))
  (font-lock-function-name-face   (:foreground w-blue))

  ;; --- Org mode ---
  (org-level-1                    (:foreground w-blue :height 1.3 :weight 'bold))
  (org-level-2                    (:foreground w-purple :height 1.2 :weight 'bold))
  (org-level-3                    (:foreground w-l-gray :height 1.1 :weight 'bold))
  (org-level-4                    (:foreground w-gray :height 1.1 :weight 'bold))))

(provide-theme 'white)
