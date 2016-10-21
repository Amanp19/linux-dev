#!/bin/sh
#
ARCH=$(uname -m)

config="multi_v7_defconfig"

build_prefix="-armv7-devel-r"
branch_prefix="v"
branch_postfix=".x"

#arm
KERNEL_ARCH=arm
#toolchain="gcc_linaro_eabi_4_8"
#toolchain="gcc_linaro_eabi_4_9"
#toolchain="gcc_linaro_eabi_5"
#toolchain="gcc_linaro_eabi_6"
#toolchain="gcc_linaro_gnueabi_4_6"
#toolchain="gcc_linaro_gnueabihf_4_7"
#toolchain="gcc_linaro_gnueabihf_4_8"
#toolchain="gcc_linaro_gnueabihf_4_9"
#toolchain="gcc_linaro_gnueabihf_5"
toolchain="gcc_linaro_gnueabihf_6"
#arm64
#KERNEL_ARCH=arm64
#toolchain="gcc_linaro_aarch64_gnu_5"
#toolchain="gcc_linaro_aarch64_gnu_6"

#Kernel/Build
KERNEL_REL=4.9
KERNEL_TAG=${KERNEL_REL}-rc1
BUILD=${build_prefix}37
kernel_rt=".X-rtY"

#v4.X-rcX + upto SHA
prev_KERNEL_SHA="6f33d6458e35d6ba53c2635ee4b8a3177cbd912d"
KERNEL_SHA="6edc51a8d43b0bb8263fefaa8eb0cf62e8499978"

#git branch
#BRANCH="${branch_prefix}${KERNEL_REL}${branch_postfix}"

DISTRO=cross
DEBARCH=armhf
#
