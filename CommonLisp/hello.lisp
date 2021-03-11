(* 2 (cos 0) (+ 4 6))
(format t "Hello World!~%")

(defun hello ()
  (write-line "What is your name?")
  (let ((name (read-line)))
    (format t "Hello, ~A.~%" name)))