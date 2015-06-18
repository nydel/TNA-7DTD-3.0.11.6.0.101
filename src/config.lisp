(defpackage :TNA-7DTD.config
  (:nicknames :TNA-config)
  (:use :cl)
  (:export :*server-addr*
	   :*server-port*
	   :*server-tag*))

(in-package :TNA-config)

(defparameter *server-addr* "nydel-700-147c")
(defparameter *server-port* 23081)
(defparameter *server-tag* "[TNA3] ")
