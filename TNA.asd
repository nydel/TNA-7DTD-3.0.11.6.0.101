;;;; -*- Mode: Lisp; -*-

(in-package :cl-user)

(defpackage :TNA-asd
  (:use :cl :asdf))

(in-package :TNA-asd)

(defsystem :tna
    :serial t
    :version "3.0.11.6.1.000"
    :author "<nydel@thegrapevine.cc>"
    :license "LLGPL v3.0 Modified"
    :description "TNA's Not API (Pronounced As 'Tina'] For 7DTD Dedicated."
    :depends-on (:bordeaux-threads
		 :cl-ppcre
		 :telnetlib)
    :components ((:module "src"
		  :serial t
		  :components ((:file "config")
			       (:file "listen")
			       (:file "parse")
			       (:file "format")
			       (:file "gmsg.com")
			       (:file "handle")
			       (:file "package")))))
