a:dialog{
	label="radio";		
	:boxed_column {			
       label = "Type" ;				

        : radio_button {			
     	  key = "rb1" ;				
     	  label = "单选按钮1" ;		
     	  value = "1" ;				//表示被选中
        }					

     	: radio_button {			
     	  key = "rb2" ;				
     	  label = "单选按钮1" ;		
     	}					

     	: radio_button {			
     	  key = "rb3" ;				
     	  label = "单选按钮1" ;	
     	  }	
	}
	:boxed_radio_column {			
       label = "Type" ;				

        : radio_button {			
     	  key = "rb4" ;				
     	  label = "单选按钮1&a" ;	//可以用ctrl+a 选中
     	  value = "0" ;				
        }					

     	: radio_button {			
     	  key = "rb5" ;				
     	  label = "单选按钮1" ;		
     	}					

     	: radio_button {			
     	  key = "rb6" ;			
     	  label = "单选按钮1" ;	
		  value=1;
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