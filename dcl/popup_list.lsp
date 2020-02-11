;by 鸟哥 qq1833183060
;功能：演示 1、 popup_list
;所需文件包括： popup_list.lsp popup_list.dcl
;
；加载步骤：
;1、加载lsp
;2、命令行输入 test
(defun c:test( / continue curBtn dlgId )
    (setq lists '("A1" "A2" "A3" "A4"
                "A5" "A6"))
    (setq dlgId (load_dialog "popup_list.dcl"))
        
        (if (not (new_dialog "a" dlgId))
            (exit)
        )
		(start_list "popup")				;*start the list box
		(mapcar 'add_list lists)				;*fill the list box
		(end_list)	
        (start_dialog)
        
        (cond ((= curBtn "btn1") (f1))
            ((= curBtn "cancel") (setq continue nil))
           
        )
 
    (unload_dialog dlgId)
	
)