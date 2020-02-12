 ;by ��� qq1833183060
;���ܣ���ʾ 1�� image_button��2������ģ�Ϳռ�ı�����ɫ
;�����ļ������� image_button.lsp image_button.dcl
;
;���ز��裺
;1������lsp
;2������������ test

(defun c:test ()
	(setq preferences_display (vla-get-display(vla-get-preferences(vlax-get-acad-object))))
	(defun set_bg_color (k / ci)
		(setq ci (atoi (get_attr k "color")))
		(vla-put-graphicswinmodelbackgrndcolor preferences_display (color_index2ole ci))
	)
  (setq dcl_id (load_dialog "image_button.dcl"))
  ;���� DCL �ļ�

  (if (not (new_dialog "main_dialog" dcl_id))
  ;�½� �Ի���
    (exit)
    ;�½�ʧ�����˳�
  )
	()
	(action_tile "im0" "(set_bg_color \"im0\")")
	(action_tile "im10" "(set_bg_color \"im10\")")
	(action_tile "im1" "(set_bg_color \"im1\")")
	(action_tile "im11" "(set_bg_color \"im11\")")
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

(defun color_index2ole (aci / col)
  (setq col (vla-get-truecolor (vla-get-ActiveLayer(vla-get-ActiveDocument(vlax-get-acad-object)))))
  (vla-put-ColorIndex col aci)
  (vlax-variant-value (vlax-make-variant (+ (* (vla-get-blue  col) 65536)
                                            (* (vla-get-green col) 256)
                                               (vla-get-red   col)
                                          ) vlax-vblong
                      )
  )
)