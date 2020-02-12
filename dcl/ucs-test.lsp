;by ��� qq1833183060
;���ܣ���ʾ 1����lisp����ucs 2��dcl�ļ�ʹ��
;�����ļ�������ucs-test.lsp ucs-test.dcl
;����ͼ��ʹ�� trans-test.dwg
;Ϊ���ܿ�����ǰucs��λ�ã�ʹ��ǰ���� uc����ڵ����ĶԻ����ｫ ����ʾ��ucsԭ�㡱��ѡ
(defun c:ucstest( / continue curBtn dlgId axisMoveList_value axisRotateList_value position
                    moveValue rotateValue)
    (setq continue t)
    (setq dlgId (load_dialog "ucs-test.dcl"))
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
        ;(setq axisMoveList_value (get_tile "axisMoveList"))
        ;(setq axisRotateList_value (get_tile "axisRotateList"))
        (action_tile "btn1" "(setq curBtn \"btn1\")(setq position (done_dialog 1))")
        (action_tile "cancel" "(setq curBtn \"cancel\")(setq position (done_dialog 1))")
        (action_tile "moveBtn" "(setq curBtn \"moveBtn\")(setq position (done_dialog 1))")
        ;(action_tile "moveRightBtn" "(setq curBtn \"moveRightBtn\")(setq position (done_dialog 1))")
        (action_tile "rotateBtn" "(setq curBtn \"rotateBtn\")(setq position (done_dialog 1))")
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
            ((= curBtn "rotateBtn") (ucs:rotate axisRotateList_value  rotateValue))
            ;((= curBtn "rotateCCWBtn") (ucs:rotate axisRotateList_value (- 0 20)))
            ((= curBtn "toWCSBtn") (ucs:toWCS))
            (t )
        )
        (setq curBtn nil)
    )
    (unload_dialog dlgId)
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




