# Microsoft Developer Studio Generated NMAKE File, Based on libxpm.dsp
!IF "$(CFG)" == ""
CFG=Static Release
!MESSAGE No configuration specified. Defaulting to DLL Debug.
!ENDIF 

!IF "$(CFG)" != "DLL Debug" && "$(CFG)" != "DLL Release" && "$(CFG)" != "Static Release" && "$(CFG)" != "Static Debug" 
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "libxpm.mak" CFG="DLL Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "DLL Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "DLL Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "Static Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "Static Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "DLL Debug"

OUTDIR=..\..\builds\Win32DLLDebug
INTDIR=..\..\builds\Win32DLLDebug\objs
LIBNAME=libxpm_debug

ALL : "$(OUTDIR)\$(LIBNAME).dll"

CLEAN :
	-@erase "$(INTDIR)\Attrib.obj"
	-@erase "$(INTDIR)\CrBufFrI.obj"
	-@erase "$(INTDIR)\CrDatFrI.obj"
	-@erase "$(INTDIR)\create.obj"
	-@erase "$(INTDIR)\CrIFrBuf.obj"
	-@erase "$(INTDIR)\CrIFrDat.obj"
	-@erase "$(INTDIR)\data.obj"
	-@erase "$(INTDIR)\hashtab.obj"
	-@erase "$(INTDIR)\Image.obj"
	-@erase "$(INTDIR)\Info.obj"
	-@erase "$(INTDIR)\misc.obj"
	-@erase "$(INTDIR)\parse.obj"
	-@erase "$(INTDIR)\RdFToBuf.obj"
	-@erase "$(INTDIR)\RdFToDat.obj"
	-@erase "$(INTDIR)\RdFToI.obj"
	-@erase "$(INTDIR)\rgb.obj"
	-@erase "$(INTDIR)\scan.obj"
	-@erase "$(INTDIR)\simx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\WrFFrBuf.obj"
	-@erase "$(INTDIR)\WrFFrDat.obj"
	-@erase "$(INTDIR)\WrFFrI.obj"
	-@erase "$(OUTDIR)\$(LIBNAME).pdb"
	-@erase "$(OUTDIR)\$(LIBNAME).dll"
	-@erase "$(OUTDIR)\$(LIBNAME).exp"
	-@erase "$(OUTDIR)\$(LIBNAME).lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /ZI /Od /I "..\..\include\X11" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBXPM_EXPORTS"  /D "FOR_MSW" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /GZ /GX  /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\$(LIBNAME).bsc" 
BSC32_SBRS= \
   
  
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib  shell32.lib /nologo /dll /incremental:no  /debug /machine:IX86 /def:"..\libxpm.def"  /out:"$(OUTDIR)\$(LIBNAME).dll"   /implib:"$(OUTDIR)\$(LIBNAME).lib"
LINK32_OBJS= \
	"$(INTDIR)\Attrib.obj" \
	"$(INTDIR)\CrBufFrI.obj" \
	"$(INTDIR)\CrDatFrI.obj" \
	"$(INTDIR)\create.obj" \
	"$(INTDIR)\CrIFrBuf.obj" \
	"$(INTDIR)\CrIFrDat.obj" \
	"$(INTDIR)\data.obj" \
	"$(INTDIR)\hashtab.obj" \
	"$(INTDIR)\Image.obj" \
	"$(INTDIR)\Info.obj" \
	"$(INTDIR)\misc.obj" \
	"$(INTDIR)\parse.obj" \
	"$(INTDIR)\RdFToBuf.obj" \
	"$(INTDIR)\RdFToDat.obj" \
	"$(INTDIR)\RdFToI.obj" \
	"$(INTDIR)\rgb.obj" \
	"$(INTDIR)\scan.obj" \
	"$(INTDIR)\simx.obj" \
	"$(INTDIR)\WrFFrBuf.obj" \
	"$(INTDIR)\WrFFrDat.obj" \
	"$(INTDIR)\WrFFrI.obj"

"$(OUTDIR)\$(LIBNAME).dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "DLL Release"

