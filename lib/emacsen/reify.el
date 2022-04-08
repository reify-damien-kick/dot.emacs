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

(defun test-site-cider-jack-in ()
  (interactive)
  (let ((cider-lein-parameters
         "with-profile +test-site repl :headless :host localhost"))
    (cider-jack-in-clj ())))

(defun test-sponsor-cider-jack-in ()
  (interactive)
  (let ((cider-lein-parameters
         "with-profile +test-sponsor repl :headless :host localhost"))
    (cider-jack-in-clj ())))
