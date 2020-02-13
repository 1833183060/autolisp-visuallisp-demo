//file:enter_edit.dcl
//by 鸟哥
//注意注释里的两个关键点

main_dialog:dialog{
	label="by鸟哥";
	fixed_width=true;
	: edit_box {
		label = "身高";
		key = "VEL";
		edit_width = 5;
		allow_accept = true;//关键点1
	}
	: edit_box {
		label = "年龄";
		key = "RA";
		edit_width = 5;
		allow_accept = true;
	}
	:row{
	fixed_width=true;
		:button{
			key="accept";
			label="确定";
			width=8;
			fixed_width=true;
			is_default=true;//关键点2
		}
		:cancel_button{
			label="关闭";
		}
	}
}
