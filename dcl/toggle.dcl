a:dialog{
	label="slider";		
	
:boxed_row {				//*define boxed row

        :toggle {				//*define toggle
        key = "tog1";				//*give it a name
        label = "正交 开/关";			//*give it a label
        }					//*end toggle

        :toggle {				//*define toggle
        key = "tog2";				//*give it a name
        label = "捕捉 开/关";			//*give it a label
        }					//*end definition

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