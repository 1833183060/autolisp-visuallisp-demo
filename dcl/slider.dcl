a:dialog{
	label="slider";		
	
	: edit_box {				//*define edit box
         key = "myedit" ;				//*give it a name
         label = "��������ֵ" ;	//*give it a label
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
			label="ȷ��";
			
		}
		:cancel_button{
			label="�ر�";
		}
	}			
	
}