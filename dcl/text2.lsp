;by ��� qq1833183060
;���ܣ���ʾ 1�� �ڶԻ�������ʾ�����ı�
;�����ļ������� text2.lsp text2.dcl
;
�����ز��裺
;1������lsp
;2������������ test
(defun c:test( / continue curBtn dlgId )
    
    (setq dlgId (load_dialog "text2.dcl"))
        
        (if (not (new_dialog "a" dlgId "" (cond (position) ((list -1 -1)))))
            (exit)
        )
        
        (start_dialog)
        
        (cond ((= curBtn "btn1") (f1))
            ((= curBtn "cancel") (setq continue nil))
           
        )
 
    (unload_dialog dlgId)
)
