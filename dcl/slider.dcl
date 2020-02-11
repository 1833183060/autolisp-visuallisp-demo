a:dialog{
	label="slider";		
	
	: edit_box {				//*define edit box
         key = "myedit" ;				//*give it a name
         label = "滑动条的值" ;	//*give it a label
         edit_width = 6 ;			//*6 characters only
        }
	: slider {				//*defin slider
        key = "myslider" ;			//*give it a name
        max_value = 100;			//*upper value
        min_value = 0;				//*lower value
        value = "50";				//*initial value
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