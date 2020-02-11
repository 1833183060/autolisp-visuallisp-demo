a:dialog{
	label="ucs演示";	
	
	:row{
		:text{
			key="widthText";
			width=18;
			fixed_width=true;
			
		}
		:edit_box{
			key="width";
			edit_width="12";
			fixed_width=true;
		}
		
	}
	:row{
		:text{
			key="heightText";
			width=18;
			fixed_width=true;
		}
		:edit_box{
			key="height";
			edit_width="12";
			fixed_width=true;
		}
		
		
	}
	:row{
		:button{
			key="toWCSBtn";
			label="和世界坐标系重合";
		}
		:button{
			key="okBtn";
			label="确定";
			
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
		label="关闭";
	}
	
}