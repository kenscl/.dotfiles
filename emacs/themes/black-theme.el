(autothemer-deftheme
 black "A simple dark theme"
 ;; Palette
 ((((class color) (min-colors #xFFFFFF))) ;; We're only concerned with graphical Emacs

  ;; Define our color palette
  (w-base "#191919")
  (w-text "#F8F8F8")
  (w-hl1        "#3D3D3D")
  (w-hll        "#666666")
  (w-blue       "#276FBF")
  (w-purple     "#A63446")
  (w-hlll       "#C2C2C2")
  (w-viridian   "#2A7F62")
  (w-red        "#675283") ;; actually its more purple right now
  (w-tst        "#4FB477")
  (w-warn       "#ECA72C")
  (w-err        "#DC493A")
  )

  ;; Faces
 ((default                   (:background w-base :foreground w-text))

  ;; Structural
  (bold                      (:foreground w-blue))
  (italic                    (:foreground w-viridian))
  (bold-italic               (:foreground w-blue))
  (region                    (:background w-hlll))
  (highlight                 (:background w-hlll))
  (fixed-pitch-serif         (:foregrund w-blue))
  (variable-pitch            (:foregroud w-blue))
  (cursor                    (:background w-hl1))

  ;; Modeline
  (mode-line                 (:background w-base :foreground w-text))
  (mode-line-inactive        (:background w-base :foreground w-viridian))

  ;; Windows
  (window-divider (:background w-blue))
  (window-divider-first-pixel  (:foreground w-warn))
  (window-divider-last-pixel   (:foreground w-warn))

  ;; Semantic
  (shadow                                    (:foreground w-text))
  (success                                   (:foreground w-purple))
  (warning                                   (:foreground w-red))
  (error                                     (:foreground w-err))
  (match                                     (:foreground w-red))

  ;; General
  (buffer-menu-buffer                        (:foreground w-blue))
  (minibuffer-prompt                         (:foreground w-blue))
  (link                                      (:foreground w-purple))
  (fringe                                    (:foreground w-viridian))

  (isearch                                   (:foreground w-blue))
  (isearch-fail                              (:foreground w-viridian))
  (lazy-highlight                            (:foreground w-hll))
  (trailing-whitespace                       (:foreground w-hll))
  (show-paren-match                          (:foreground w-red))
  (tooltip                                   (:height 0.85))
  (secondary-selection                       (:foreground w-hll))
  (completions-common-part                   (:foreground w-viridian))
  (completions-first-difference              (:foreground w-red))

  ;; Whitespace faces
  (whitespace-space       (:foreground w-hlll :background nil))
  (whitespace-tab         (:foreground w-base :background nil))
  (whitespace-newline     (:foreground w-base :background nil))
  (whitespace-trailing    (:foreground w-base :background nil))
  (whitespace-line        (:background w-base))


  ;; Programmation mode
  (font-lock-comment-face                    (:foreground w-hll))
  (font-lock-doc-face                        (:foreground w-hll))
  (font-lock-string-face                     (:foreground w-red))
  (font-lock-constant-face                   (:foreground w-purple))
  (font-lock-warning-face                    (:foreground w-red))
  (font-lock-function-name-face              (:foreground w-blue))
  (font-lock-variable-name-face              (:foreground w-blue))
  (font-lock-builtin-face                    (:foreground w-purple))
  (font-lock-type-face                       (:foreground w-purple))
  (font-lock-keyword-face                    (:foreground w-purple))

  ;; Highlight line mode
  (with-eval-after-load "hl-line"
  (set-face-attribute 'hl-line nil
                                          :background w-warn))

  ;; Buttons
  (with-eval-after-load "cus-edit"
  (set-face-attribute 'custom-button nil
                                          :foreground (face-foreground 'w-blue)
                                          :background (face-background 'default)
                                          :box `(:line-width 1
                                                         :color ,(face-foreground 'w-viridian)
                                                         :style nil))
  (set-face-attribute 'custom-button-mouse nil
                                          :foreground (face-foreground 'w-viridian)
                                          :background (face-background 'w-hll)
                                          :box `(:line-width 1
                                                         :color ,(face-foreground 'w-viridian)
                                                         :style nil))
  (set-face-attribute 'custom-button-pressed nil
                                          :foreground (face-background 'default)
                                          :background (face-foreground 'w-purple)
                                          :inherit 'w-purple
                                          :box `(:line-width 1
                                                         :color ,(face-foreground 'w-purple)
                                                         :style nil)
                                          :inverse-video nil))

  ;; Documentation
  (with-eval-after-load "info"
    (info-menu-header                      (:foreground w-blue))
    (info-header-node                      (:foreground w-text))
    (info-index-match                      (:foreground w-purple))
    (Info-quoted                           (:foreground w-viridian))
    (info-title-1                          (:foreground w-blue))
    (info-title-2                          (:foreground w-blue))
    (info-title-3                          (:foreground w-blue))
    (info-title-4                          (:foreground w-blue)))

 ;; Bookmarks
  (with-eval-after-load "bookmark"
    (bookmark-menu-heading              (:foreground w-blue))
    (bookmark-menu-bookmark             (:foreground w-purple)))

  ;; Message
  (with-eval-after-load "message"
    (message-cited-w-text                    (:foreground w-viridian))
    (message-cited-w-text-1                  (:foreground w-viridian))
    (message-cited-w-text-2                  (:foreground w-viridian))
    (message-cited-w-text-3                  (:foreground w-viridian))
    (message-cited-w-text-4                  (:foreground w-viridian))
    (message-header-cc                     (:foreground w-text))
    (message-header-name                   (:foreground w-blue))
    (message-header-newsgroups             (:foreground w-text))
    (message-header-other                  (:foreground w-text))
    (message-header-subject                (:foreground w-purple))
    (message-header-to                     (:foreground w-purple))
    (message-header-xheader                (:foreground w-text))
    (message-mml                           (:foreground w-red))
    (message-separator                     (:foreground w-viridian)))

  ;; Outline
  (with-eval-after-load "outline"
    (outline-1                              (:foreground w-blue))
    (outline-2                              (:foreground w-blue))
    (outline-3                              (:foreground w-blue))
    (outline-4                              (:foreground w-blue))
    (outline-5                              (:foreground w-blue))
    (outline-6                              (:foreground w-blue))
    (outline-7                              (:foreground w-blue))
    (outline-8                              (:foreground w-blue)))

  ;; Interface
  (with-eval-after-load "cus-edit"
    (widget-field                        (:foreground w-hll))
    (widget-button                       (:foreground w-blue))
    (widget-single-line-field            (:foreground w-hll))
    (custom-group-subtitle               (:foreground w-blue))
    (custom-group-tag                    (:foreground w-blue))
    (custom-group-tag-1                  (:foreground w-blue))
    (custom-comment                      (:foreground w-viridian))
    (custom-comment-tag                  (:foreground w-viridian))
    (custom-changed                      (:foreground w-purple))
    (custom-modified                     (:foreground w-purple))
    (custom-face-tag                     (:foreground w-blue))
    (custom-variable-tag                 (:foreground w-text))
    (custom-invalid                      (:foreground w-err))
    (custom-visibility                   (:foreground w-red))
    (custom-state                        (:foreground w-purple))
    (custom-link                         (:foreground w-purple)))

  ;;Package
  (with-eval-after-load "package"
    (package-description                   (:foreground w-text))
    (package-help-section-name             (:foreground w-text))
    (package-name                          (:foreground w-purple))
    (package-status-avail-obso             (:foreground w-viridian))
    (package-status-available              (:foreground w-text))
    (package-status-built-in               (:foreground w-purple))
    (package-status-dependency             (:foreground w-purple))
    (package-status-disabled               (:foreground w-viridian))
    (package-status-external               (:foreground w-text))
    (package-status-held                   (:foreground w-text))
    (package-status-incompat               (:foreground w-viridian))
    (package-status-installed              (:foreground w-purple))
    (package-status-new                    (:foreground w-text))
    (package-status-unsigned               (:foreground w-text)))


  ;; Flyspell
  (with-eval-after-load "flyspell"
    (flyspell-duplicate                     (:foreground w-red))
    (flyspell-incorrect                     (:foreground w-red)))

  ;; Ido
  (with-eval-after-load "ido"
    (ido-first-match                        (:foreground w-purple))
    (ido-only-match                         (:foreground w-viridian))
    (ido-subdir                             (:foreground w-blue))

  ;; Eros and Rainbow-delimiters
  (eros-result-overlay-face                 (:foreground  w-text :background w-base))
  (rainbow-delimiters-w-base-error-face       (:foreground  w-err :background w-base))
  (rainbow-delimiters-depth-1-face          (:foreground  w-blue))
  (rainbow-delimiters-depth-2-face          (:foreground  w-text))
  (rainbow-delimiters-depth-3-face          (:foreground  w-text))
  (rainbow-delimiters-depth-4-face          (:foreground  w-text))
  (rainbow-delimiters-depth-5-face          (:foreground  w-text))
  (rainbow-delimiters-depth-6-face          (:foreground  w-text))
  (rainbow-delimiters-depth-7-face          (:foreground  w-text))
  (rainbow-delimiters-depth-8-face          (:foreground  w-text))
  (rainbow-delimiters-depth-9-face          (:foreground  w-text))


  ;; Diff
  (with-eval-after-load "diff-mode"
    (diff-header                                      (:foreground w-viridian))
    (diff-file-header                                 (:foreground w-blue))
    (diff-conw-text                                     (:foreground w-text)))
    (diff-removed                                     (:foreground w-viridian))
    (diff-changed                                     (:foreground w-red))
    (diff-added                                       (:foreground w-purple))
    (diff-refine-added                                (:background w-purple :foreground w-blue))
    (set-face 'diff-refine-changed                    (:foreground w-red))
    (set-face 'diff-refine-removed                    (:foreground w-viridian))
    (set-face-attribute     'diff-refine-removed nil :strike-through t))

;; Term
(with-eval-after-load "term"
  (term-bold                                   (:foreground w-blue))
  (set-face-attribute 'term-color-black nil
                                          :foreground (face-foreground 'w-text)
                                          :background (face-foreground 'w-text))
  (set-face-attribute 'term-color-white nil
                                          :foreground (face-background 'w-text)
                                          :background (face-background 'w-text))
  (set-face-attribute 'term-color-blue nil
                                          :foreground "#31748f"
                                          :background "#3783a1")
  (set-face-attribute 'term-color-cyan nil
                                          :foreground "#9ccfd8"
                                          :background "#89c6d0")
  (set-face-attribute 'term-color-green nil
                                          :foreground "#706e86"
                                          :background "#7c7a92")
  (set-face-attribute 'term-color-magenta nil
                                          :foreground "#c4a7e7"
                                          :background "#b692e1")
  (set-face-attribute 'term-color-red nil
                                          :foreground "#eb6f92"
                                          :background "#ee85a2")
  (set-face-attribute 'term-color-yellow nil
                                          :foreground "#f6c177"
                                          :background "#f4b65f"))

(with-eval-after-load "calendar"
  (calendar-today                         (:foreground w-blue)))



  ;; org-agenda
  (with-eval-after-load "org-agenda"
    (org-agenda-calendar-event              (:foreground w-text))
    (org-agenda-calendar-sexp               (:foreground w-purple))
    (org-agenda-clocking                    (:foreground w-viridian))
    (org-agenda-column-dateline             (:foreground w-viridian))
    (org-agenda-current-time                (:foreground w-blue))
    (org-agenda-date                        (:foreground w-purple))
    (org-agenda-date-today                  (:background w-blue :foreground w-purple))
    (org-agenda-date-weekend                (:foreground w-viridian))
    (org-agenda-diary                       (:foreground w-viridian))
    (org-agenda-dimmed-todo-face            (:foreground w-viridian))
    (org-agenda-done                        (:foreground w-viridian))
    (org-agenda-filter-category             (:foreground w-viridian))
    (org-agenda-filter-effort               (:foreground w-viridian))
    (org-agenda-filter-regexp               (:foreground w-viridian))
    (org-agenda-filter-tags                 (:foreground w-viridian))
    (org-agenda-restriction-lock            (:foreground w-viridian))
    (org-agenda-structure                   (:foreground w-blue)))

  ;; org mode
  (with-eval-after-load "org"
    (org-archived                            (:foreground w-viridian))
    (org-block                               (:foreground w-viridian))
    (org-block-begin-line                    (:foreground w-viridian))
    (org-block-end-line                      (:foreground w-viridian))
    (org-checkbox                            (:foreground w-viridian))
    (org-checkbox-statistics-done            (:foreground w-viridian))
    (org-checkbox-statistics-todo            (:foreground w-viridian))
    (org-clock-overlay                       (:foreground w-viridian))
    (org-code                                (:foreground w-viridian))
    (org-column                              (:foreground w-viridian))
    (org-column-title                        (:foreground w-viridian))
    (org-date                                (:foreground w-viridian))
    (org-date-selected                       (:foreground w-viridian))
    (org-default                             (:foreground w-viridian))
    (org-document-info                       (:foreground w-viridian))
    (org-document-info-keyword               (:foreground w-viridian))
    (org-document-title                      (:foreground w-viridian))
    (org-done                                (:foreground w-text))
    (org-drawer                              (:foreground w-viridian))
    (org-ellipsis                            (:foreground w-viridian))
    (org-footnote                            (:foreground w-viridian))
    (org-formula                             (:foreground w-viridian))
    (org-headline-done                       (:foreground w-viridian))
    (org-latex-and-related                   (:foreground w-viridian))
    (org-level-1                             (:foreground w-blue))
    (org-level-2                             (:foreground w-blue))
    (org-level-3                             (:foreground w-purple))
    (org-level-4                             (:foreground w-text))
    (org-level-5                             (:foreground w-text))
    (org-level-6                             (:foreground w-text))
    (org-level-7                             (:foreground w-text))
    (org-level-8                             (:foreground w-text))
    (org-link                                (:foreground w-purple))
    (org-list-dt                             (:foreground w-viridian))
    (org-macro                               (:foreground w-viridian))
    (org-meta-line                           (:foreground w-viridian))
    (org-mode-line-clock                     (:foreground w-viridian))
    (org-mode-line-clock-overrun             (:foreground w-viridian))
    (org-priority                            (:foreground w-viridian))
    (org-property-value                      (:foreground w-viridian))
    (org-quote                               (:foreground w-viridian))
    (org-scheduled                           (:foreground w-viridian))
    (org-scheduled-previously                (:foreground w-viridian))
    (org-scheduled-today                     (:foreground w-viridian))
    (org-sexp-date                           (:foreground w-viridian))
    (org-special-keyword                     (:foreground w-viridian))
    (org-table                               (:foreground w-viridian))
    (org-tag                                 (:foreground w-viridian))
    (org-tag-group                           (:foreground w-viridian))
    (org-target                              (:foreground w-viridian))
    (org-time-grid                           (:foreground w-viridian))
    (org-todo                                (:foreground w-purple))
    (org-upcoming-deadline                   (:foreground w-viridian))
    (org-verbatim                            (:foreground w-viridian))
    (org-verse                               (:foreground w-viridian))
    (org-warning                             (:foreground w-red)))

  ;; Mu4e
  (with-eval-after-load "mu4e"
    (mu4e-attach-number-face                 (:foreground w-blue))
    (mu4e-cited-1-face                       (:foreground w-viridian))
    (mu4e-cited-2-face                       (:foreground w-viridian))
    (mu4e-cited-3-face                       (:foreground w-viridian))
    (mu4e-cited-4-face                       (:foreground w-viridian))
    (mu4e-cited-5-face                       (:foreground w-viridian))
    (mu4e-cited-6-face                       (:foreground w-viridian))
    (mu4e-cited-7-face                       (:foreground w-viridian))
    (mu4e-compose-header-face                (:foreground w-viridian))
    (mu4e-compose-separator-face             (:foreground w-viridian))
    (mu4e-contact-face                       (:foreground w-purple))
    (mu4e-conw-text-face                       (:foreground w-viridian))
    (mu4e-draft-face                         (:foreground w-viridian))
    (mu4e-flagged-face                       (:foreground w-red))
    (mu4e-footer-face                        (:foreground w-viridian))
    (mu4e-forwarded-face                     (:foreground w-viridian))
    (mu4e-header-face                        (:foreground w-text))
    (mu4e-header-highlight-face              (:inherit  'hl-line))
    (mu4e-header-key-face                    (:foreground w-blue))
    (mu4e-header-marks-face                  (:foreground w-viridian))
    (mu4e-header-title-face                  (:foreground w-blue))
    (mu4e-header-value-face                  (:foreground w-text))
    (mu4e-highlight-face                     (:foreground w-red))
    (mu4e-link-face                          (:foreground w-purple))
    (mu4e-modeline-face                      (:foreground w-viridian))
    (mu4e-moved-face                         (:foreground w-viridian))
    (mu4e-ok-face                            (:foreground w-viridian))
    (mu4e-region-code                        (:foreground w-viridian))
    (mu4e-replied-face                       (:foreground w-text))
    (mu4e-special-header-value-face          (:foreground w-text))
    (mu4e-system-face                        (:foreground w-viridian))
    (mu4e-title-face                         (:foreground w-blue))
    (mu4e-trashed-face                       (:foreground w-viridian))
    (mu4e-unread-face                        (:foreground w-blue))
    (mu4e-url-number-face                    (:foreground w-viridian))
    (mu4e-view-body-face                     (:foreground w-text))
    (mu4e-warning-face                       (:foreground w-red)))

  ;; Elfeed
  (with-eval-after-load "elfeed"
    (elfeed-log-date-face                              (:foreground w-viridian))
    (elfeed-log-info-level-face                        (:foreground w-text))
    (elfeed-log-debug-level-face                       (:foreground w-text))
    (elfeed-log-warn-level-face                        (:foreground w-red))
    (elfeed-log-error-level-face                       (:foreground w-red))
    (elfeed-search-tag-face                            (:foreground w-viridian))
    (elfeed-search-date-face                           (:foreground w-viridian))
    (elfeed-search-feed-face                           (:foreground w-purple))
    (elfeed-search-filter-face                         (:foreground w-viridian))
    (elfeed-search-last-update-face                    (:foreground w-purple))
    (elfeed-search-title-face                          (:foreground w-text))
    (elfeed-search-tag-face                            (:foreground w-viridian))
    (elfeed-search-unread-count-face                   (:foreground w-blue))
    (elfeed-search-unread-title-face                   (:foreground w-blue)))


  ;; RST mode
  (with-eval-after-load "rst"
    (rst-adornment                                    (:foreground w-viridian))
    (rst-block                                        (:foreground w-text))
    (rst-comment                                      (:foreground w-viridian))
    (rst-definition                                   (:foreground w-purple))
    (rst-directive                                    (:foreground w-purple))
    (rst-emphasis1                                    (:foreground w-viridian))
    (rst-emphasis2                                    (:foreground w-blue))
    (rst-external                                     (:foreground w-purple))
    (rst-level-1                                      (:foreground w-blue))
    (rst-level-2                                      (:foreground w-blue))
    (rst-level-3                                      (:foreground w-blue))
    (rst-level-4                                      (:foreground w-blue))
    (rst-level-5                                      (:foreground w-blue))
    (rst-level-6                                      (:foreground w-blue))
    (rst-literal                                      (:foreground w-purple))
    (rst-reference                                    (:foreground w-purple))
    (rst-transition                                   (:foreground w-text)))

  ;; Markdown mode
  (with-eval-after-load "markdown-mode"
    (markdown-blockquote-face              (:foreground w-text))
    (markdown-bold-face                    (:foreground w-blue))
    (markdown-code-face                    (:foreground w-text))
    (markdown-comment-face                 (:foreground w-viridian))
    (markdown-footnote-marker-face         (:foreground w-text))
    (markdown-footnote-w-text-face           (:foreground w-text))
    (markdown-gfm-checkbox-face            (:foreground w-text))
    (markdown-header-delimiter-face        (:foreground w-viridian))
    (markdown-header-face                  (:foreground w-blue))
    (markdown-header-face-1                (:foreground w-blue))
    (markdown-header-face-2                (:foreground w-blue))
    (markdown-header-face-3                (:foreground w-blue))
    (markdown-header-face-4                (:foreground w-blue))
    (markdown-header-face-5                (:foreground w-blue))
    (markdown-header-face-6                (:foreground w-blue))
    (markdown-header-rule-face             (:foreground w-text))
    (markdown-highlight-face               (:foreground w-text))
    (markdown-hr-face                      (:foreground w-text))
    (markdown-html-attr-name-face          (:foreground w-text))
    (markdown-html-attr-value-face         (:foreground w-text))
    (markdown-html-entity-face             (:foreground w-text))
    (markdown-html-tag-delimiter-face      (:foreground w-text))
    (markdown-html-tag-name-face           (:foreground w-text))
    (markdown-inline-code-face             (:foreground w-red))
    (markdown-italic-face                  (:foreground w-viridian))
    (markdown-language-info-face           (:foreground w-text))
    (markdown-language-keyword-face        (:foreground w-text))
    (markdown-line-break-face              (:foreground w-text))
    (markdown-link-face                    (:foreground w-purple))
    (markdown-link-title-face              (:foreground w-text))
    (markdown-list-face                    (:foreground w-viridian))
    (markdown-markup-face                  (:foreground w-viridian))
    (markdown-math-face                    (:foreground w-text))
    (markdown-metadata-key-face            (:foreground w-viridian))
    (markdown-metadata-value-face          (:foreground w-viridian))
    (markdown-missing-link-face            (:foreground w-text))
    (markdown-plain-url-face               (:foreground w-text))
    (markdown-pre-face                     (:foreground w-text))
    (markdown-reference-face               (:foreground w-purple))
    (markdown-strike-through-face          (:foreground w-viridian))
    (markdown-table-face                   (:foreground w-text))
    (markdown-url-face                     (:foreground w-purple)))

  ;; Ivy
  (with-eval-after-load "ivy"
    (ivy-action                              (:foreground w-viridian))
    (ivy-completions-annotations             (:foreground w-viridian))
    (ivy-confirm-face                        (:foreground w-viridian))
    (ivy-current-match                       (:background w-blue :foreground w-hll))
    (ivy-cursor                              (:foreground w-blue))
    (ivy-grep-info                           (:foreground w-blue))
    (ivy-grep-line-number                    (:foreground w-viridian))
    (ivy-highlight-face                      (:foreground w-blue))
    (ivy-match-required-face                 (:foreground w-viridian))
    (ivy-minibuffer-match-face-1             (:foreground w-purple))
    (ivy-minibuffer-match-face-2             (:foreground w-purple))
    (ivy-minibuffer-match-face-3             (:foreground w-purple))
    (ivy-minibuffer-match-face-4             (:foreground w-purple))
    (ivy-minibuffer-match-highlight          (:foreground w-blue))
    (ivy-modified-buffer                     (:foreground w-viridian))
    (ivy-modified-outside-buffer             (:foreground w-viridian))
    (ivy-org                                 (:foreground w-viridian))
    (ivy-prompt-match                        (:foreground w-viridian))
    (ivy-remote                              (:foreground w-text))
    (ivy-separator                           (:foreground w-viridian))
    (ivy-subdir                              (:foreground w-viridian))
    (ivy-virtual                             (:foreground w-viridian))
    (ivy-yanked-word                         (:foreground w-viridian)))
  ))

(provide-theme 'black)
