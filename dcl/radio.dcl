a:dialog{
	label="radio";		
	:boxed_column {			
       label = "Type" ;				

        : radio_button {			
     	  key = "rb1" ;				
     	  label = "��ѡ��ť1" ;		
     	  value = "1" ;				//��ʾ��ѡ��
        }					

     	: radio_button {			
     	  key = "rb2" ;				
     	  label = "��ѡ��ť1" ;		
     	}					

     	: radio_button {			
     	  key = "rb3" ;				
     	  label = "��ѡ��ť1" ;	
     	  }	
	}
	:boxed_radio_column {			
       label = "Type" ;				

        : radio_button {			
     	  key = "rb4" ;				
     	  label = "��ѡ��ť1&a" ;	//������ctrl+a ѡ��
     	  value = "0" ;				
        }					

     	: radio_button {			
     	  key = "rb5" ;				
     	  label = "��ѡ��ť1" ;		
     	}					

     	: radio_button {			
     	  key = "rb6" ;			
     	  label = "��ѡ��ť1" ;	
		  value=1;
     	  }	
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