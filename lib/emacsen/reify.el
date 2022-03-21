(provide 'reify)

(defun site-cider-jack-in ()
  (interactive)
  (let ((cider-lein-parameters
         "with-profiles +bengal site-repl :headless :host localhost"))
    (cider-jack-in-clj ())))

(defun sponsor-cider-jack-in ()
  (interactive)
  (let ((cider-lein-parameters
         "with-profiles +bengal sponsor-repl :headless :host localhost"))
    (cider-jack-in-clj ())))
