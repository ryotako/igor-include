#ifndef INCLUDE_CORE_INCLUDED
#define INCLUDE_CORE_INCLUDED
#pragma ModuleName=Include
static strconstant MacEditor="MacVim"
static strconstant WinEditor="C:\Program Files\vim75-kaoriya-win64\gvim.exe"

Menu "Include",dynamic
	//{{{ Include
	"Include" +SelectString(Include#ListIsDefined(),"(",""),/Q,Include#IncludeAll()
	//}}}
	//{{{ Exclude
 	SubMenu "Exclude"+SelectString(Include#ListExists(),"(","") 
  	"All",/Q,Include#ExcludeAll()
  	"----------"
  	Include#IncludedItem( 0),/Q,Include#Exclude(Include#Item( 0))
  	Include#IncludedItem( 1),/Q,Include#Exclude(Include#Item( 1))
  	Include#IncludedItem( 2),/Q,Include#Exclude(Include#Item( 2))
  	Include#IncludedItem( 3),/Q,Include#Exclude(Include#Item( 3))
  	Include#IncludedItem( 4),/Q,Include#Exclude(Include#Item( 4))
  	Include#IncludedItem( 5),/Q,Include#Exclude(Include#Item( 5))
  	Include#IncludedItem( 6),/Q,Include#Exclude(Include#Item( 6))
  	Include#IncludedItem( 7),/Q,Include#Exclude(Include#Item( 7))
  	Include#IncludedItem( 8),/Q,Include#Exclude(Include#Item( 8))
  	Include#IncludedItem( 9),/Q,Include#Exclude(Include#Item( 9))
  	Include#IncludedItem(10),/Q,Include#Exclude(Include#Item(10))
  	Include#IncludedItem(11),/Q,Include#Exclude(Include#Item(11))
  	Include#IncludedItem(12),/Q,Include#Exclude(Include#Item(12))
  	Include#IncludedItem(13),/Q,Include#Exclude(Include#Item(13))
  	Include#IncludedItem(14),/Q,Include#Exclude(Include#Item(14))
  	Include#IncludedItem(15),/Q,Include#Exclude(Include#Item(15))
  	Include#IncludedItem(16),/Q,Include#Exclude(Include#Item(16))
  	Include#IncludedItem(17),/Q,Include#Exclude(Include#Item(17))
  	Include#IncludedItem(18),/Q,Include#Exclude(Include#Item(18))
  	Include#IncludedItem(19),/Q,Include#Exclude(Include#Item(19))
  	Include#IncludedItem(20),/Q,Include#Exclude(Include#Item(20))
  	Include#IncludedItem(21),/Q,Include#Exclude(Include#Item(21))
  	Include#IncludedItem(22),/Q,Include#Exclude(Include#Item(22))
  	Include#IncludedItem(23),/Q,Include#Exclude(Include#Item(23))
  	Include#IncludedItem(24),/Q,Include#Exclude(Include#Item(24))
  	Include#IncludedItem(25),/Q,Include#Exclude(Include#Item(25))
  	Include#IncludedItem(26),/Q,Include#Exclude(Include#Item(26))
  	Include#IncludedItem(27),/Q,Include#Exclude(Include#Item(27))
  	Include#IncludedItem(28),/Q,Include#Exclude(Include#Item(28))
  	Include#IncludedItem(29),/Q,Include#Exclude(Include#Item(29))
  	Include#IncludedItem(30),/Q,Include#Exclude(Include#Item(30))
  	Include#IncludedItem(31),/Q,Include#Exclude(Include#Item(31))
  	Include#IncludedItem(32),/Q,Include#Exclude(Include#Item(32))
  	Include#IncludedItem(33),/Q,Include#Exclude(Include#Item(33))
  	Include#IncludedItem(34),/Q,Include#Exclude(Include#Item(34))
  	Include#IncludedItem(35),/Q,Include#Exclude(Include#Item(35))
  	Include#IncludedItem(36),/Q,Include#Exclude(Include#Item(36))
  	Include#IncludedItem(37),/Q,Include#Exclude(Include#Item(37))
  	Include#IncludedItem(38),/Q,Include#Exclude(Include#Item(38))
  	Include#IncludedItem(39),/Q,Include#Exclude(Include#Item(39))
  	Include#IncludedItem(40),/Q,Include#Exclude(Include#Item(40))
  	Include#IncludedItem(41),/Q,Include#Exclude(Include#Item(41))
  	Include#IncludedItem(42),/Q,Include#Exclude(Include#Item(42))
  	Include#IncludedItem(43),/Q,Include#Exclude(Include#Item(43))
  	Include#IncludedItem(44),/Q,Include#Exclude(Include#Item(44))
  	Include#IncludedItem(45),/Q,Include#Exclude(Include#Item(45))
  	Include#IncludedItem(46),/Q,Include#Exclude(Include#Item(46))
  	Include#IncludedItem(47),/Q,Include#Exclude(Include#Item(47))
  	Include#IncludedItem(48),/Q,Include#Exclude(Include#Item(48))
  	Include#IncludedItem(49),/Q,Include#Exclude(Include#Item(49))
  	Include#IncludedItem(49),/Q,Include#Exclude(Include#Item(49))
	End //}}}
	//{{{ Edit Internally
	SubMenu "Edit Internally"+SelectString(Include#ListExists(),"(","") 
  	Include#IncludedItem( 0),/Q,Include#InEdit(Include#Item( 0))
  	Include#IncludedItem( 1),/Q,Include#InEdit(Include#Item( 1))
  	Include#IncludedItem( 2),/Q,Include#InEdit(Include#Item( 2))
  	Include#IncludedItem( 3),/Q,Include#InEdit(Include#Item( 3))
  	Include#IncludedItem( 4),/Q,Include#InEdit(Include#Item( 4))
  	Include#IncludedItem( 5),/Q,Include#InEdit(Include#Item( 5))
  	Include#IncludedItem( 6),/Q,Include#InEdit(Include#Item( 6))
  	Include#IncludedItem( 7),/Q,Include#InEdit(Include#Item( 7))
  	Include#IncludedItem( 8),/Q,Include#InEdit(Include#Item( 8))
  	Include#IncludedItem( 9),/Q,Include#InEdit(Include#Item( 9))
  	Include#IncludedItem(10),/Q,Include#InEdit(Include#Item(10))
  	Include#IncludedItem(11),/Q,Include#InEdit(Include#Item(11))
  	Include#IncludedItem(12),/Q,Include#InEdit(Include#Item(12))
  	Include#IncludedItem(13),/Q,Include#InEdit(Include#Item(13))
  	Include#IncludedItem(14),/Q,Include#InEdit(Include#Item(14))
  	Include#IncludedItem(15),/Q,Include#InEdit(Include#Item(15))
  	Include#IncludedItem(16),/Q,Include#InEdit(Include#Item(16))
  	Include#IncludedItem(17),/Q,Include#InEdit(Include#Item(17))
  	Include#IncludedItem(18),/Q,Include#InEdit(Include#Item(18))
  	Include#IncludedItem(19),/Q,Include#InEdit(Include#Item(19))
  	Include#IncludedItem(20),/Q,Include#InEdit(Include#Item(20))
  	Include#IncludedItem(21),/Q,Include#InEdit(Include#Item(21))
  	Include#IncludedItem(22),/Q,Include#InEdit(Include#Item(22))
  	Include#IncludedItem(23),/Q,Include#InEdit(Include#Item(23))
  	Include#IncludedItem(24),/Q,Include#InEdit(Include#Item(24))
  	Include#IncludedItem(25),/Q,Include#InEdit(Include#Item(25))
  	Include#IncludedItem(26),/Q,Include#InEdit(Include#Item(26))
  	Include#IncludedItem(27),/Q,Include#InEdit(Include#Item(27))
  	Include#IncludedItem(28),/Q,Include#InEdit(Include#Item(28))
  	Include#IncludedItem(29),/Q,Include#InEdit(Include#Item(29))
  	Include#IncludedItem(30),/Q,Include#InEdit(Include#Item(30))
  	Include#IncludedItem(31),/Q,Include#InEdit(Include#Item(31))
  	Include#IncludedItem(32),/Q,Include#InEdit(Include#Item(32))
  	Include#IncludedItem(33),/Q,Include#InEdit(Include#Item(33))
  	Include#IncludedItem(34),/Q,Include#InEdit(Include#Item(34))
  	Include#IncludedItem(35),/Q,Include#InEdit(Include#Item(35))
  	Include#IncludedItem(36),/Q,Include#InEdit(Include#Item(36))
  	Include#IncludedItem(37),/Q,Include#InEdit(Include#Item(37))
  	Include#IncludedItem(38),/Q,Include#InEdit(Include#Item(38))
  	Include#IncludedItem(39),/Q,Include#InEdit(Include#Item(39))
  	Include#IncludedItem(40),/Q,Include#InEdit(Include#Item(40))
  	Include#IncludedItem(41),/Q,Include#InEdit(Include#Item(41))
  	Include#IncludedItem(42),/Q,Include#InEdit(Include#Item(42))
  	Include#IncludedItem(43),/Q,Include#InEdit(Include#Item(43))
  	Include#IncludedItem(44),/Q,Include#InEdit(Include#Item(44))
  	Include#IncludedItem(45),/Q,Include#InEdit(Include#Item(45))
  	Include#IncludedItem(46),/Q,Include#InEdit(Include#Item(46))
  	Include#IncludedItem(47),/Q,Include#InEdit(Include#Item(47))
  	Include#IncludedItem(48),/Q,Include#InEdit(Include#Item(48))
  	Include#IncludedItem(49),/Q,Include#InEdit(Include#Item(49))
  	Include#IncludedItem(49),/Q,Include#InEdit(Include#Item(49))
 	End //}}}
	//{{{ Edit Externally
	SubMenu "Edit Externally"+SelectString(Include#ListExists(),"(","") 
  	Include#IncludedItem( 0),/Q,Include#ExEdit(Include#Item( 0))
  	Include#IncludedItem( 1),/Q,Include#ExEdit(Include#Item( 1))
  	Include#IncludedItem( 2),/Q,Include#ExEdit(Include#Item( 2))
  	Include#IncludedItem( 3),/Q,Include#ExEdit(Include#Item( 3))
  	Include#IncludedItem( 4),/Q,Include#ExEdit(Include#Item( 4))
  	Include#IncludedItem( 5),/Q,Include#ExEdit(Include#Item( 5))
  	Include#IncludedItem( 6),/Q,Include#ExEdit(Include#Item( 6))
  	Include#IncludedItem( 7),/Q,Include#ExEdit(Include#Item( 7))
  	Include#IncludedItem( 8),/Q,Include#ExEdit(Include#Item( 8))
  	Include#IncludedItem( 9),/Q,Include#ExEdit(Include#Item( 9))
  	Include#IncludedItem(10),/Q,Include#ExEdit(Include#Item(10))
  	Include#IncludedItem(11),/Q,Include#ExEdit(Include#Item(11))
  	Include#IncludedItem(12),/Q,Include#ExEdit(Include#Item(12))
  	Include#IncludedItem(13),/Q,Include#ExEdit(Include#Item(13))
  	Include#IncludedItem(14),/Q,Include#ExEdit(Include#Item(14))
  	Include#IncludedItem(15),/Q,Include#ExEdit(Include#Item(15))
  	Include#IncludedItem(16),/Q,Include#ExEdit(Include#Item(16))
  	Include#IncludedItem(17),/Q,Include#ExEdit(Include#Item(17))
  	Include#IncludedItem(18),/Q,Include#ExEdit(Include#Item(18))
  	Include#IncludedItem(19),/Q,Include#ExEdit(Include#Item(19))
  	Include#IncludedItem(20),/Q,Include#ExEdit(Include#Item(20))
  	Include#IncludedItem(21),/Q,Include#ExEdit(Include#Item(21))
  	Include#IncludedItem(22),/Q,Include#ExEdit(Include#Item(22))
  	Include#IncludedItem(23),/Q,Include#ExEdit(Include#Item(23))
  	Include#IncludedItem(24),/Q,Include#ExEdit(Include#Item(24))
  	Include#IncludedItem(25),/Q,Include#ExEdit(Include#Item(25))
  	Include#IncludedItem(26),/Q,Include#ExEdit(Include#Item(26))
  	Include#IncludedItem(27),/Q,Include#ExEdit(Include#Item(27))
  	Include#IncludedItem(28),/Q,Include#ExEdit(Include#Item(28))
  	Include#IncludedItem(29),/Q,Include#ExEdit(Include#Item(29))
  	Include#IncludedItem(30),/Q,Include#ExEdit(Include#Item(30))
  	Include#IncludedItem(31),/Q,Include#ExEdit(Include#Item(31))
  	Include#IncludedItem(32),/Q,Include#ExEdit(Include#Item(32))
  	Include#IncludedItem(33),/Q,Include#ExEdit(Include#Item(33))
  	Include#IncludedItem(34),/Q,Include#ExEdit(Include#Item(34))
  	Include#IncludedItem(35),/Q,Include#ExEdit(Include#Item(35))
  	Include#IncludedItem(36),/Q,Include#ExEdit(Include#Item(36))
  	Include#IncludedItem(37),/Q,Include#ExEdit(Include#Item(37))
  	Include#IncludedItem(38),/Q,Include#ExEdit(Include#Item(38))
  	Include#IncludedItem(39),/Q,Include#ExEdit(Include#Item(39))
  	Include#IncludedItem(40),/Q,Include#ExEdit(Include#Item(40))
  	Include#IncludedItem(41),/Q,Include#ExEdit(Include#Item(41))
  	Include#IncludedItem(42),/Q,Include#ExEdit(Include#Item(42))
  	Include#IncludedItem(43),/Q,Include#ExEdit(Include#Item(43))
  	Include#IncludedItem(44),/Q,Include#ExEdit(Include#Item(44))
  	Include#IncludedItem(45),/Q,Include#ExEdit(Include#Item(45))
  	Include#IncludedItem(46),/Q,Include#ExEdit(Include#Item(46))
  	Include#IncludedItem(47),/Q,Include#ExEdit(Include#Item(47))
  	Include#IncludedItem(48),/Q,Include#ExEdit(Include#Item(48))
  	Include#IncludedItem(49),/Q,Include#ExEdit(Include#Item(49))
  	Include#IncludedItem(49),/Q,Include#ExEdit(Include#Item(49))
 	End //}}}
End

static strconstant INCLUDE_PATH="root:Packages:Include:procedures"
Function Include(procName)
	String procName
	return Add(procName)
End
static Function Add(procName) // for include_proxy.ipf
	String procName
	WAVE/T w=$INCLUDE_PATH
	if(WaveExists(w))
		Make/FREE/N=(DimSize(w,0)) f=abs(cmpstr(w,procName))
		if(DimSize(f,0)==0 || WaveMin(f)==1)
			InsertPoints DimSize(w,0),1,w; w[inf]=procName
		endif
	endif
End

static Function ListIsDefined()
	String info = FunctionInfo("IncludeList")
	return NumberByKey("N_PARAMS",info)==0 
End
static Function ListExists()
	WAVE/T w=$INCLUDE_PATH
	return WaveExists(w)
End

static Function/S Item(n)
	Variable n
	if(ListExists())
		WAVE/T w=$INCLUDE_PATH
		return SelectString(n<DimSize(w,0),"",w[n])
	endif
End
static Function/S IncludedItem(n)
	Variable n
	if(strlen(Item(n)))
		return Item(n)+SelectString(strlen(WinList(Item(n)+".ipf",";","WIN:128")),"(","")
	endif
End

static Function IncludeAll()
	if(!ListIsDefined())
		return NaN
	endif
	NewDataFolder/O root:Packages
	NewDataFolder/O root:Packages:Include
	Make/O/T/N=0 $INCLUDE_PATH // remake the list
	Execute/Z/Q "IncludeList()"
	WAVE/T w=$INCLUDE_PATH; Variable i
	for(i=0;i<DimSize(w,0);i+=1)
		Execute/P/Z/Q "INSERTINCLUDE \""+w[i]+"\""
	endfor
	Execute/P/Z/Q "COMPILEPROCEDURES "
End

static Function ExcludeAll()
	WAVE/T w=$INCLUDE_PATH; Variable i
	for(i=0;i<DimSize(w,0);i+=1)
		Execute/P/Z/Q "DELETEINCLUDE \""+w[i]+"\""
	endfor
	Execute/P/Z/Q "COMPILEPROCEDURES "
End
static Function Exclude(procName)
	String procName
	Execute/P/Z/Q "DELETEINCLUDE \""+procName+"\""	
	Execute/P/Z/Q "COMPILEPROCEDURES "
End

static Function ExEdit(procName)
	String procName
	String funcName=StringFromList(0,FunctionList("*",";","WIN:"+procName+".ipf"))
	if(strlen(funcName)<1)
		return NaN
	endif
	Execute/P/Z/Q "DELETEINCLUDE \""+procName+"\""	
	Execute/P/Z/Q "COMPILEPROCEDURES "
	String procPath=FunctionPath(funcName)
	strSwitch(IgorInfo(2))
	case "Macintosh":
		procPath=procPath[strlen("Macintosh HD"),inf] 
		procPath=ReplaceString(":",procPath,"'/'")[1,inf]+"'" // escape with ''
		ExecuteScriptText "do shell script \"open -a "+MacEditor+" "+procPath+"\""
	break
	case "Windows":
		procPath="\"C:"+ReplaceString(":",procPath[strlen("C"),inf],"\\")+"\"" // escape with ""
		ExecuteScriptText "\""+WinEditor+"\" "+procPath
	break
	endSwitch
End

static Function InEdit(procName)
	String procName
	DisplayProcedure/W=$procName+".ipf"
End

#endif
