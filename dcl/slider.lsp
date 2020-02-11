;by 鸟哥 qq1833183060
;功能：演示 1、 slider
;所需文件包括： slider.lsp slider.dcl
;
;加载步骤：
;1、加载lsp
;2、命令行输入 test
(defun c:test( / continue curBtn dlgId )
    
    (setq dlgId (load_dialog "slider.dcl"))
        
        (if (not (new_dialog "a" dlgId))
            (exit)
        )
		(set_tile "myedit" "30")	
		(set_tile "myslider" "30")

		(action_tile "myslider"				;用户滑动slider时触发
		"(slider_action $value $reason)")		;调用slider_action

		(action_tile "myedit" 					;用户修改编辑框文字时触发
		"(ebox_action $value $reason)")		;调用ebox_action

		(defun slider_action (val why)			
			(if (or (= why 2) (= why 1))		
				(set_tile "myedit" val)
			)
		)			

		(defun ebox_action (val why)			
			(if (or (= why 2) (= why 1))	
				(set_tile "myslider" val)
			)
		)
        (start_dialog)
        
        (cond ((= curBtn "btn1") (f1))
            ((= curBtn "cancel") (setq continue nil))
           
        )
 
    (unload_dialog dlgId)
	
)