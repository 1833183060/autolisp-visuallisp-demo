;by ��� qq1833183060
;���ܣ���ʾ 1�� slider
;�����ļ������� slider.lsp slider.dcl
;
;���ز��裺
;1������lsp
;2������������ test
(defun c:test( / continue curBtn dlgId )
    
    (setq dlgId (load_dialog "slider.dcl"))
        
        (if (not (new_dialog "a" dlgId))
            (exit)
        )
		(set_tile "myedit" "30")	
		(set_tile "myslider" "30")

		(action_tile "myslider"				;�û�����sliderʱ����
		"(slider_action $value $reason)")		;����slider_action

		(action_tile "myedit" 					;�û��޸ı༭������ʱ����
		"(ebox_action $value $reason)")		;����ebox_action

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