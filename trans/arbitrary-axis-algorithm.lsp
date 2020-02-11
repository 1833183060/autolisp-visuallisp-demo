;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;任意轴算法的lisp实现，来自http://bbs.mjtd.com/forum.php?mod=viewthread&tid=99954&highlight=trans 

;;OCS的变换矩阵，或叫法线矢量的变换矩阵
(defun OcsMatrix (zdir / xdir)
  (or (equal 1.0 (distance '(0 0 0) zdir) 1e-8)
      (setq zdir (Normalize zdir))                      ; 先把矢量单位化。
  )
  (if (and (< (abs (car zdir)) 0.015625)                ; 如果(abs (Nx) < 1/64) 
	   (< (abs (cadr zdir)) 0.015625)               ; 且 (abs (Ny) < 1/64)
      )
    (setq xdir (Normalize (CrossProduct '(0 1 0) zdir))); Ax = Wy X N   （叉积）
    (setq xdir (Normalize (CrossProduct '(0 0 1) zdir)));否则 Ax = Wz X N。
  )
  (list xdir (Normalize (CrossProduct zdir xdir)) zdir) ;Y方向满足右手型坐标系统
)

;; CrossProduct
;; Returns the cross product (vector) of two vectors
;; Arguments : two vectors
;; 两个矢量的叉积，参数两个矢量，返回值一个矢量.
(defun CrossProduct (v1 v2)
  (list	(- (* (cadr v1) (caddr v2)) (* (caddr v1) (cadr v2)))
	(- (* (caddr v1) (car v2)) (* (car v1) (caddr v2)))
	(- (* (car v1) (cadr v2)) (* (cadr v1) (car v2)))
  )
)

;; Normalize
;; Returns the single unit vector
;; Argument : a vector
;; 把一个矢量单位化.
(defun Normalize (v)
  ( (lambda (l)
      (if (/= 0 l)
        (mapcar (function (lambda (x) (/ x l))) v)
      )
    )
    (distance '(0 0 0) v)
  )
)

;; Apply a transformation matrix to a vector by Vladimir Nesterovsky
(defun mxv (m v)
  (mapcar (function (lambda (r) (apply '+ (mapcar '* r v)))) m)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;
;by 鸟哥qq1833183060
;获取图元normal
(defun c:getNormal(/ ename normal)

    (setq ename (car (entsel "\n请选择对象：")))
    (setq normal (getNormal ename))
    (princ "\n法向是：")
    (princ   normal)
    (princ)
)
(defun getNormal (ename /  normal)
    (setq normal (vlax-variant-value (vla-get-Normal (vlax-ename->vla-object ename))))
    (setq normal (vlax-safearray->list normal))
)

;验证任意轴算法 OcsMatrix 的正确性
;normal 为任意向量
(defun OcsMatrix-test (normal / ent  ocsvector)
    (setq oldosmode (getvar "osmode"))
    (setvar "osmode" (logior (getvar "osmode") 16384))
    (setq pt (list 1 1 1))
    (command "ucs" "")
    
    (setq ocsvector (OcsMatrix normal))
    (princ ocsvector)
    (command "ucs" "3p" "0,0,0"  (car ocsvector)   (cadr ocsvector) )
    (setq pt2 (trans '(0 0 1) normal 1))
    (princ "\n(0 0 1)变换后坐标是：")
    (princ pt2)
    (setq pt2 (trans '(1 0 0) normal 1))
    (princ "\n(1 0 0)变换后坐标是：")
    (princ pt2)
    (setq pt2 (trans '(0 1 0) normal 1))
    (princ "\n(0 1 0)变换后坐标是：")
    (princ pt2)
    
    (setvar "osmode" oldosmode)
    (princ)
)