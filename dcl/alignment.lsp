;by ��� qq1833183060
;���ܣ���ʾ 1��alignment����
;�����ļ�������alignment.lsp alignment.dcl
;
�����ز��裺
;1������lsp
;2������������ test
(defun c:test( / continue curBtn dlgId )
    
    (setq dlgId (load_dialog "alignment.dcl"))
    
    
    
    ;(while continue
        
        (if (not (new_dialog "a" dlgId "" (cond (position) ((list -1 -1)))))
            (exit)
        )
        
        (start_dialog)
        ;(setq axisRotateList_value )
        (cond ((= curBtn "btn1") (f1))
            ((= curBtn "cancel") (setq continue nil))
            
            ((= curBtn "okBtn") (drawRec (mapcar 'atof  (list width height x y))))
            (t )
        )
        (setq curBtn nil)
    ;)
    (unload_dialog dlgId)
)
(defun drawRec (args / w h x y)
	(setq w (car args) h (cadr args) x (nth 2 args) y (nth 3 args))
	(command "rectangle" (list x y) (list (+ x w) (+ y h)))
)







