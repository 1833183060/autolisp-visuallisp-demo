;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;�������㷨��lispʵ�֣�����http://bbs.mjtd.com/forum.php?mod=viewthread&tid=99954&highlight=trans 

;;OCS�ı任���󣬻�з���ʸ���ı任����
(defun OcsMatrix (zdir / xdir)
  (or (equal 1.0 (distance '(0 0 0) zdir) 1e-8)
      (setq zdir (Normalize zdir))                      ; �Ȱ�ʸ����λ����
  )
  (if (and (< (abs (car zdir)) 0.015625)                ; ���(abs (Nx) < 1/64) 
	   (< (abs (cadr zdir)) 0.015625)               ; �� (abs (Ny) < 1/64)
      )
    (setq xdir (Normalize (CrossProduct '(0 1 0) zdir))); Ax = Wy X N   �������
    (setq xdir (Normalize (CrossProduct '(0 0 1) zdir)));���� Ax = Wz X N��
  )
  (list xdir (Normalize (CrossProduct zdir xdir)) zdir) ;Y������������������ϵͳ
)

;; CrossProduct
;; Returns the cross product (vector) of two vectors
;; Arguments : two vectors
;; ����ʸ���Ĳ������������ʸ��������ֵһ��ʸ��.
(defun CrossProduct (v1 v2)
  (list	(- (* (cadr v1) (caddr v2)) (* (caddr v1) (cadr v2)))
	(- (* (caddr v1) (car v2)) (* (car v1) (caddr v2)))
	(- (* (car v1) (cadr v2)) (* (cadr v1) (car v2)))
  )
)

;; Normalize
;; Returns the single unit vector
;; Argument : a vector
;; ��һ��ʸ����λ��.
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
;by ���qq1833183060
;��ȡͼԪnormal
(defun c:getNormal(/ ename normal)

    (setq ename (car (entsel "\n��ѡ�����")))
    (setq normal (getNormal ename))
    (princ "\n�����ǣ�")
    (princ   normal)
    (princ)
)
(defun getNormal (ename /  normal)
    (setq normal (vlax-variant-value (vla-get-Normal (vlax-ename->vla-object ename))))
    (setq normal (vlax-safearray->list normal))
)

;��֤�������㷨 OcsMatrix ����ȷ��
;normal Ϊ��������
(defun OcsMatrix-test (normal / ent  ocsvector)
    (setq oldosmode (getvar "osmode"))
    (setvar "osmode" (logior (getvar "osmode") 16384))
    (setq pt (list 1 1 1))
    (command "ucs" "")
    
    (setq ocsvector (OcsMatrix normal))
    (princ ocsvector)
    (command "ucs" "3p" "0,0,0"  (car ocsvector)   (cadr ocsvector) )
    (setq pt2 (trans '(0 0 1) normal 1))
    (princ "\n(0 0 1)�任�������ǣ�")
    (princ pt2)
    (setq pt2 (trans '(1 0 0) normal 1))
    (princ "\n(1 0 0)�任�������ǣ�")
    (princ pt2)
    (setq pt2 (trans '(0 1 0) normal 1))
    (princ "\n(0 1 0)�任�������ǣ�")
    (princ pt2)
    
    (setvar "osmode" oldosmode)
    (princ)
)