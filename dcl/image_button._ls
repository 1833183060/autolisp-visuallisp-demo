 ;by ��� qq1833183060
;���ܣ���ʾ 1�� �Ի���Ƕ�ס�
;�����ļ������� image_button.lsp image_button.dcl
;
;���ز��裺
;1������lsp
;2������������ test

(defun c:test ()
  (setq dcl_id (load_dialog "image_button.dcl"))
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
  ;

  (action_tile    "nest"    "(nest1)"  )
  ;������ӶԻ��򡱰�ť�����nest1����

  (start_dialog)
  ;�����Ի���

  (unload_dialog dcl_id)
  ;ж�ضԻ���

  (princ)

);defun


