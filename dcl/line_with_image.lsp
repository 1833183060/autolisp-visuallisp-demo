;by ��� qq1833183060
;���ܣ���ʾ 1����lisp���� 2��dcl�ļ�ʹ��
;�����ļ�������ucs-test_with_image.lsp ucs-test_with_image.dcl
;����ͼ��ʹ�� trans-test.dwg
;
�����ز��裺
��1��
(defun c:rectest( / continue curBtn dlgId axisMoveList_value axisRotateList_value position
                    moveValue rotateValue width height)
    (setq continue t)
    (setq dlgId (load_dialog "ucs-test_with_image.dcl"))
    (setq axisMoveList_value "0" axisRotateList_value "0"
        moveValue "20" rotateValue "10"
    )
    (defun initDlg(/ listLabel listValue)
        (setq listLabel (list "��x���ƶ�" "��y���ƶ�" "��z���ƶ�"))
        (start_list "axisMoveList")
        (mapcar 'add_list listLabel)
        (end_list)
        
        (setq listLabel (list "��x����ת" "��y����ת" "��z����ת"))
        (start_list "axisRotateList")
        (mapcar 'add_list listLabel)
        (end_list)
        (set_tile "axisMoveList" axisMoveList_value)
        (set_tile "axisRotateList" axisRotateList_value)
        (set_tile "moveValue" moveValue)
        (set_tile "rotateValue" rotateValue)
    )

    
    
    (while continue
        
        (if (not (new_dialog "a" dlgId "" (cond (position) ((list -1 -1)))))
            (exit)
        )
        (initDlg)
		(initImage)
        ;(setq axisMoveList_value (get_tile "axisMoveList"))
        ;(setq axisRotateList_value (get_tile "axisRotateList"))
        (action_tile "btn1" "(setq curBtn \"btn1\")(setq position (done_dialog 1))")
        (action_tile "cancel" "(setq curBtn \"cancel\")(setq position (done_dialog 1))")
        (action_tile "moveBtn" "(setq curBtn \"moveBtn\")(setq position (done_dialog 1))")
        ;(action_tile "moveRightBtn" "(setq curBtn \"moveRightBtn\")(setq position (done_dialog 1))")
        (action_tile "okBtn" "(setq curBtn \"okBtn\")(setq width (get_tile \"width\"))(setq height (get_tile \"height\"))(setq position (done_dialog 1))")
        ;(action_tile "rotateCCWBtn" "(setq curBtn \"rotateCCWBtn\")(setq position (done_dialog 1))")
        (action_tile "toWCSBtn" "(setq curBtn \"toWCSBtn\")(setq position (done_dialog 1))")
        ;;�˴���ʾ�����ֲ�ͬ�ķ�����ȡpopup_list��ֵ
        (action_tile "axisMoveList" "(setq axisMoveList_value $value)(setq position (done_dialog 1))")
        (action_tile "axisRotateList" "(setq axisRotateList_value (get_tile \"axisRotateList\"))(setq position (done_dialog 1))")
        (action_tile "moveValue" "(setq moveValue (get_tile \"moveValue\"))(setq position (done_dialog 1))")
        (action_tile "rotateValue" "(setq rotateValue (get_tile \"rotateValue\"))(setq position (done_dialog 1))")
        (start_dialog)
        ;(setq axisRotateList_value )
        (cond ((= curBtn "btn1") (f1))
            ((= curBtn "cancel") (setq continue nil))
            
            ((= curBtn "moveBtn") (ucs:move axisMoveList_value  (atof moveValue)))
            ;((= curBtn "moveRightBtn") (ucs:move axisMoveList_value (+ 0 20)))
            ((= curBtn "okBtn") (drawRec width height))
            ;((= curBtn "rotateCCWBtn") (ucs:rotate axisRotateList_value (- 0 20)))
            ((= curBtn "toWCSBtn") (ucs:toWCS))
            (t )
        )
        (setq curBtn nil)
    )
    (unload_dialog dlgId)
)
(defun drawRec (w h)
(command "rec" pause "d" w h "")
)

(defun ucs:move (axis dis / disList origin)
    (setq disList (list 0 0 0))
    ;(setq origin (getvar 'ucsorg))    
   
    (cond ((= axis "0") (setq disList (list dis 0 0)))
        ((= axis "1") (setq disList (list 0 dis 0)))
        ((= axis "2") (setq disList (list 0 0 dis)))
    )
    ;(setq origin (mapcar '(lambda (a b) (+ a b)) origin disList))
    ;(princ origin)
    (command "ucs" disList "")
)

(defun ucs:rotate (axis ang /)      
   
    (cond ((= axis "0") (setq axis "x"))
        ((= axis "1") (setq axis "y"))
        ((= axis "2") (setq axis "z"))
    )
    
    (command "ucs" axis ang)
)
(defun ucs:toWCS ()
    (command "ucs" "")
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




