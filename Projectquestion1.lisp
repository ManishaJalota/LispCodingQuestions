(defun diff(l r)
	(if (and (listp l)(listp r))
    (if (= (length l) (length r))
    (progn		 	
    		(setf return-value '())
        	(loop for i from 0 to (- (length r) 1)
            	do (setf return-value (cons (* (-(nth i l)(nth i r)) (-(nth i l)(nth i r)) (-(nth i l)(nth i r))) return-value))
        	)
        (reverse return-value)
   		)
)))
