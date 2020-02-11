 ;by 鸟哥 qq1833183060
;功能：演示 1、 toggle控件的使用。2、通过toggle修改text控件的值。3、通过控件设置系统变量
;所需文件包括： toggle.lsp toggle.dcl
;
;加载步骤：
;1、加载lsp
;2、命令行输入 test
(defun c:test( / continue curBtn dlgId )
    (defun toggle_action ()
		(setq text (strcat "正交：" orth "捕捉:" sna))
		(set_tile "mytext" text);设置text控件
		(setvar "orthomode" (atoi orth))	;设置环境变量	
		(setvar "snapmode" (atoi sna))		;
	)
    (setq dlgId (load_dialog "toggle.dcl"))
        
	(if (not (new_dialog "a" dlgId))
		(exit)
	)
	(setq orth (itoa (getvar "orthomode")))		;获取环境变量的值并赋值给orth
	(set_tile "tog1" orth)				

	(setq sna (itoa (getvar "snapmode")))			
	(set_tile "tog2" sna)
	
	(action_tile "tog1" "(setq orth $value)(toggle_action)")		;为toggle控件设置处理程序
	(action_tile "tog2" "(setq sna $value)(toggle_action)")
	(toggle_action)
	
	(start_dialog)
	
	(cond ((= curBtn "btn1") (f1))
		((= curBtn "cancel") (setq continue nil))
	   
	)	
 
    (unload_dialog dlgId)
	
)