//include.dcl

@include "included.dcl"

main_dialog:dialog{
	label="byÄñ¸ç";
	fixed_width=true;
	para;
	:row{
	fixed_width=true;
		:button{
			key="accept";
			label="È·¶¨";
			width=8;
			fixed_width=true;
		}
		:cancel_button{
			label="¹Ø±Õ";
		}
	}
}
