(defpackage :TNA-7DTD.parse
  (:nicknames :TNA-parse)
  (:use :cl
	:TNA-7DTD.listen
	:cl-ppcre)
  (:export :gmsg-p
	   :parse-gmsg-line))

(in-package :TNA-parse)

(defun gmsg-p (line)
  (all-matches "(GMSG:\\s)([^:]*)(:\\s+)(.*)" line))

(defun parse-gmsg-line (line)
  (register-groups-bind (name msg)
      ("GMSG:\\s([^:]*):\\s+(.*)" line)
      (list name msg)))
