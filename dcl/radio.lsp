;by ��� qq1833183060
;���ܣ���ʾ 1�� radio��ť
;�����ļ������� radio.lsp radio.dcl
;
�����ز��裺
;1������lsp
;2������������ test
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








