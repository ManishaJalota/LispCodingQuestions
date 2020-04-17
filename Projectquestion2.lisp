(defun mins (lst1 lst2 lst3) 
  (if (= (length lst1) (length lst2) (length lst3))

	(cond 
			((null lst1) nil)
			((null lst2) nil)
			((null lst3) nil)
		((< (car lst1) (car lst2))
		      (cond ((< (car lst1) (car lst3)) (cons (* (car lst1) (car lst1) (car lst1))(mins (cdr lst1) (cdr lst2) (cdr lst3))))
			       (cons  (* (car lst3) (car lst3) (car lst3))(mins (cdr lst1) (cdr lst2) (cdr lst3)))))
		  ((< (car lst2) (car lst3))(cons (*(car lst2) (car lst2) (car lst2)) (mins (cdr lst1) (cdr lst2) (cdr lst3))))
		  	(cons  (* (car lst3) (car lst3) (car lst3)) (mins (cdr lst1) (cdr lst2) (cdr lst3))))))
(print (mins '() '(-2 -200 1 -1) '(-10 1 2 9)))