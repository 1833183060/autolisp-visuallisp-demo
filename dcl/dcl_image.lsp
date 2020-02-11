;by 鸟哥 qq1833183060
;功能：演示 1、dcl image 控件的使用
;所需文件包括：dcl_image.lsp dcl_image.dcl b.sld

;
；加载步骤：
；1、
(defun c:imgtest( / dlgId )
    
    (setq dlgId (load_dialog "d:\\dcl_image.dcl"));使用时将dcl_image.dcl改成实际dcl文件的绝对路径
    
	(if (not (new_dialog "a" dlgId))
		(exit)
	)
	
	;获取控件宽度
	(setq width (dimx_tile "sld"))；"sld"是dcl文件里key属性指定的值

	;获取控件高度
	(setq height (dimy_tile "sld"))

	;开始图像创建
	(start_image "sld")

	;清除背景
	(fill_image 0 0 width height 4)

	;将sld填充到image控件内
	(slide_image 0 0 width height "D:\\b.sld");使用时将b.sld改成实际sld文件的绝对路径

	;结束图像创建
	(end_image)
	
	(start_dialog)      
    
    (unload_dialog dlgId)
)







