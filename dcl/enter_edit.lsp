 ;by ��� qq1833183060
 ;file:enter_edit.lsp
;���ܣ���ʾ 1�� �ڱ༭���ﰴ���س����൱�ڵ����ȷ������ť
;�����ļ������� enter_edit.lsp enter_edit.dcl 
;
;���ز��裺
;1������lsp
;2������������ test

(defun c:test ()
	
  (setq dcl_id (load_dialog "enter_edit.dcl"))
  ;���� DCL �ļ�

  (if (not (new_dialog "main_dialog" dcl_id))
  ;�½� �Ի���
    (exit)
    ;�½�ʧ�����˳�
  )
	
  (action_tile
    "cancel"
    "(done_dialog)
     (setq result nil)"
  )
  ;�رհ�ť�����

  (action_tile
    "accept"
    "(done_dialog)
     (setq result T)"
  )

  (start_dialog)
  ;�����Ի���

  (unload_dialog dcl_id)
  ;ж�ضԻ���

  (princ)

)

 