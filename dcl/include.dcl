//include.dcl

@include "included.dcl"

main_dialog:dialog{
	label="by���";
	fixed_width=true;
	para;
	:row{
	fixed_width=true;
		:button{
			key="accept";
			label="ȷ��";
			width=8;
			fixed_width=true;
		}
		:cancel_button{
			label="�ر�";
		}
	}
}
