; clispで(load "hanoi.lisp")のあと(hanoi 3)などとして実行
(defun hanoi (discs)
 (cond ((or (null discs) (consp discs) (not (numberp discs)) (< discs 1))
        (format t "Invalid value (~S).~&" discs)
        nil )
       (t (dohanoi discs "from-pole" "to-pole" "work-pole")
          t )))

(defun dohanoi (discno from to work)
 (cond ((= discno 1) (move discno from to))
       (T (dohanoi (- discno 1) from work to)
          (move discno from to)
          (dohanoi (- discno 1) work to from) )))

(defun move (discno from to)
 (format t "Move disc ~A from ~A to ~A.~&" discno from to) )
