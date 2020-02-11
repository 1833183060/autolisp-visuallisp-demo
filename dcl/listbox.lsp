 ;by 鸟哥 qq1833183060
;功能：演示 1、 list_box控件的使用。
;所需文件包括： listbox.lsp listbox.dcl
;
;加载步骤：
;1、加载lsp
;2、命令行输入 test
(defun c:test( / continue curBtn dlgId list2str)
	;(setq list2str "")
	(defun mystrcat (i)
		(setq list2str (strcat list2str (nth  i myList2) " "))
	)
    (defun list_action ()
		(setq list2str "")
		(princ list2_value)
		
			;(setq list2str (nth (atoi list2_value) myList2))
			(progn 
				(mapcar 'mystrcat (read (strcat "(" list2_value ")")))
			)
		
		(setq text (strcat "方向：" (nth (atoi list1_value) myList1) "  城市:" list2str))
		(set_tile "mytext" text);设置text控件
		
	)
    (setq dlgId (load_dialog "listbox.dcl"))
        
	(if (not (new_dialog "a" dlgId))
		(exit)
	)
	(setq myList1(list "正南" "正北" "正东" "正西"))

	(setq myList2(list "北京" "上海" "深圳" "广东"))
	
	(start_list "mylist1" 3)   ; The 3 means we want to delete the old contents and start 
	(mapcar 'add_list myList1)
  
	(end_list)

	(start_list "mylist1" 3)
	(mapcar 'add_list myList1)
	(end_list)

	(start_list "mylist2" 3)
	(mapcar 'add_list myList2)
	(end_list)
	
	(action_tile "mylist1" "(setq list1_value $value)(list_action)")
	(action_tile "mylist2" "(setq list2_value $value)(list_action)")
	
	(start_dialog)
	
	(cond ((= curBtn "btn1") (f1))
		((= curBtn "cancel") (setq continue nil))
	   
	)	
 
    (unload_dialog dlgId)
	
)