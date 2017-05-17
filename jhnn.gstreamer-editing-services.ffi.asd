(asdf:defsystem :jhnn.gstreamer-editing-services.ffi
  :description "Generated FFI bindings for gstreamer editing services."
  :author "Johann Makram Salib Bestowrous <johann.bestowrous@gmail.com>"
  :license "MIT" ;; also BSD or bugroff
  :version "0" ;; not even released
  :depends-on (:cffi
               :cffi/c2ffi
               :cffi-libffi)
  :serial t
  :defsystem-depends-on (:cffi/c2ffi)
  :components ((:file "package")
               (:file "ges-ffi")
               (:file "c2ffi-transforms")
               (:module "spec"
                        :components
                        ((:cffi/c2ffi-file
                          "ges.h"
                          :foreign-library-name "jhnn.gstreamer-editing-services.ffi::ges"
                          :foreign-library-spec ((t (:default "libges-1.0")))
                          :ffi-name-export-predicate "jhnn.gstreamer-editing-services.ffi::ffi-export-predicate"
                          :package #:jhnn.gstreamer-editing-services.ffi
                          :exclude-definitions (
                                                ;; long-doubles aren't covered
                                                "_GFloatIEEE754"
                                                 "_GDoubleIEEE754"
                                                 "_GDate"
                                                 "_GHookList"
                                                 "_GIOChannel"
                                                 "_GScannerConfig"
                                                 "_GClosure"
                                                 "_GParamSpecString"
                                                 ;; guint fails an assertion
                                                 "g_assertion_message_cmpnum"
                                                 "GTestLogMsg"))))))
