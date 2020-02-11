;by 鸟哥 qq1833183060
;功能：演示 1、 radio按钮
;所需文件包括： radio.lsp radio.dcl
;
；加载步骤：
;1、加载lsp
;2、命令行输入 test
(defun c:test( / continue curBtn dlgId )
    
    (setq dlgId (load_dialog "radio.dcl"))
        
        (if (not (new_dialog "a" dlgId))
            (exit)
        )
        
        (start_dialog)
        
        (cond ((= curBtn "btn1") (f1))
            ((= curBtn "cancel") (setq continue nil))
           
        )
 
    (unload_dialog dlgId)
	
	
)