OUTDIR=..\..\builds\Win32DLLRelease
INTDIR=..\..\builds\Win32DLLRelease\objs
LIBNAME=libxpm

ALL : "$(OUTDIR)\$(LIBNAME).dll"

CLEAN :
	-@erase "$(INTDIR)\Attrib.obj"
	-@erase "$(INTDIR)\CrBufFrI.obj"
	-@erase "$(INTDIR)\CrDatFrI.obj"
	-@erase "$(INTDIR)\create.obj"
	-@erase "$(INTDIR)\CrIFrBuf.obj"
	-@erase "$(INTDIR)\CrIFrDat.obj"
	-@erase "$(INTDIR)\data.obj"
	-@erase "$(INTDIR)\hashtab.obj"
	-@erase "$(INTDIR)\Image.obj"
	-@erase "$(INTDIR)\Info.obj"
	-@erase "$(INTDIR)\misc.obj"
	-@erase "$(INTDIR)\parse.obj"
	-@erase "$(INTDIR)\RdFToBuf.obj"
	-@erase "$(INTDIR)\RdFToDat.obj"
	-@erase "$(INTDIR)\RdFToI.obj"
	-@erase "$(INTDIR)\rgb.obj"
	-@erase "$(INTDIR)\scan.obj"
	-@erase "$(INTDIR)\simx.obj"
	-@erase "$(INTDIR)\WrFFrBuf.obj"
	-@erase "$(INTDIR)\WrFFrDat.obj"
	-@erase "$(INTDIR)\WrFFrI.obj"
	-@erase "$(OUTDIR)\$(LIBNAME).pdb"
	-@erase "$(OUTDIR)\$(LIBNAME).dll"
	-@erase "$(OUTDIR)\$(LIBNAME).exp"
	-@erase "$(OUTDIR)\$(LIBNAME).lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /I "..\..\include\X11" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBXPM_EXPORTS" /D "FOR_MSW" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /GX  /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\$(LIBNAME).bsc" 
BSC32_SBRS= \

LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib  shell32.lib /nologo /machine:IX86  /debug /machine:IX86 /def:"..\libxpm.def" /dll /incremental:no /pdb:"$(OUTDIR)\$(LIBNAME).pdb"   /out:"$(OUTDIR)\$(LIBNAME).dll"  /implib:"$(OUTDIR)\$(LIBNAME).lib"
LINK32_OBJS= \
	"$(INTDIR)\Attrib.obj" \
	"$(INTDIR)\CrBufFrI.obj" \
	"$(INTDIR)\CrDatFrI.obj" \
	"$(INTDIR)\create.obj" \
	"$(INTDIR)\CrIFrBuf.obj" \
	"$(INTDIR)\CrIFrDat.obj" \
	"$(INTDIR)\data.obj" \
	"$(INTDIR)\hashtab.obj" \
	"$(INTDIR)\Image.obj" \
	"$(INTDIR)\Info.obj" \
	"$(INTDIR)\misc.obj" \
	"$(INTDIR)\parse.obj" \
	"$(INTDIR)\RdFToBuf.obj" \
	"$(INTDIR)\RdFToDat.obj" \
	"$(INTDIR)\RdFToI.obj" \
	"$(INTDIR)\rgb.obj" \
	"$(INTDIR)\scan.obj" \
	"$(INTDIR)\simx.obj" \
	"$(INTDIR)\WrFFrBuf.obj" \
	"$(INTDIR)\WrFFrDat.obj" \
	"$(INTDIR)\WrFFrI.obj"

"$(OUTDIR)\$(LIBNAME).dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Static Release"

OUTDIR=..\..\builds\Win32StaticRelease
INTDIR=..\..\builds\Win32StaticRelease\objs
LIBNAME=libxpm_a

ALL : "$(OUTDIR)\$(LIBNAME).lib"

