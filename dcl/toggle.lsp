 ;by ��� qq1833183060
;���ܣ���ʾ 1�� toggle�ؼ���ʹ�á�2��ͨ��toggle�޸�text�ؼ���ֵ��3��ͨ���ؼ�����ϵͳ����
;�����ļ������� toggle.lsp toggle.dcl
;
;���ز��裺
;1������lsp
;2������������ test
(defun c:test( / continue curBtn dlgId )
    (defun toggle_action ()
		(setq text (strcat "������" orth "��׽:" sna))
		(set_tile "mytext" text);����text�ؼ�
		(setvar "orthomode" (atoi orth))	;���û�������	
		(setvar "snapmode" (atoi sna))		;
	)
    (setq dlgId (load_dialog "toggle.dcl"))
        
	(if (not (new_dialog "a" dlgId))
		(exit)
	)
	(setq orth (itoa (getvar "orthomode")))		;��ȡ����������ֵ����ֵ��orth
	(set_tile "tog1" orth)				

	(setq sna (itoa (getvar "snapmode")))			
	(set_tile "tog2" sna)
	
	(action_tile "tog1" "(setq orth $value)(toggle_action)")		;Ϊtoggle�ؼ����ô������
	(action_tile "tog2" "(setq sna $value)(toggle_action)")
	(toggle_action)
	
	(start_dialog)
	
	(cond ((= curBtn "btn1") (f1))
		((= curBtn "cancel") (setq continue nil))
	   
	)	
 
    (unload_dialog dlgId)
	
)