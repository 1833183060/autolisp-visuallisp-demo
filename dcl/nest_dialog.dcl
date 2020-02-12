main_dialog:dialog{
	label="main dialog by 鸟哥";
	:row{		
		:button{
			key="accept";
			label="确定";
			
		}
		:button{
			key="nest";
			label="子对话框1";
		}
		:cancel_button{
			label="关闭";
		}
	}	
}

child_dialog1:dialog{
	label="child_dialog1 by 鸟哥";			
	
	
	:row{		
		:button{
			key="accept";
			label="确定";
			
		}
		:button{
			key="nest";
			label="子对话框2";
		}
		:cancel_button{
			label="关闭";
		}
	}	
}

child_dialog2:dialog{
	label="child_dialog2  by 鸟哥";
	
	:row{		
		:button{
			key="accept";
			label="确定";
			
		}
		
		:cancel_button{
			label="关闭";
		}
	}	
}