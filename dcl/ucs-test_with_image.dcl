a:dialog{
	label="ucs��ʾ";
	
	
	:row{
		:popup_list{
			key="axisMoveList";
			width=18;
			fixed_width=true;
			
		}
		:edit_box{
			key="moveValue";
			edit_width="12";
			fixed_width=true;
		}
		
		:button{
			key="moveBtn";
			label="ȷ��";
			//action="(setq curBtn \"moveRightBtn\")(done_dialog 1)";
		}
	}
	:row{
		:popup_list{
			key="axisRotateList";
			width=18;
			fixed_width=true;
		}
		:edit_box{
			key="rotateValue";
			edit_width="12";
			fixed_width=true;
		}
		:button{
			key="rotateBtn";
			label="ȷ��";
			//action="(setq curBtn \"rotateCWBtn\")(done_dialog 1)";
		}
		
	}
	:row{
		:button{
			key="toWCSBtn";
			label="����������ϵ�غ�";
		}
	}	
	: image { 
	  key = "sld"; 
	  height =5; 
	  width = 12;  
		color = 0;
	  is_enabled = false; 
	  is_tab_stop = false;
	}
	spacer;
		
	:cancel_button{
		label="�ر�";
	}
	
}