CLEAN :
	-@erase "$(INTDIR)\Attrib.obj"
	-@erase "$(INTDIR)\CrBufFrI.obj"
	-@erase "$(INTDIR)\CrDatFrI.obj"
	-@erase "$(INTDIR)\create.obj"
	-@erase "$(INTDIR)\CrIFrBuf.obj"
	-@erase "$(INTDIR)\CrIFrDat.obj"
	-@erase "$(INTDIR)\data.obj"
	-@erase "$(INTDIR)\hashtab.obj"
	-@erase "$(INTDIR)\Image.obj"
	-@erase "$(INTDIR)\Info.obj"
	-@erase "$(INTDIR)\misc.obj"
	-@erase "$(INTDIR)\parse.obj"
	-@erase "$(INTDIR)\RdFToBuf.obj"
	-@erase "$(INTDIR)\RdFToDat.obj"
	-@erase "$(INTDIR)\RdFToI.obj"
	-@erase "$(INTDIR)\rgb.obj"
	-@erase "$(INTDIR)\scan.obj"
	-@erase "$(INTDIR)\simx.obj"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\WrFFrBuf.obj"
	-@erase "$(INTDIR)\WrFFrDat.obj"
	-@erase "$(INTDIR)\WrFFrI.obj"
	-@erase "$(OUTDIR)\$(LIBNAME).pdb"
	-@erase "$(OUTDIR)\$(LIBNAME).dll"
	-@erase "$(OUTDIR)\$(LIBNAME).exp"
	-@erase "$(OUTDIR)\$(LIBNAME).lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /I "..\..\include\X11" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "LIBXPM_EXPORTS" /D "_UNICODE" /D "FOR_MSW" /Fo"$(OUTDIR)\objs/" /Fd"$(OUTDIR)\objs/"  /GX  /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\$(LIBNAME).bsc" 
BSC32_SBRS= \
	
LINK32=link.exe -lib
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib  shell32.lib /nologo /subsystem:windows /machine:IX86 /out:"$(OUTDIR)\$(LIBNAME).lib" 

LINK32_OBJS= \
	"$(INTDIR)\Attrib.obj" \
	"$(INTDIR)\CrBufFrI.obj" \
	"$(INTDIR)\CrDatFrI.obj" \
	"$(INTDIR)\create.obj" \
	"$(INTDIR)\CrIFrBuf.obj" \
	"$(INTDIR)\CrIFrDat.obj" \
	"$(INTDIR)\data.obj" \
	"$(INTDIR)\hashtab.obj" \
	"$(INTDIR)\Image.obj" \
	"$(INTDIR)\Info.obj" \
	"$(INTDIR)\misc.obj" \
	"$(INTDIR)\parse.obj" \
	"$(INTDIR)\RdFToBuf.obj" \
	"$(INTDIR)\RdFToDat.obj" \
	"$(INTDIR)\RdFToI.obj" \
	"$(INTDIR)\rgb.obj" \
	"$(INTDIR)\scan.obj" \
	"$(INTDIR)\simx.obj" \
	"$(INTDIR)\WrFFrBuf.obj" \
	"$(INTDIR)\WrFFrDat.obj" \
	"$(INTDIR)\WrFFrI.obj"

"$(OUTDIR)\$(LIBNAME).lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(DEF_FLAGS) $(LINK32_OBJS)
<<


!ELSEIF  "$(CFG)" == "Static Debug"
OUTDIR=..\..\builds\Win32StaticDebug
INTDIR=..\..\builds\Win32StaticDebug\objs

LIBNAME=libxpm_a_debug


ALL : "$(OUTDIR)\$(LIBNAME).lib"

