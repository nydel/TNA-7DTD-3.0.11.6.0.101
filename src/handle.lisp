(defpackage :TNA-7DTD.handle
  (:nicknames :TNA-handle)
  (:use :cl
	:TNA-7DTD.config
	:TNA-7DTD.listen
	:TNA-7DTD.parse
	:TNA-7DTD.format
	:TNA-7DTD.gmsg.com
	:bordeaux-threads
	:cl-ppcre
	:telnetlib)
  (:export :handle-gmsg
	   :handle
	   :handle-telnet-line
	   :handler
	   :thread-handler))

(in-package :TNA-7DTD.handle)

(defun handle-gmsg (gmsg &optional (tn *tn-listen*))
  (let* ((msg-split (split "\\s" (cadr gmsg)))
	 (gmsg-a (assoc (car msg-split) *gmsg.com-assoc* :test #'string-equal)))
    (when gmsg-a
      (eval (append (list (cdr gmsg-a) tn (car gmsg)) (cdr msg-split))))))

(defun handle-telnet-line (line tn)
  (when (gmsg-p line)
    (handle-gmsg (parse-gmsg-line line) tn)))

(defun handler (tn)
  (let* ((raw-data (read-available-data tn))
	 (data-lines (split "\\n" raw-data)))
    (mapcar
     (lambda (y)
       (handle-telnet-line y tn))
     data-lines)))

(defun thread-handler (tn)
  (make-thread
   (lambda ()
     (loop do
	  (handler tn)
	  (sleep 0.1)))
   :name (format nil ":TNA-7DTD.listen/handle:~d" (get-universal-time))))
