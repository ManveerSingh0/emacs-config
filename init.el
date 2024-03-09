;;Melpha mirror link
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;;Enable lihne number globally
(global-display-line-numbers-mode)

;;Load the deeper blue theme
(load-theme 'dracula t)


;;disable backup files
(setq make-backup-files nil)
(setq auto-save-default nil)



;;evil mode setup 
(require 'evil)
(evil-mode t)
(define-key evil-insert-state-map (kbd "C-c") 'evil-normal-state)
(define-key evil-visual-state-map (kbd "C-c") 'evil-normal-state)
(setq evil-search-module 'evil-search)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("603a831e0f2e466480cdc633ba37a0b1ae3c3e9a4e90183833bc4def3421a961" default))
 '(package-selected-packages
   '(which-key lsp-treemacs lsp-ivy lsp-ui smartparens web-mode company evil dracula-theme cmake-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Auto-completion with Company mode
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)


;; Auto-pairing with Electric Pair mode (Built-in)
(electric-pair-mode 1)

;; Language-Specific Support
(require 'cc-mode) ;; C++ mode
(require 'web-mode) ;; HTML/CSS/JavaScript



(add-hook 'c++-mode-hook #'lsp) 
(add-hook 'javascript-mode-hook #'lsp)




;;fullscreen emacs
(add-to-list 'default-frame-alist '(fullscreen . maximized))