CLEAN :
	-@erase "$(INTDIR)\Attrib.obj"
	-@erase "$(INTDIR)\CrBufFrI.obj"
	-@erase "$(INTDIR)\CrDatFrI.obj"
	-@erase "$(INTDIR)\create.obj"
	-@erase "$(INTDIR)\CrIFrBuf.obj"
	-@erase "$(INTDIR)\CrIFrDat.obj"
	-@erase "$(INTDIR)\data.obj"
	-@erase "$(INTDIR)\hashtab.obj"
	-@erase "$(INTDIR)\Image.obj"
	-@erase "$(INTDIR)\Info.obj"
	-@erase "$(INTDIR)\misc.obj"
	-@erase "$(INTDIR)\parse.obj"
	-@erase "$(INTDIR)\RdFToBuf.obj"
	-@erase "$(INTDIR)\RdFToDat.obj"
	-@erase "$(INTDIR)\RdFToI.obj"
	-@erase "$(INTDIR)\rgb.obj"
	-@erase "$(INTDIR)\scan.obj"
	-@erase "$(INTDIR)\simx.obj"
	-@erase "$(INTDIR)\WrFFrBuf.obj"
	-@erase "$(INTDIR)\WrFFrDat.obj"
	-@erase "$(INTDIR)\WrFFrI.obj"
	-@erase "$(OUTDIR)\$(LIBNAME).pdb"
	-@erase "$(OUTDIR)\$(LIBNAME).dll"
	-@erase "$(OUTDIR)\$(LIBNAME).exp"
	-@erase "$(OUTDIR)\$(LIBNAME).lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MLd /I "..\..\include\X11" /D "FOR_MSW" /Fo"$(OUTDIR)\objs/" /GZ /GX /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\$(LIBNAME).bsc" 
BSC32_SBRS= \
	
LINK32=link.exe -lib
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib  shell32.lib /nologo /machine:IX86 /out:"$(OUTDIR)\$(LIBNAME).lib" 
LINK32_OBJS= \
	"$(INTDIR)\Attrib.obj" \
	"$(INTDIR)\CrBufFrI.obj" \
	"$(INTDIR)\CrDatFrI.obj" \
	"$(INTDIR)\create.obj" \
	"$(INTDIR)\CrIFrBuf.obj" \
	"$(INTDIR)\CrIFrDat.obj" \
	"$(INTDIR)\data.obj" \
	"$(INTDIR)\hashtab.obj" \
	"$(INTDIR)\Image.obj" \
	"$(INTDIR)\Info.obj" \
	"$(INTDIR)\misc.obj" \
	"$(INTDIR)\parse.obj" \
	"$(INTDIR)\RdFToBuf.obj" \
	"$(INTDIR)\RdFToDat.obj" \
	"$(INTDIR)\RdFToI.obj" \
	"$(INTDIR)\rgb.obj" \
	"$(INTDIR)\scan.obj" \
	"$(INTDIR)\simx.obj" \
	"$(INTDIR)\WrFFrBuf.obj" \
	"$(INTDIR)\WrFFrDat.obj" \
	"$(INTDIR)\WrFFrI.obj"

"$(OUTDIR)\$(LIBNAME).lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
!ENDIF 

!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("libxpm.dep")
!INCLUDE "libxpm.dep"
!ELSE 
!MESSAGE Warning: cannot find "libxpm.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "DLL Debug" || "$(CFG)" == "DLL Release" || "$(CFG)" == "Static Release" ||  "$(CFG)" == "Static Debug"
SOURCE=..\..\src\Attrib.c

"$(INTDIR)\Attrib.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\CrBufFrI.c

"$(INTDIR)\CrBufFrI.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\CrDatFrI.c

"$(INTDIR)\CrDatFrI.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\create.c

"$(INTDIR)\create.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\CrIFrBuf.c

"$(INTDIR)\CrIFrBuf.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\CrIFrDat.c

"$(INTDIR)\CrIFrDat.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\data.c

"$(INTDIR)\data.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\hashtab.c

"$(INTDIR)\hashtab.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\Image.c

"$(INTDIR)\Image.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\Info.c

"$(INTDIR)\Info.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\misc.c

"$(INTDIR)\misc.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\parse.c

"$(INTDIR)\parse.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\RdFToBuf.c

"$(INTDIR)\RdFToBuf.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\RdFToDat.c

"$(INTDIR)\RdFToDat.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\RdFToI.c

"$(INTDIR)\RdFToI.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\rgb.c

"$(INTDIR)\rgb.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\scan.c

"$(INTDIR)\scan.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\simx.c

"$(INTDIR)\simx.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\WrFFrBuf.c

"$(INTDIR)\WrFFrBuf.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\WrFFrDat.c

"$(INTDIR)\WrFFrDat.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\src\WrFFrI.c

"$(INTDIR)\WrFFrI.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)

!ENDIF 

