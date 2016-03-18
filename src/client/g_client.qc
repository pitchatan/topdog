void(string cmd) CSQC_Parse_StuffCmd = 
{
localcmd(cmd);
};


float(string msg) CSQC_Parse_CenterPrint = 
{
local float result;

result = FALSE;	

return result;
};



void(string text, float msgtype) CSQC_Parse_Print =
{
	
};


void() CSQC_WorldLoaded = 
{
	
};


float(string cmd) CSQC_ConsoleCommand = 
{
local float result;

	tokenize(cmd);
	switch(argv(0))
	{
		case "togglemenu":
			result = TRUE;
			break;
		case "map":
			result = FALSE;
			break;
		default:
			result = FALSE;
	}
//	result = FALSE;
	

return result;	
};