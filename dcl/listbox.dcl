a:dialog{
	label="list_box by ���";			

	: column { 
		: boxed_row { 
			: list_box {
				label ="��ѡ�б�";
				key = "mylist1";
				height = 15;
				width = 25;
				multiple_select = false;
				fixed_width_font = true;
				value = "";
			}
			: list_box {
				label ="��ѡ�б�";
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
			label="ȷ��";
			
		}
		:cancel_button{
			label="�ر�";
		}
	}	
}