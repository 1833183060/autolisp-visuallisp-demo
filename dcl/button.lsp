;by ��� qq1833183060
;���ܣ���ʾ 1�� �ڶԻ�������ʾ�ı�
;�����ļ������� button.lsp button.dcl
;
�����ز��裺
;1������lsp
;2������������ test
(defun c:test( / continue curBtn dlgId )
    (defun modText ()
		(set_tile "text1" "�������")
	)
    (setq dlgId (load_dialog "button.dcl"))
        
        (if (not (new_dialog "a" dlgId "" (cond (position) ((list -1 -1)))))
            (exit)
        )
        (action_tile "okBtn" "(modText)")
        (start_dialog)
        
        (cond ((= curBtn "btn1") (f1))
            ((= curBtn "cancel") (setq continue nil))
           
        )
 
    (unload_dialog dlgId)
	
	
)








