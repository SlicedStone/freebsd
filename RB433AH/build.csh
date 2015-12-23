#!/bin/csh

setenv SRCROOT /home/test/programming/freebsd
setenv TARGET mips
setenv TARGET_ARCH mips
# not used:
# setenv TARGETCPU_TYPE mips32
setenv KERNCONF RB433
setenv MAKEOBJDIRPREFIX /home/test/RB433AH/obj
set NFSROOT=/home/test/RB433AH/nfsroot
set TFTPBOOT=/home/test/RB433AH/tftpboot

cd ${SRCROOT}
#make kernel-toolchain
make buildkernel
make DESTDIR=${TFTPBOOT} installkernel
#make buildworld

#make DESTDIR=${NFSROOT} installworld
#make DESTDIR=${NFSROOT} distribution
