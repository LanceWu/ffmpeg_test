#!/bin/bash
NDK=/home/wuheng/Android/Sdk/ndk-bundle
SYSROOT=$NDK/platforms/android-21/arch-arm/
ISYSROOT=$NDK/sysroot
TRIPLE=arm-linux-androideabi
TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64

CPU=arm
PREFIX=$(pwd)/Android/$CPU
FF_CFLAGS="-I$NDK/sysroot/usr/include -I$NDK/sysroot/usr/include/$TRIPLE -D__ANDROID_API__=21"
./configure \
	--prefix=$PREFIX \
	--enable-cross-compile \
	--cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi-\
	--target-os=linux \
	--arch=arm \
	--sysroot=$SYSROOT \
	--extra-cflags="$FF_CFLAGS" \
	--enable-shared \
	--disable-static \
	--disable-doc \
	--disable-parsers \
	--disable-protocols \
	--disable-indevs \
	--disable-bsfs \
	--disable-muxers \
	--disable-demuxers \
	--disable-hwaccels \
	--disable-decoders \
	--disable-encoders \
	--enable-parser=mpegaudio \
	--enable-protocol=http \
	--enable-protocol=file \
	--enable-encoder=png \
	--enable-decoder=mjpeg
