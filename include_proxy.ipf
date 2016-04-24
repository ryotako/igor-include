#ifndef INCLUDE_INCLUDED
#define INCLUDE_INCLUDED

Menu "Include",dynamic
	SelectString(strlen(WinList("include.ipf",";","WIN:128")),"Include",""),/Q,Execute/P/Z "INSERTINCLUDE \"include\""; Execute/P/Z "COMPILEPROCEDURES "; Execute/P/Z/Q "Include#IncludeAll()"
End
override Function Include(s)
	String s
	if(NumberByKey("N_PARAMS",FunctionInfo("Include#Add"))==1)
		Execute/Q/Z "Include#Add(\""+s+"\")"
	endif
End


#endif
