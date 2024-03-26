;;Melpha mirror link
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

;;Enable lihne number globally
;;(global-display-line-numbers-mode)
(display-line-numbers-mode t)

;;Load the deeper blue theme
(load-theme 'dracula t)


;;disable backup files
(setq make-backup-files nil)
(setq auto-save-default nil)



;;evil mode setup 
;;(require 'evil)
;;(evil-mode t)
;;(define-key evil-insert-state-map (kbd "C-c") 'evil-normal-state)
;;(define-key evil-visual-state-map (kbd "C-c") 'evil-normal-state)
;;(setq evil-search-module 'evil-search)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("c8b83e7692e77f3e2e46c08177b673da6e41b307805cd1982da9e2ea2e90e6d7" "b6269b0356ed8d9ed55b0dcea10b4e13227b89fd2af4452eee19ac88297b0f99" "e3a1b1fb50e3908e80514de38acbac74be2eb2777fc896e44b54ce44308e5330" "b02eae4d22362a941751f690032ea30c7c78d8ca8a1212fdae9eecad28a3587f" "603a831e0f2e466480cdc633ba37a0b1ae3c3e9a4e90183833bc4def3421a961" default))
 '(ispell-dictionary nil)
 '(package-selected-packages
   '(org-roam helm yasnippet monokai-pro-theme which-key lsp-treemacs lsp-ivy lsp-ui smartparens web-mode company evil dracula-theme cmake-mode)))
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

;;HELM fuzzy file finder setup
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)

;;this will setup emojies for emacs
(set-language-environment "UTF-8") 
(prefer-coding-system 'utf-8) ; Use 'utf-16' if necessary for some special characters


;; set emacs keys of beginning of the buffer and ending of the buffer
(global-set-key (kbd "C-c g") 'beginning-of-buffer)
(global-set-key (kbd "C-c C-g") 'end-of-buffer)
