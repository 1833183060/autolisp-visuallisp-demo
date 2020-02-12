main_dialog:dialog{
	label="by鸟哥";
	fixed_width=true;
	:row{		
		fixed_height=true;
		fixed_width=true;
		: image_button {		//定义图像按钮
                key = "im0" ;			
                height = 5.0 ;			
                //width = 5.0 ;			
				fixed_width = true;		
				fixed_height=true;
                allow_accept = true ;		
				horizontal_margin=none;
				vertical_margin = none ;
				aspect_ratio = 1;
				color=12;
                }

                : image_button {
                key = "im1" ;
                height = 5.0 ;
                aspect_ratio=1;
				fixed_width = true;
				fixed_height=true;
                allow_accept = true ;
				horizontal_margin=none;
				vertical_margin = none ;
				color=50;
                }

	}	
	:row{	
		fixed_height=true;
		fixed_width=true;
		: image_button {		
                key = "im10" ;			
                height = 5.0 ;			
                aspect_ratio=1;
				fixed_width = true;		
				fixed_height=true;
                allow_accept = true ;	
				horizontal_margin=none;
				vertical_margin = none ;
				color=25;
                }

                : image_button {
                key = "im11" ;
                height = 5.0 ;
                aspect_ratio=1;
				fixed_width = true;
				fixed_height=true;
                allow_accept = true ;
				horizontal_margin=none;
				vertical_margin = none ;
				color=200;
                }

	}	
		:row{
		fixed_width=true;
		:button{
			key="accept";
			label="确定";
			width=8;
			fixed_width=true;
		}
		:cancel_button{
			label="关闭";
		}
		}
}
