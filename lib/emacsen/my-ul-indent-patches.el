;;; For the SERIES package

(put 'gathering 'common-lisp-indent-function 1)
(put 'iterate 'common-lisp-indent-function 1)
(put 'mapping 'common-lisp-indent-function 1)
(put 'producing 'common-lisp-indent-function 2)

;;; For CLX

(put 'with-clx-requests 'common-lisp-indent-function 0)

;;; CMUCL-specific

(put 'dovector 'common-lisp-indent-function '((&whole 4 2 1) &body))
(put 'with-interrupts 'common-lisp-indent-function 0)
(put 'without-interrupts 'common-lisp-indent-function 0)

(put 'stream-dispatch 'common-lisp-indent-function 1)
(put 'simple-stream-dispatch 'common-lisp-indent-function 1)
(put 'simple-stream-dispatch-2 'common-lisp-indent-function 1)

;;; MSL.TEST

(put 'ensure 'common-lisp-indent-function '(4 2 4))

;;; For CL-PPCRE

(put 'register-groups-bind 'common-lisp-indent-function
     '((&whole 6 &rest 1) 4 &body))
(put 'do-register-groups 'common-lisp-indent-function 2)

;;; For DEFSYSTEM

(put 'defsystem 'common-lisp-indent-function 1)

;;; For Allegro CL symbols

(put '<<-- 'common-lisp-indent-function
     (get 'when 'common-lisp-indent-function))
(put '<<- 'common-lisp-indent-function
     (get 'when 'common-lisp-indent-function))
(put 'def-stream-class 'common-lisp-indent-function
     (get 'defclass 'common-lisp-indent-function))

;;; For me

(put 'condlet 'common-lisp-indent-function
     (get 'let 'common-lisp-indent-function)) ;Not quite right
(put 'aif 'common-lisp-indent-function
     (get 'if 'common-lisp-indent-function))
(put 'awhen 'common-lisp-indent-function
     (get 'when 'common-lisp-indent-function))
;; Want this to be like multiple-value-bind
(put 'define-expect-sub-state 'common-lisp-indent-function 1)
(put 'define-mgts-fd-handler-state 'common-lisp-indent-function 2)
(put 'define-grammer 'common-lisp-indent-function 1)
(put 'define-object 'common-lisp-indent-function 1)
(put 'save-emacs-state 'common-lisp-indent-function 0)
