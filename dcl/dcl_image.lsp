;by ��� qq1833183060
;���ܣ���ʾ 1��dcl image �ؼ���ʹ��
;�����ļ�������dcl_image.lsp dcl_image.dcl b.sld

;
�����ز��裺
��1��
(defun c:imgtest( / dlgId )
    
    (setq dlgId (load_dialog "d:\\dcl_image.dcl"));ʹ��ʱ��dcl_image.dcl�ĳ�ʵ��dcl�ļ��ľ���·��
    
	(if (not (new_dialog "a" dlgId))
		(exit)
	)
	
	;��ȡ�ؼ����
	(setq width (dimx_tile "sld"))��"sld"��dcl�ļ���key����ָ����ֵ

	;��ȡ�ؼ��߶�
	(setq height (dimy_tile "sld"))

	;��ʼͼ�񴴽�
	(start_image "sld")

	;�������
	(fill_image 0 0 width height 4)

	;��sld��䵽image�ؼ���
	(slide_image 0 0 width height "D:\\b.sld");ʹ��ʱ��b.sld�ĳ�ʵ��sld�ļ��ľ���·��

	;����ͼ�񴴽�
	(end_image)
	
	(start_dialog)      
    
    (unload_dialog dlgId)
)







