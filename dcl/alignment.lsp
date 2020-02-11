;by 鸟哥 qq1833183060
;功能：演示 1、alignment属性
;所需文件包括：alignment.lsp alignment.dcl
;
；加载步骤：
;1、加载lsp
;2、命令行输入 test
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







