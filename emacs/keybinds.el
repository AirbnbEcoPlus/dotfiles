(use-package general
  :ensure t
  :config
  (general-create-definer my/leader-keys
    :keymaps '(normal insert visual emacs)
    :prefix "SPC"
    :global-prefix "C-SPC")

  (my/leader-keys
    "e" '(neotree-toggle :which-key "toggle treemacs")
    "t" '(vterm :which-key "open terminal"))) 



(with-eval-after-load 'evil
  (evil-define-key 'normal lsp-mode-map
    "gd" 'lsp-find-definition
    "gr" 'lsp-find-references
    "gi" 'lsp-find-implementation
    "gt" 'lsp-find-type-definition
    "K" 'lsp-describe-thing-at-point
    "gh" 'lsp-signature-activate
    "ga" 'lsp-execute-code-action
    "gR" 'lsp-rename))

;; Raccourcis clavier additionnels
(with-eval-after-load 'lsp-mode
  (define-key lsp-mode-map (kbd "C-c l") lsp-command-map))

(with-eval-after-load 'evil
  (evil-define-key 'normal 'global
    (kbd "SPC o p") 'counsel-projectile-switch-project   
    (kbd "SPC o f") 'counsel-projectile-find-file        
    (kbd "SPC o d") 'projectile-dired                    
    (kbd "SPC f f") 'counsel-find-file                   
    (kbd "SPC b b") 'counsel-ibuffer                     
    (kbd "SPC f d") 'counsel-dired
    (kbd "SPC p f") 'counsel-projectile-find-file        
    (kbd "SPC p p") 'counsel-projectile-switch-project   
    (kbd "SPC p s") 'counsel-projectile-ag               
    (kbd "SPC SPC") 'counsel-M-x))                       


(with-eval-after-load 'evil
  (define-key evil-normal-state-map (kbd "C-h") 'windmove-left)
  (define-key evil-normal-state-map (kbd "C-j") 'windmove-down)
  (define-key evil-normal-state-map (kbd "C-k") 'windmove-up)
  (define-key evil-normal-state-map (kbd "C-l") 'windmove-right))


;; Libère la touche C-SPC (car elle sert par défaut à set-mark-command)
(global-unset-key (kbd "C-SPC"))

;; Bind dans evil insert mode (mode édition)
(with-eval-after-load 'company
  (define-key evil-insert-state-map (kbd "C-SPC") #'company-complete-selection))

;; Bind aussi dans normal mode si tu veux
(with-eval-after-load 'company
  (define-key evil-normal-state-map (kbd "C-SPC") #'company-complete-selection))

(with-eval-after-load 'ivy
  (define-key ivy-minibuffer-map (kbd "TAB") nil)  ; enlève TAB
  (define-key ivy-minibuffer-map (kbd "C-SPC") #'ivy-alt-done))


