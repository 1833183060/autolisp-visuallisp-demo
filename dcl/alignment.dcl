a:dialog{
	label="alignment演示";	
	:column{
		
		:button{
			key="";
			width=8;
			fixed_width=true;
			label="位置";
			alignment=right;   //默认是左对齐的，这里让按钮右对齐
		}
		
		:button{
			key="x";
			edit_width="12";
			fixed_width=true;
			label="按钮";
		}
	
		:button{
			key="y";
			edit_width="12";
			fixed_width=true;
			label="按钮2";
		}		
		
	}
	
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