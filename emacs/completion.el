;; ---------------------
;; Ivy + Counsel
;; ---------------------
(use-package ivy
  :ensure t
  :diminish
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1)
  (setq ivy-initial-inputs-alist nil))

(use-package counsel
  :ensure t
  :bind (("M-x" . counsel-M-x)
         ("C-x b" . counsel-ibuffer)
         ("C-x C-f" . counsel-find-file)
         ("C-c p f" . counsel-projectile-find-file)
         ("C-c p p" . counsel-projectile-switch-project)
         ("C-c p s s" . counsel-projectile-ag))
  :config
  (counsel-mode 1))

;; ---------------------
;; Projectile + Counsel Projectile
;; ---------------------
(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("C-c p" . projectile-command-map))
  :config
  (setq projectile-project-search-path '(("~/Code" . 2)))
  (setq projectile-completion-system 'ivy)
  (setq projectile-enable-caching t)
  (setq projectile-indexing-method 'alien)
  (projectile-discover-projects-in-search-path)
  (add-hook 'projectile-after-switch-project-hook
            (lambda ()
              (when (treemacs-current-visibility)
                (treemacs-display-current-project-exclusively)))))

(use-package counsel-projectile
  :ensure t
  :after (counsel projectile)
  :config
  (counsel-projectile-mode))

;; ---------------------
;; Company for completion
;; ---------------------
(use-package company
  :ensure t
  :hook (after-init . global-company-mode)
  :diminish company-mode
  :bind (:map company-active-map
              ("C-n" . company-select-next)
              ("C-p" . company-select-previous)
         :map company-mode-map
              )
  :config
  (setq company-idle-delay 0.2)
  (setq company-minimum-prefix-length 1)
  (setq company-selection-wrap-around t))

;; Optionnel : interface plus jolie pour company
(use-package company-box
  :ensure t
  :hook (company-mode . company-box-mode))

;; ---------------------
;; LSP Mode pour support intelligent
;; ---------------------
(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :hook ((python-mode . lsp-deferred)
         (js-mode . lsp-deferred)
         (typescript-mode . lsp-deferred)
         (c-mode . lsp-deferred)
         (c++-mode . lsp-deferred)
         (java-mode . lsp-deferred))
  :init
  (setq lsp-keymap-prefix "C-c l")  ;; raccourci pour les commandes LSP
  :config
  (setq lsp-enable-snippet t)
  (setq lsp-prefer-flymake nil)  ;; utilise flycheck au lieu de flymake
  (lsp-enable-which-key-integration t))

;; Installation auto des serveurs LSP
(use-package lsp-mode
  :config
  (setq lsp-auto-install-server t))

;; UI améliorée pour lsp-mode
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :hook (lsp-mode . lsp-ui-mode)
  :config
  (setq lsp-ui-sideline-enable t
        lsp-ui-sideline-show-hover t
        lsp-ui-doc-enable t))


(use-package lsp-java
  :ensure t
  :after lsp
  :config
  (add-hook 'java-mode-hook #'lsp))


(use-package rust-mode
  :ensure t
  :hook (rust-mode . lsp)) ;




