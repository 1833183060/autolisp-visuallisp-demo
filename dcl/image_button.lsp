 ;by 鸟哥 qq1833183060
;功能：演示 1、 image_button。2、设置模型空间的背景颜色
;所需文件包括： image_button.lsp image_button.dcl
;
;加载步骤：
;1、加载lsp
;2、命令行输入 test

(defun c:test ()
	(setq preferences_display (vla-get-display(vla-get-preferences(vlax-get-acad-object))))
	(defun set_bg_color (k / ci)
		(setq ci (atoi (get_attr k "color")))
		(vla-put-graphicswinmodelbackgrndcolor preferences_display (color_index2ole ci))
	)
  (setq dcl_id (load_dialog "image_button.dcl"))
  ;加载 DCL 文件

  (if (not (new_dialog "main_dialog" dcl_id))
  ;新建 对话框
    (exit)
    ;新建失败则退出
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
  ;关闭按钮被点击

  (action_tile
    "accept"
    "(done_dialog)
     (setq result T)"
  )

  (start_dialog)
  ;弹出对话框

  (unload_dialog dcl_id)
  ;卸载对话框

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