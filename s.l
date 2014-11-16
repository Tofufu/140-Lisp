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

(defun double-iterative(y)

  (cond
   ( (not (listp y) ) nil )
   ( t
      (do (
	    ;(iterator 1 (+ iterator 1) )
             (rest_list y (rest rest_list) )
             
	     (new_list nil
	        (append new_list
     	 	  (append (list (first rest_list) ) (list (first rest_list) ) )
	           ) ;append()
	      ) ;new_list
	   ) ;do() variables
	  ( (null rest_list) new_list ) ;return value after the do is done!
      ) ;do()
     ); t()
   )
  ) ;double iterative()

(defun double-mapcar(y)
  (cond
   ( (not (listp y) ) nil)
   (t
    (apply #'append   ;This appends all the lists w/in the list ( 1 1 2 2 3 3 )
	   (mapcar 'append ;since it's a list within a list, we can append each 'list' to the other 'list'
		   ; ( (1 1) (2 2) (3 3) ) ->lists w/in list
		   (mapcar 'list y) (mapcar 'list y) ;mapcar 'list y = ( (1) (2) (3) ) , makes each element a list
	   )
    ) ;apply
   );t()
  );cond()
) ;double-mapcar()

;Alternative way of listing...
; (apply 'mapcar (cons 'list (list '(1 2) '(1 2) ) ) )
;cons 'list (list '(1 2) '(1 2) -> (list (1 2) (1 2))
;When apply mapcar sees that, it will do mapcar 'list (1 2) (1 2) which is listing each element together (1 1) (2 2)
;since we're apply 'mapcar to each element ('list (1) (1) ) like that....


	  

               
     
 
