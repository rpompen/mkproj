(require 'package)
(add-to-list 'package-archives '("Melpa" . "https://stable.melpa.org/packages/"))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tango-dark))
 '(delete-selection-mode nil)
 '(inhibit-startup-echo-area-message "rpompen")
 '(inhibit-startup-screen t)
 '(initial-buffer-choice 'eshell)
 '(initial-scratch-message nil)
 '(ispell-dictionary nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(cider company markdown-mode paredit rainbow-delimiters vc-fossil))
 '(tool-bar-mode nil)
 '(tool-bar-position 'top)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-prettify-symbols-mode)

(defun fancify ()
  (push '("comp" . ?∘) prettify-symbols-alist)
  (push '("partial" . ?℘) prettify-symbols-alist))

(add-hook 'clojure-mode-hook 'company-mode)
(add-hook 'clojure-mode-hook 'eldoc-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode-enable)
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'fancify)
(add-hook 'clojurescript-mode-hook 'company-mode)
(add-hook 'clojurescript-mode-hook 'eldoc-mode)
(add-hook 'clojurescript-mode-hook 'rainbow-delimiters-mode-enable)
(add-hook 'clojurescript-mode-hook 'paredit-mode)
(add-hook 'clojurescript-mode-hook 'fancify)
(add-hook 'cider-repl-mode-hook 'company-mode)
(add-hook 'cider-repl-mode-hook 'eldoc-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode-enable)
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'fancify)
(add-hook 'yaml-mode-hook #'ansible-mode)
(setq backup-directory-alist '((".*" . "~/.Trash")))
(setq password-cache-expiry nil)
(setq auth-sources '("~/.authinfo.gpg"))
