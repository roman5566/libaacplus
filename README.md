libaacplus is a " "non-Free High Efficiency Advanced Audio Coder"
==========
proprietary MPEG-4 and MPEG-2 AAC+ encoder


3GPP AAC+ High Efficiency Advanced Audio Codec v2 (HE-AAC+) Encoder Shared Library

3GPP released reference implementation of 3GPP AAC Advanced Audio -
(HE-AAC+) Encoder (3GPP TS 26.410 V8.0.0).

http://www.3gpp.org/ftp/Specs/html-info/26410.htm

Reference implementation is available as a source code, but the code uses
#define to choose code options. In world of GNU-Linux, there is a common
practice to compile such code as a shared library.

Due to restrictive license, the reference implementation is not part of
this package and it is dowloaded from 3GPP during build. If you want to
build this package without network access, you either have to put the
original source code ZIP file to the unpacked wrapper code directory or
you have to use full source core (see below).

This package converts 3GPP TS 26.410 V8.0.0 reference implementation of HE-AAC+
encoder to a shared library. It has exactly the same API, but some calls 
are wrapped by macros to call proper variant of the function.

For more see readme.txt and 26410-800.doc, which comes with the original code.

This wrapper fixes some bugs of original code.
I will accept patches for it, if 3GPP will not release fixed implementation.

To use package compiled by this code, you may need a license from 3GPP.

It is possible to distribute these packages in three source forms:
1. As a wrapper-only source (as you can build by "make extradist").
2. As a full source code including 3GPP code (as you can build by "make dist").
3. As a wrapper-only source accompanied by the original zip file.

Package home page: http://217.20.164.161/~tipok/aacplus

For problems with the shared library wrapper or building code please contact
Sergiy Guriev <piratfm@ua.fm>

For problems with the implementation, contact 3GPP.

Technical notes:

The code has only one branch with stereo implementation.

In addition to "make dist", you can also call "make extradist", which
builds distribution package containing LGPL wrapper only.

Known bugs: 
- Not known yet
  
Dependencies: 
- fftw3 (can be skipped)

To compile library do:
# ./autogen.sh
# ./configure
# make
# make install
