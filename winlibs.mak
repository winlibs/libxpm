!IFNDEF VERSION
VERSION=unknown
!ENDIF

!IF "$(PHP_SDK_ARCH)" == "x64"
PLATFORM=x64
!ELSE
PLATFORM=Win32
!ENDIF

OUTPUT=$(MAKEDIR)\..\libxpm-$(VERSION)-$(PHP_SDK_VS)-$(PHP_SDK_ARCH)
ARCHIVE=$(OUTPUT).zip

all:
	git checkout .
	git clean -fdx

	cd windows\$(PHP_SDK_VS)
	devenv libxpm.sln /rebuild "Static Release|$(PLATFORM)"
	devenv libxpm.sln /rebuild "Static Debug|$(PLATFORM)"

	-rmdir /s /q $(OUTPUT)
	xcopy $(MAKEDIR)\include\X11\* $(OUTPUT)\include\X11\*
	xcopy "..\builds\$(PLATFORM)\Static Release\libxpm_a.*" $(OUTPUT)\lib\*
	xcopy "..\builds\$(PLATFORM)\Static Debug\libxpm_a_debug.*" $(OUTPUT)\lib\*

	del $(ARCHIVE)
	7za a $(ARCHIVE) $(OUTPUT)\*
