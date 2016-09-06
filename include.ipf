#pragma ModuleName=include

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
