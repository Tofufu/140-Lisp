(defun double-recursive(y)
		 (cond
		   (  (not (listp y) ) nil ) ;if y is not a list
		   (  (null y)  nil ) ;if we're done recursing s.t. x is nil
		   ( t
		    (append 
			 (append (list (car y) ) (list (car y) )  ) ;append b/c cons gives y.y
			 (double-recursive (cdr y) ) ;recurse and do for the rest of the list
		     ) ;append ( appended beginning + recurse )
		    ); true
		   );cond()
) ;double recursion()

