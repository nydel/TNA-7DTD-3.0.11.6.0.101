(defpackage :TNA-7DTD.listen
  (:nicknames :TNA-listen)
  (:use :cl :telnetlib :TNA-7DTD.config)
  (:export :*tn-listen*
	   :tn-listen-connect))

(in-package :TNA-listen)

(defvar *tn-listen* nil)

(defun tn-listen-connect (password)
  (let ((tn
	 (open-telnet-session *server-addr*
			      *server-port*)))
    (set-telnet-session-option tn :remove-return-char t)
    (read-available-data tn)
    (write-ln tn password)
    (read-available-data tn)
    (write-ln tn "loglevel ALL false")
    (read-available-data tn)
    (write-ln tn "loglevel INF true")
    (read-available-data tn)
    (setf *tn-listen* tn)))
