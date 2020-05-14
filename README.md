# libxpm

## Available prebuilt libraries

All prebuilt libraries are available in the php-libs
[repositories](http://windows.php.net/downloads/php-sdk/)

The filename format is:

libxpm-x.y.z-vcversion.zip

where x.y.z defines the version, vcversion which Visual C++ has been used.

## Building LibXpm 3.5.13

### Requirements

  * LibXPM Sources from our [repositories](https://github.com/winlibs/libxpm)

  * Common tools used to compile PHP

### Configuration

LibXpm can be compiled using various modes. Only the following list can be
used with PHP:

  * “DLL Release”

  * “DLL Debug”

  * “Static Release”

  * “Static Debug”

PHP uses “LIB Release” for the PHP builds.

One of these option has to be used while calling the makefile (VC6 only). VS
solution files are given for VC8 and VC9.

### Compile

Go to the .\windows subdir, choose and compile the appropriate VC solution.
