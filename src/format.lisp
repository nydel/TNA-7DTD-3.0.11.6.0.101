(defpackage :TNA-7DTD.format
  (:nicknames :TNA-format)
  (:use :cl
	:TNA-7DTD.config
	:TNA-7DTD.listen
	:telnetlib)
  (:export :server-format
	   :server-say
	   :server-say-format
	   :server-pm
	   :server-pm-format))

(in-package :TNA-7DTD.format)

(defun server-format (tn &rest format-args)
  (write-ln tn (eval (append (list 'format nil) format-args))))

(defun server-say (string &optional (tn *tn-listen*))
  (server-format tn "say ~C~a~a~C" #\" *server-tag* string #\"))

(defun server-say-format (&rest format-args)
  (server-say (eval (append (list 'format nil) format-args))))

(defun server-pm (name string &optional (tn *tn-listen*))
  (server-format tn "pm ~a ~C~a~a~C" name #\" *server-tag* string #\"))

(defun server-pm-format (name &rest format-args)
  (server-pm name (eval (append (list 'format nil) format-args))))
