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
  )

 ;; Customize faces
 ((default                   (:foreground w-black :background w-white))
  (cursor                    (:background w-gray))
  (region                    (:background w-gray))
  (fringe                    (:background w-white))
  (mode-line                 (:background w-gray :foreground w-black))
  (mode-line-inactive        (:background w-l-gray :foreground w-gray))
  (minibuffer-prompt         (:foreground w-blue))

  ;; Syntax
  (font-lock-keyword-face    (:foreground w-blue))
  (font-lock-constant-face   (:foreground w-blue))
  (font-lock-string-face     (:foreground w-gray))
  (font-lock-builtin-face    (:foreground w-l-gray))
  (font-lock-comment-face    (:foreground w-l-gray))
  (font-lock-comment-delimiter-face (:inherit font-lock-comment-face))
  (font-lock-type-face          (:foreground w-purple :weight 'bold))   ;; int, char, etc.
  (font-lock-variable-name-face (:foreground w-gray))                 ;; variable names
  (font-lock-function-name-face (:foreground w-blue))         

  ;; Org
  (org-level-1               (:foreground w-blue :height 1.3 :weight 'bold))
  (org-level-2               (:foreground w-purple :height 1.2 :weight 'bold))
  (org-level-3               (:foreground w-l-gray :height 1.1 :weight 'bold))
  (org-level-4               (:foreground w-gray :height 1.1 :weight 'bold))))

(provide-theme 'white)
