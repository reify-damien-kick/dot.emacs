;(setq mac-command-modifier 'alt mac-option-modifier 'meta)
;(require 'redo+)
;(require 'mac-key-mode)
;(mac-key-mode 1)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(elpy-rpc-python-command "python3")
 '(exec-path-from-shell-variables '("PATH" "MANPATH"))
 '(indent-tabs-mode nil)
 '(inferior-lisp-program "/usr/local/bin/sbcl --noinform" t)
 '(js-indent-level 2)
 '(line-number-mode t)
 '(make-backup-files nil)
 '(package-archives
   '(("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/")))
 '(package-selected-packages
   '(terraform-mode lsp-python-ms lsp-mode elpy cl-lib yaml-mode groovy-mode tide smartparens paredit company exec-path-from-shell cider projectile scala-mode sbt-mode slime hydra))
 '(python-shell-interpreter "python")
 '(require-final-newline 'ask)
 '(show-paren-mode t)
 '(uniquify-buffer-name-style 'reverse nil (uniquify))
 '(whitespace-check-indent-whitespace nil t)
 '(whitespace-check-leading-whitespace nil)
 '(whitespace-display-in-modeline t)
 '(whitespace-display-spaces-in-color t)
 '(whitespace-global-mode t)
 '(whitespace-silent t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load "~/lib/emacsen/dot.emacs")

(put 'downcase-region 'disabled nil)

(put 'narrow-to-region 'disabled nil)

(put 'upcase-region 'disabled nil)
