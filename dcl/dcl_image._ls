;by 鸟哥 qq1833183060
;功能：演示 1、用lisp绘制 2、dcl的简单使用
;所需文件包括：ucs-test_with_image.lsp ucs-test_with_image.dcl
;测试图形使用 trans-test.dwg
;
；加载步骤：
；1、
(defun c:rectest( / continue curBtn dlgId axisMoveList_value axisRotateList_value position
                    moveValue rotateValue width height x y)
    (setq continue t)
    (setq dlgId (load_dialog "rectangle_with_image.dcl"))
    (setq axisMoveList_value "0" axisRotateList_value "0"
        moveValue "20" rotateValue "10"
    )
    (defun initDlg(/ listLabel listValue)
        (setq listLabel (list "沿x轴移动" "沿y轴移动" "沿z轴移动"))
        (start_list "axisMoveList")
        (mapcar 'add_list listLabel)
        (end_list)
        
        (setq listLabel (list "绕x轴旋转" "绕y轴旋转" "绕z轴旋转"))
        (start_list "axisRotateList")
        (mapcar 'add_list listLabel)
        (end_list)
        (set_tile "axisMoveList" axisMoveList_value)
        (set_tile "axisRotateList" axisRotateList_value)
        (set_tile "moveValue" moveValue)
        (set_tile "rotateValue" rotateValue)
    )

    
    
    ;(while continue
        
        (if (not (new_dialog "a" dlgId "" (cond (position) ((list -1 -1)))))
            (exit)
        )
        (initDlg)
		(initImage)
        
        (action_tile "btn1" "(setq curBtn \"btn1\")(setq position (done_dialog 1))")
        (action_tile "cancel" "(setq curBtn \"cancel\")(setq position (done_dialog 1))")
        
        (action_tile "okBtn" "(setq curBtn \"okBtn\")(setq x (get_tile \"x\"))(setq y (get_tile \"y\"))(setq width (get_tile \"width\"))(setq height (get_tile \"height\"))(setq position (done_dialog 1))")
        ;(action_tile "rotateCCWBtn" "(setq curBtn \"rotateCCWBtn\")(setq position (done_dialog 1))")
        (action_tile "toWCSBtn" "(setq curBtn \"toWCSBtn\")(setq position (done_dialog 1))")
        
        (start_dialog)
        ;(setq axisRotateList_value )
        (cond ((= curBtn "btn1") (f1))
            ((= curBtn "cancel") (setq continue nil))
            
            ((= curBtn "okBtn") (drawRec (mapcar 'atof  (list width height x y))))
            (t )
        )
        (setq curBtn nil)
    ;)
    (unload_dialog dlgId)
)
(defun drawRec (args / w h x y)
	(setq w (car args) h (cadr args) x (nth 2 args) y (nth 3 args))
	(command "rectangle" (list x y) (list (+ x w) (+ y h)))
)


(defun initImage ()

;;;--- First we need a slide name 
(setq mySlideName "b.sld")

;;;--- Second we need the key to the image control 
(setq myKey "sld")

;;;--- Next we send the slide name and the key to the update function 
(upDateImage mySlideName myKey)

; NOTE: Notice mySlideName becomes sldName and myKey becomes key when passed 
;       as parameters to the upDateImage function.
)
;;;--- Function to update the slide

(defun upDateImage(sldName key)         

  ;;;--- Get the width of the slide
  (setq width (dimx_tile key))

  ;;;--- Get the height of the slide 
  (setq height (dimy_tile key))

  ;;;--- Start the slide definition
  (start_image key)

  ;;;--- Wipe out the background
  (fill_image 0 0 width height 4)

  ;;;--- Put the slide in the image area
  (slide_image 0 0 width height sldName)

  ;;;--- Finish the slide definition
  (end_image)

)




