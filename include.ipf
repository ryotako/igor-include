#pragma ModuleName=include

strconstant Include_Menu = "Include"
strconstant Include_BufferFileName = "include_procedures"
strconstant Include_ListFunction = "IncludeList" 
strconstant Include_WinEditor = "notepad.exe"
strconstant Include_MacEditor = "TextEdit"

Menu StringFromList(0,Include_Menu)
	RemoveListItem(0,Include_Menu)
	Include#MenuItemInclude(),/Q,Include#MenuCommandInclude()
	Include#MenuItemExclude(),/Q,Include#MenuCommandExclude()
	SubMenu "Edit Internally"
		Include#MenuItemEditInternally(0),  /Q, Include#MenuCommandEditInternally(0)
		Include#MenuItemEditInternally(1),  /Q, Include#MenuCommandEditInternally(1)
		Include#MenuItemEditInternally(2),  /Q, Include#MenuCommandEditInternally(2)
		Include#MenuItemEditInternally(3),  /Q, Include#MenuCommandEditInternally(3)
		Include#MenuItemEditInternally(4),  /Q, Include#MenuCommandEditInternally(4)
		Include#MenuItemEditInternally(5),  /Q, Include#MenuCommandEditInternally(5)
		Include#MenuItemEditInternally(6),  /Q, Include#MenuCommandEditInternally(6)
		Include#MenuItemEditInternally(7),  /Q, Include#MenuCommandEditInternally(7)
		Include#MenuItemEditInternally(8),  /Q, Include#MenuCommandEditInternally(8)
		Include#MenuItemEditInternally(9),  /Q, Include#MenuCommandEditInternally(9)
		Include#MenuItemEditInternally(10), /Q, Include#MenuCommandEditInternally(10)
		Include#MenuItemEditInternally(11), /Q, Include#MenuCommandEditInternally(11)
		Include#MenuItemEditInternally(12), /Q, Include#MenuCommandEditInternally(12)
		Include#MenuItemEditInternally(13), /Q, Include#MenuCommandEditInternally(13)
		Include#MenuItemEditInternally(14), /Q, Include#MenuCommandEditInternally(14)
		Include#MenuItemEditInternally(15), /Q, Include#MenuCommandEditInternally(15)
		Include#MenuItemEditInternally(16), /Q, Include#MenuCommandEditInternally(16)
		Include#MenuItemEditInternally(17), /Q, Include#MenuCommandEditInternally(17)
		Include#MenuItemEditInternally(18), /Q, Include#MenuCommandEditInternally(18)
		Include#MenuItemEditInternally(19), /Q, Include#MenuCommandEditInternally(19)
		Include#MenuItemEditInternally(20), /Q, Include#MenuCommandEditInternally(20)
		Include#MenuItemEditInternally(21), /Q, Include#MenuCommandEditInternally(21)
		Include#MenuItemEditInternally(22), /Q, Include#MenuCommandEditInternally(22)
		Include#MenuItemEditInternally(23), /Q, Include#MenuCommandEditInternally(23)
		Include#MenuItemEditInternally(24), /Q, Include#MenuCommandEditInternally(24)
		Include#MenuItemEditInternally(25), /Q, Include#MenuCommandEditInternally(25)
		Include#MenuItemEditInternally(26), /Q, Include#MenuCommandEditInternally(26)
		Include#MenuItemEditInternally(27), /Q, Include#MenuCommandEditInternally(27)
		Include#MenuItemEditInternally(28), /Q, Include#MenuCommandEditInternally(28)
		Include#MenuItemEditInternally(29), /Q, Include#MenuCommandEditInternally(29)
	End
	SubMenu "Edit Externally"
		Include#MenuItemEditExternally(0),  /Q, Include#MenuCommandEditExternally(0)
		Include#MenuItemEditExternally(1),  /Q, Include#MenuCommandEditExternally(1)
		Include#MenuItemEditExternally(2),  /Q, Include#MenuCommandEditExternally(2)
		Include#MenuItemEditExternally(3),  /Q, Include#MenuCommandEditExternally(3)
		Include#MenuItemEditExternally(4),  /Q, Include#MenuCommandEditExternally(4)
		Include#MenuItemEditExternally(5),  /Q, Include#MenuCommandEditExternally(5)
		Include#MenuItemEditExternally(6),  /Q, Include#MenuCommandEditExternally(6)
		Include#MenuItemEditExternally(7),  /Q, Include#MenuCommandEditExternally(7)
		Include#MenuItemEditExternally(8),  /Q, Include#MenuCommandEditExternally(8)
		Include#MenuItemEditExternally(9),  /Q, Include#MenuCommandEditExternally(9)
		Include#MenuItemEditExternally(10), /Q, Include#MenuCommandEditExternally(10)
		Include#MenuItemEditExternally(11), /Q, Include#MenuCommandEditExternally(11)
		Include#MenuItemEditExternally(12), /Q, Include#MenuCommandEditExternally(12)
		Include#MenuItemEditExternally(13), /Q, Include#MenuCommandEditExternally(13)
		Include#MenuItemEditExternally(14), /Q, Include#MenuCommandEditExternally(14)
		Include#MenuItemEditExternally(15), /Q, Include#MenuCommandEditExternally(15)
		Include#MenuItemEditExternally(16), /Q, Include#MenuCommandEditExternally(16)
		Include#MenuItemEditExternally(17), /Q, Include#MenuCommandEditExternally(17)
		Include#MenuItemEditExternally(18), /Q, Include#MenuCommandEditExternally(18)
		Include#MenuItemEditExternally(19), /Q, Include#MenuCommandEditExternally(19)
		Include#MenuItemEditExternally(20), /Q, Include#MenuCommandEditExternally(20)
		Include#MenuItemEditExternally(21), /Q, Include#MenuCommandEditExternally(21)
		Include#MenuItemEditExternally(22), /Q, Include#MenuCommandEditExternally(22)
		Include#MenuItemEditExternally(23), /Q, Include#MenuCommandEditExternally(23)
		Include#MenuItemEditExternally(24), /Q, Include#MenuCommandEditExternally(24)
		Include#MenuItemEditExternally(25), /Q, Include#MenuCommandEditExternally(25)
		Include#MenuItemEditExternally(26), /Q, Include#MenuCommandEditExternally(26)
		Include#MenuItemEditExternally(27), /Q, Include#MenuCommandEditExternally(27)
		Include#MenuItemEditExternally(28), /Q, Include#MenuCommandEditExternally(28)
		Include#MenuItemEditExternally(29), /Q, Include#MenuCommandEditExternally(29)
	End
