 ;by ��� qq1833183060
;���ܣ���ʾ 1�� �Ի���Ƕ�ס�
;�����ļ������� nest_dialog.lsp nest_dialog.dcl
;
;���ز��裺
;1������lsp
;2������������ test

(defun c:test ()
  (setq dcl_id (load_dialog "nest_dialog.dcl"))
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun nest1 ()
  (setq dcl_id1 (load_dialog "nest_dialog.dcl"))

  (if (not (new_dialog "child_dialog1" dcl_id1 "" '(700 250))); (700 250)�ǶԻ���λ��

    (exit)

  )

  (action_tile
    "cancel"
    "(done_dialog)
     (setq result1 nil)"
  )

  (action_tile
    "accept"
    "(done_dialog)
     (setq result1 T)"
  )

  (action_tile
    "nest"
    "(nest2)"
  )

  (start_dialog)
  (unload_dialog dcl_id1)

  (princ)

);defun


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun nest2 ()

  (setq dcl_id2 (load_dialog "nest_dialog.dcl"))

  (if (not (new_dialog "child_dialog2" dcl_id2))

    (exit)
  )

  (action_tile
    "cancel"
    "(done_dialog)
     (setq result2 nil)"
  )
  (action_tile
    "accept"
    "(done_dialog)
     (setq result2 T)"
  )

  (start_dialog)

  (unload_dialog dcl_id2)

);defun
