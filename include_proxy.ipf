#ifndef INCLUDE_INCLUDED
#define INCLUDE_INCLUDED

Menu "Include",dynamic
	SelectString(strlen(WinList("include.ipf",";","WIN:128")),"Include",""),/Q,Execute/P/Z "INSERTINCLUDE \"include\""; Execute/P/Z "COMPILEPROCEDURES "; Execute/P/Z/Q "Include#IncludeAll()"
End
override Function Include(procName [comment,define,override])
	String procName,comment,define,override
	comment   =SelectString(ParamIsDefault(comment ),comment ,"")
	define    =SelectString(ParamIsDefault(define  ),define  ,"")
	;override =SelectString(ParamIsDefault(override),override,"") // escape a syntax check with ;
	if(strlen(FunctionInfo("Include#Add")))
		;override=ReplaceString("\"",override,"\\\"")
		Execute/Q/Z "Include#Add(\""+procName+"\",comment=\""+comment+"\",define=\""+define+"\",override=\""+override+"\")"
	endif
End


#endif
