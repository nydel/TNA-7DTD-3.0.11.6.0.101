(defpackage :TNA-7DTD
  (:nicknames :TNA)
  (:use :cl
	:TNA-7DTD.config
	:TNA-7DTD.listen
	:TNA-7DTD.parse
	:TNA-7DTD.handle
	:TNA-7DTD.format
	:TNA-7DTD.gmsg.com
	:bordeaux-threads
	:cl-ppcre
	:telnetlib)
  (:export :tna-main))

(in-package :TNA)

(defun tna-main ()
  (format t "hello, world, at ~d" (get-universal-time)))

(defun tna3-init (password)
  (tn-listen-connect password)
  (thread-handler *tn-listen*))
