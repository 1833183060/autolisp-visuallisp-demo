a:dialog{
	label="list_box by 鸟哥";			

	: column { 
		: boxed_row { 
			: list_box {
				label ="单选列表";
				key = "mylist1";
				height = 15;
				width = 25;
				multiple_select = false;
				fixed_width_font = true;
				value = "";
			}
			: list_box {
				label ="多选列表";
				key = "mylist2";
				height = 15;
				width = 25;
				multiple_select = true;
				fixed_width_font = true;
				value = "";
			}
		}
	}
	:text{
		key="mytext";
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