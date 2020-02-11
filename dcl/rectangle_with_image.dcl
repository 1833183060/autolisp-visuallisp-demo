a:dialog{
	label="rectangle演示";	
	:row{
		:text{
			key="";
			width=8;
			fixed_width=true;
			value="位置";
		}
		
		:text{
			width=3;
			value="x";
		}
		:edit_box{
			key="x";
			edit_width="12";
			fixed_width=true;
		}
	
		:text{
			width=3;
			value="y";
		}
		:edit_box{
			key="y";
			edit_width="12";
			fixed_width=true;
		}		
		
	}
	:row{
		:text{
			key="widthText";
			width=10;
			fixed_width=true;
			value="宽度：";
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
			width=10;
			fixed_width=true;
			value="高度";
		}
		:edit_box{
			key="height";
			edit_width="12";
			fixed_width=true;
		}
		
		
	}
	
	:image { 
	  key = "sld"; 
	  height =5; 
	  width = 12;  
		color = 0;
	  is_enabled = false; 
	  is_tab_stop = false;
	}
	spacer;
	:row{
		
		:button{
			key="okBtn";
			label="确定";
			
		}
		:cancel_button{
			label="关闭";
		}
	}		
	
	
}