 ;by ��� qq1833183060
 ;include.lsp
;���ܣ���ʾ 1�� ��һ���Ի����а�����һ���Ի���
;�����ļ������� include.lsp include.dcl included.dcl
;
;���ز��裺
;1������lsp
;2������������ test

(defun c:test ()
	
  (setq dcl_id (load_dialog "include.dcl"))
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

 