;;; Common Lisp standard symbols

(put 'defpackage 'common-lisp-indent-function 1)
(put 'handler-bind 'common-lisp-indent-function 1)
(put 'handler-case 'common-lisp-indent-function
     '(4 &rest (&whole 2 4 &body)))
(put 'pprint-logical-block 'common-lisp-indent-function 1)
(put 'print-unreadable-object 'common-lisp-indent-function 1)
(put 'restart-case 'common-lisp-indent-function
     '(4 &rest (&whole 2 4 &body)))
(put 'with-accessors 'common-lisp-indent-function 2)
(put 'with-output-to-string 'common-lisp-indent-function 1)
(put 'with-slots 'common-lisp-indent-function 2)
(put 'with-standard-io-syntax 'common-lisp-indent-function 0)

(put 'defclass 'common-lisp-indent-function 3)
