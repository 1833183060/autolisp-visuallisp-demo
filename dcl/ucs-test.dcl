a:dialog{
	label="ucs演示";
	
	
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
			label="确定";
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
			label="确定";
			//action="(setq curBtn \"rotateCWBtn\")(done_dialog 1)";
		}
		
	}
	:row{
		:button{
			key="toWCSBtn";
			label="和世界坐标系重合";
		}
	}	
	
	spacer;
		
	:cancel_button{
		label="关闭";
	}
}