(defpackage :TNA-7DTD.gmsg.com
  (:nicknames :TNA-gmsg.com :TNA-gmsg)
  (:use :cl
	:TNA-7DTD.config
	:TNA-7DTD.listen
	:TNA-7DTD.parse
	:TNA-7DTD.format
	:bordeaux-threads
	:cl-ppcre
	:telnetlib)
  (:export :*gmsg.com-assoc*
	   :gmsg.com/dice
	   :gmsg.com/time))

(in-package :TNA-7DTD.gmsg.com)

(defparameter *gmsg.com-assoc* '(("!tna3//dice" . gmsg.com/dice)
				 ("!tna3//time" . gmsg.com/time)))

(defun gmsg.com/dice (tn name &rest arg)
  (declare (ignore arg tn))
  (let ((die1 (1+ (random 6)))
	(die2 (1+ (random 6))))
    (server-say-format "~a rolled a ~d and a ~d." name die1 die2)))

(defun gmsg.com/time (tn name &rest arg)
  (declare (ignore arg tn))
  (server-say-format "~a, the current timestamp is ~d" name (get-universal-time)))