End

static Function/S MenuItemInclude()
	return SelectString( NumberByKey("N_PARAMS",FunctionInfo(Include_ListFunction))==0 ,"(","")+"Include"
End
static Function MenuCommandInclude()
	Execute/Z Include_ListFunction+"()"
End
static Function/S MenuItemExclude()
	return SelectString(strlen(WinRecreation(Include_BufferFileName+".ipf",-2)),"(","")+"Exclude"
End
static Function MenuCommandExclude()
	Execute/P "DELETEINCLUDE \""+Include_BufferFileName+"\""
	Execute/P "COMPILEPROCEDURES "
End

static Function/S MenuItemEditInternally(n)
	Variable n
	WAVE/T ps = root:Packages:include:procedures_sorted
	if(!WaveExists(ps) || n>=DimSize(ps,0))
		return ""
	elseif(strlen(WinRecreation(Include_BufferFileName+".ipf",-2)))
		return ps[n]	
	else
		return "("+ps[n]
	endif
End
static Function/S MenuCommandEditInternally(n)
	Variable n
	WAVE/T ps = root:Packages:include:procedures_sorted
	EditInternally(ps[n])
End

static Function/S MenuItemEditExternally(n)
	Variable n
	WAVE/T ps = root:Packages:include:procedures_sorted
	if(!WaveExists(ps) || n>=DimSize(ps,0))
		return ""
	elseif(strlen(WinRecreation(Include_BufferFileName+".ipf",-2)))
		return ps[n]	
	else
		return "("+ps[n]
	endif
End
static Function/S MenuCommandEditExternally(n)
	Variable n
	WAVE/T ps = root:Packages:include:procedures_sorted
	EditExternally(ps[n])
End


static Function start()
	Variable refnum
	NewDataFolder/O root:Packages
	NewDataFolder/O root:Packages:Include
	KillWaves/Z  root:Packages:Include:procedures
	Make/O/T/N=0 root:Packages:Include:procedures
End

override Function include(s)
	String s
	WAVE/T ps = root:Packages:Include:procedures
	if(WaveExists(ps))
		InsertPoints DimSize(ps,0),1,ps
		ps[inf] = s
	endif
End

static Function finish()
	WAVE/T ps = root:Packages:Include:procedures
	if(!WaveExists(ps))
		return NaN
	endif
	Duplicate/O ps $"root:Packages:Include:procedures_sorted"/WAVE=sorted
	Sort sorted, sorted
	
	Execute/P   "DELETEINCLUDE \""+Include_BufferFileName+"\""
	Execute/P   "COMPILEPROCEDURES "
	Execute/P/Q "include#MakeBufferFile()"
	Execute/P   "INSERTINCLUDE \""+Include_BufferFileName+"\",optional"
	Execute/P   "COMPILEPROCEDURES "
End

static Function MakeBufferFile()
	WAVE/T ps = root:Packages:Include:procedures
	Variable refnum; String path
	sprintf path,"%sUser Procedures:%s.ipf",SpecialDirPath("Igor Pro User Files",0,0,0),Include_BufferFileName
	Open/Z refnum as path
	if(WaveExists(ps) && !V_Flag)
		// Make it invisible
		SetFileFolderInfo/INV=1/RO=1 path
		
		Variable i,N=DimSize(ps,0)
		for(i=0;i<N;i+=1)
			fprintf refnum,"#include \"%s\", optional\r",ps[i]	
		endfor
		Close refnum
	endif
End

static Function EditInternally(procname)
	String procname
	DisplayProcedure/W=$procname+".ipf"
End

static Function EditExternally(procname)
	String procname
	String path
	SPlitString/E="\"([^\"]*)\"" StringFromList(1,WinRecreation(procname+".ipf",-2),"\r"), path
	if(strlen(path)==0)
		return NaN
	endif
	path += procname+".ipf"

	Execute/P   "DELETEINCLUDE \""+Include_BufferFileName+"\""
	Execute/P   "COMPILEPROCEDURES "
	
	String cmd; sprintf cmd,"include#EditExternally_(\"%s\",\"%s\")",procname,path
	Execute/P/Q cmd
End

static Function EditExternally_(procname,path)
	String procname,path
	if(strlen(WinRecreation(procname+".ipf",-2)))
		return NaN
	endif	
	String cmd
	StrSwitch(IgorInfo(2))
	case "Macintosh":
		SplitString/E="^Macintosh HD:(.*)" path, path
		path = "/'"+ReplaceString(":",path,"'/'")+"'"
		sprintf cmd,"do shell script \"open -a %s %s\"",Include_MacEditor,path
		break
	case "Windows":
		sprintf cmd,"\"%s\" \"%s\"",Include_WinEditor,path
		break
	EndSwitch
	ExecuteScriptText cmd
End
