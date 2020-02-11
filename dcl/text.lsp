;by 鸟哥 qq1833183060
;功能：演示 1、 在对话框中显示文本
;所需文件包括： text.lsp text.dcl
;
；加载步骤：
;1、加载lsp
;2、命令行输入 test
(defun c:test( / continue curBtn dlgId )
    
    (setq dlgId (load_dialog "text.dcl"))
        
        (if (not (new_dialog "a" dlgId "" (cond (position) ((list -1 -1)))))
            (exit)
        )
        
        (start_dialog)
        
        (cond ((= curBtn "btn1") (f1))
            ((= curBtn "cancel") (setq continue nil))
           
        )
 
    (unload_dialog dlgId)
)








