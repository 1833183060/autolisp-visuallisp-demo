//file:enter_edit.dcl
//by ���
//ע��ע����������ؼ���

main_dialog:dialog{
	label="by���";
	fixed_width=true;
	: edit_box {
		label = "���";
		key = "VEL";
		edit_width = 5;
		allow_accept = true;//�ؼ���1
	}
	: edit_box {
		label = "����";
		key = "RA";
		edit_width = 5;
		allow_accept = true;
	}
	:row{
	fixed_width=true;
		:button{
			key="accept";
			label="ȷ��";
			width=8;
			fixed_width=true;
			is_default=true;//�ؼ���2
		}
		:cancel_button{
			label="�ر�";
		}
	}
}
