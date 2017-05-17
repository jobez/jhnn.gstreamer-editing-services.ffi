(in-package #:jhnn.gstreamer-editing-services.ffi)

(defun ffi-export-predicate (symbol &key &allow-other-keys)
  (and (not (find-symbol (symbol-name symbol) :cl-user))
       (or
        (search "GES" (symbol-name symbol))
        (search "ges_" (symbol-name symbol)))))
