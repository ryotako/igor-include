#ifndef INCLUDE_INCLUDED
#define INCLUDE_INCLUDED

Menu "Include",dynamic
	SelectString(strlen(WinList("include.ipf",";","WIN:128")),"Include",""),/Q,Execute/P/Z/Q "INSERTINCLUDE \"include\""; Execute/P/Z/Q "COMPILEPROCEDURES "; Execute/P/Z/Q "Include#IncludeAll(); InsertPoints 0,1,root:Packages:Include:procedures; root:Packages:Include:procedures[0]=\"include\""
End
override Function Include(s)
	String s
	if(NumberByKey("N_PARAMS",FunctionInfo("Include#Add"))==1)
		Execute/Q/Z "Include#Add(\""+s+"\")"
	endif
End


// Windows版ではこれではメニューの更新が一拍遅れる
static Function IgorMenuHook(isSel, menuStr, itemStr, itemNo, topWindowName, wt)
	Variable isSel,itemNo,wt; String menuStr,itemStr,topWindowName
	WAVE/T w=root:Packages:Include:procedures
	if(isSel==0 && WaveExists(w) && !stringmatch(w[0],"include"))
		InsertPoints 0,1,w; w[0]="include"
 	endif
 	return 0
 End


#endif
