;by ��� qq1833183060
;���ܣ���ʾ 1�� popup_list
;�����ļ������� popup_list.lsp popup_list.dcl
;
�����ز��裺
;1������lsp
;2������������ test
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