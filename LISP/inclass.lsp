(defun is2l (myList)
  (listp (cadr myList)  )
;  (cond
;    ( (listp (car (cdr myList) )) t)
;    ( (atom  (car (cdr myList) )) nil)
;    ( t nil)
;  )
  )

(defun listSize (myl)
  (cond
    ( (null myl)  0  )
    ( t           (+ 1 (listSize (cdr myl)) ) )
   
   )
  )

(defun atomCount (myl)
  (cond
    ( (null myl)  0  )
    ( (listp (car myl)) (+ (atomCount (car myl))  (atomCount (cdr myl)) ) )
    ( t           (+ 1 (atomCount (cdr myl)) ) )
   
   )
)


(defun howToCompare ( l1 l2 )

   (> (car l1) (car l2) )
;  (cond
;    ( (< (car l1) (car l2)) t    )
;    ( t                     'nil ) 
;  )
)

(defun sortSublists ( myl  )

   (sort myl 'howToCompare)
  
)
