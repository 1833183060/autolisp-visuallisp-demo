a:dialog{
	label="slider";		
	
:boxed_row {				//*define boxed row

        :toggle {				//*define toggle
        key = "tog1";				//*give it a name
        label = "���� ��/��";			//*give it a label
        }					//*end toggle

        :toggle {				//*define toggle
        key = "tog2";				//*give it a name
        label = "��׽ ��/��";			//*give it a label
        }					//*end definition

	}
	:text{
		key="mytext";
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