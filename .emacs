;; by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#d2ceda" "#f2241f" "#67b11d" "#b1951d" "#3a81c3" "#a31db1" "#21b8c7" "#655370"])
 '(cider-default-repl-command "lein repl")
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes (quote (spacemacs-light)))
 '(custom-safe-themes
   (quote
    ("0c32e4f0789f567a560be625f239ee9ec651e524e46a4708eb4aba3b9cdc89c5" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(display-line-numbers-type nil)
 '(package-selected-packages
   (quote
    (magit zenburn-theme which-key flycheck-pos-tip rainbow-delimiters chess org-pdfview pdf-tools flycheck-clojure bongo projectile tramp-hdfs light-soap-theme linum-off sr-speedbar helm spacemacs-theme ibuffer-sidebar paredit-everywhere parinfer logview log4j-mode clojure-snippets paredit cider djvu ace-window)))
 '(scroll-bar-mode nil)
 '(send-mail-function (quote mailclient-send-it))
 '(sql-connection-alist
   (quote
    (("Mysql localhost"
      (sql-product
       (quote mysql))
      (sql-user "ixarma5_test")
      (sql-database "ixarma5_test")
      (sql-server "127.0.0.1"))
     ("MYSQL localhost"
      (sql-product
       (quote sqlite))
      (sql-database "ixarma5_test")))))
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(global-set-key (kbd "C-x C-b") 'ibuffer)

(autoload 'ibuffer "ibuffer" "List buffers." t)

(global-set-key (kbd "M-o") 'ace-window)

(menu-bar-mode -1)
(line-number-mode t)
(column-number-mode t)
(transient-mark-mode -1)

(helm-mode 1)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)


(global-set-key [f12] 'kill-buffer-and-window)

(setq-default indicate-empty-lines t)

(global-visual-line-mode 1)

(which-key-mode 1)

(setq speedbar-mode-hook '(lambda ()
    (interactive)
    (other-frame 0)))

(require 'cider)
(add-hook 'clojure-mode-hook 'cider-mode)
(add-hook 'cider-interaction-mode-hook 'cider-turn-on-eldoc-mode)

(add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

(eval-after-load 'flycheck '(flycheck-clojure-setup))
(add-hook 'after-init-hook #'global-flycheck-mode)

(eval-after-load 'flycheck 
  '(setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages))

