(setq inhibit-startup-message t)


(menu-bar-mode -1)  
(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-display-line-numbers-mode 1)
(setq make-backup-files nil)
(setq auto-save-default t)
(setq ring-bell-function 'ignore)

(setq scroll-conservatively 100)
(setq scroll-margin 5)

(use-package all-the-icons
  :ensure t)

;; Mettre tous les fichiers autosave dans un dossier dédié
(setq auto-save-file-name-transforms
      `((".*" "~/.config/emacs/auto-saves/" t)))

;; Créer ce dossier si besoin
(unless (file-exists-p "~/.config/emacs/auto-saves/")
  (make-directory "~/.config/emacs/auto-saves/" t))


(set-frame-font "JetBrainsMono 11" nil t)
