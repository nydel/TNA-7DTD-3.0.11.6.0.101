(defpackage :TNA-7DTD.config
  (:nicknames :TNA-config)
  (:use :cl)
  (:export :*server-addr*
	   :*server-port*
	   :*server-tag*))

(in-package :TNA-config)

(defparameter *server-addr* "localhost")
(defparameter *server-port* 8081)
(defparameter *server-tag* "[TNA]] ")
