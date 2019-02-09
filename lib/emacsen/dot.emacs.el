;;; This file has configuration code which is common to both GNU Emacs
;;; and XEmacs.

(exec-path-from-shell-initialize)

(add-to-list 'load-path "~/lib/emacsen")
(add-to-list 'load-path "~/lib/emacsen/slime")

(require 'cl)
(require 'cmake-mode)
(require 'slime)
(require 'smartparens-config)
(require 'uniquify)
(require 'vc)

(slime-setup '(slime-fancy))

(require 'tramp)
(setq tramp-default-method "ssh")

;(require 'column-marker)
;(add-hook 'foo-mode-hook (lambda () (interactive) (column-marker-1 80)))
(setq-default transient-mark-mode t)
(set-scroll-bar-mode 'right)

;; For some reason, not all of the customization settings for
;; whitespace-mode are working per documentation.  This works around
;; those problems.
(setq-default whitespace-check-indent-whitespace nil)

;;; auto-mode-alist

;; The following two forms don't seem to get evaluated by GNU Emacs
;; when config.el is loaded.
(pushnew (cons "\\.cl\\'" 'lisp-mode) auto-mode-alist :test 'equal)
(pushnew (cons "\\.asd\\'" 'lisp-mode) auto-mode-alist :test 'equal)
(pushnew (cons "\\.h\\'" 'c++-mode) auto-mode-alist :test 'equal)
(pushnew (cons "\\.ii\\'" 'c++-mode) auto-mode-alist :test 'equal)
(pushnew (cons "\\.ipp\\'" 'c++-mode) auto-mode-alist :test 'equal)
(pushnew (cons "\\.cmake\\'" 'cmake-mode) auto-mode-alist :test 'equal)
(pushnew (cons "CMakeLists\\.txt\\'" 'cmake-mode)
         auto-mode-alist :test 'equal)

;;; Mode hooks

(c-add-style "boost"
             '("stroustrup"
               (c-offsets-alist
                (innamespace . 0))))
(setq-default c-default-style "boost")

(add-hook 'c-mode-common-hook
          (lambda ()
            (make-local-variable 'show-trailing-whitespace)
            (setq show-trailing-whitespace t)
            (c-set-style "boost")))

(add-hook 'c++-mode-hook
          (lambda ()
            (make-local-variable 'show-trailing-whitespace)
            (setq show-trailing-whitespace t)
            (c-set-style "boost")))

(add-hook 'lisp-mode-hook
          (lambda ()
            (make-local-variable 'show-trailing-whitespace)
            (setq show-trailing-whitespace t)))

(add-hook 'cider-repl-mode-hook #'smartparens-mode)
(add-hook 'clojure-mode-hook #'smartparens-mode)
(add-hook 'emacs-lisp-mode-hook #'smartparens-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'smartparens-mode)
(add-hook 'ielm-mode-hook #'smartparens-mode)
(add-hook 'lisp-mode-hook #'smartparens-mode)
(add-hook 'lisp-interaction-mode-hook #'smartparens-mode)
(add-hook 'scheme-mode-hook #'smartparens-mode)
(add-hook 'slime-repl-mode-hook #'smartparens-mode)

;;; Customize the behavior of "common-lisp-indent-function".

;; (defun madhu-indent-as-let
;;     (path state indent-point sexp-column normal-indent)
;;   (if (>= (car path) 2)
;;       (if (cdr path)
;;           (funcall (function lisp-indent-259) '(nil)
;;                    path state indent-point sexp-column normal-indent)
;;         (+ sexp-column lisp-body-indent))
;;     (+ sexp-column 1)))

;;;
;;; The following have been transcribed from _Writing GNU Emacs
;;; Extensions_.
;;;

(defadvice switch-to-buffer (before existing-buffer activate compile)
  "When interactive, switch to existing buffers only, unless given a
prefix arguemnt."
  (interactive (list (read-buffer "Switch to buffer: "
                                  (other-buffer)
                                  (null current-prefix-arg)))))

(defadvice switch-to-buffer-other-window
  (before existing-buffer-other-window activate compile)
  "When interactive, switch to existing buffers only, unless given a
prefix arguemnt."
  (interactive (list (read-buffer "Switch to buffer: "
                                  (other-buffer)
                                  (null current-prefix-arg)))))

(defadvice switch-to-buffer-other-frame
  (before existing-buffer-other-window activate compile)
  "When interactive, switch to existing buffers only, unless given a
prefix arguemnt."
  (interactive (list (read-buffer "Switch to buffer: "
                                  (other-buffer)
                                  (null current-prefix-arg)))))

;;;
;;; Define our own wacky new elisp thingees
;;;

(defmacro save-emacs-state (&rest body)
  "Combination of save-window-excursion, save-excursion, and
save-restriction, as these are frequently used together."
  `(save-window-excursion
    (save-excursion
      (save-restriction
        ,@body))))
