 ;by 鸟哥 qq1833183060
;功能：演示 1、 对话框嵌套。
;所需文件包括： image_button.lsp image_button.dcl
;
;加载步骤：
;1、加载lsp
;2、命令行输入 test

(defun c:test ()
  (setq dcl_id (load_dialog "image_button.dcl"))
  ;加载 DCL 文件

  (if (not (new_dialog "main_dialog" dcl_id))
  ;新建 对话框
    (exit)
    ;新建失败则退出
  )

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
  ;

  (action_tile    "nest"    "(nest1)"  )
  ;点击“子对话框”按钮后调用nest1函数

  (start_dialog)
  ;弹出对话框

  (unload_dialog dcl_id)
  ;卸载对话框

  (princ)

);defun


