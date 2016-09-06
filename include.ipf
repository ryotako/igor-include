#pragma ModuleName=include

strconstant Include_WinEditor="notepad.exe"
strconstant Include_MacEditor="TextEdit"
strconstant Include_BufferFileName="include_procedures"

static Function start()
	Variable refnum
	NewDataFolder/O root:Packages
	NewDataFolder/O root:Packages:include
	KillWaves/Z  root:Packages:include:procedures
	Make/O/T/N=0 root:Packages:include:procedures
End

override Function include(s)
	String s
	WAVE/T w = root:Packages:include:procedures
	if(WaveExists(w))
		InsertPoints DimSize(w,0),1,w
		w[inf] = s
	endif
End

static Function finish()
	Execute/P   "DELETEINCLUDE \""+Include_BufferFileName+"\""
	Execute/P   "COMPILEPROCEDURES "
	Execute/P/Q "include#MakeBufferFile()"
	Execute/P   "INSERTINCLUDE \""+Include_BufferFileName+"\",optional"
	Execute/P   "COMPILEPROCEDURES "
End

static Function MakeBufferFile()
	WAVE/T ps = root:Packages:include:procedures
	Variable refnum; String path
	sprintf path,"%sUser Procedures:%s.ipf",SpecialDirPath("Igor Pro User Files",0,0,0),Include_BufferFileName
	Open/Z refnum as path
	if(WaveExists(ps) && !V_Flag)
		Variable i,N=DimSize(ps,0)
		for(i=0;i<N;i+=1)
			fprintf refnum,"#include \"%s\", optional\r",ps[i]	
		endfor
		Close refnum
	endif
End

static Function OpenWithEditor(procname)
	String procname
	String path
	SPlitString/E="\"([^\"]*)\"" StringFromList(1,WinRecreation(procname+".ipf",-2),"\r"), path
	if(strlen(path)==0)
		return NaN
	endif
	path += procname+".ipf"

	Execute/P   "DELETEINCLUDE \""+Include_BufferFileName+"\""
	Execute/P   "COMPILEPROCEDURES "
	
	String cmd; sprintf cmd,"include#OpenWithEditor_(\"%s\",\"%s\")",procname,path
	Execute/P/Q cmd
End

static Function OpenWithEditor_(procname,path)
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
