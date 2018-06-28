#include <jni.h>
#include <string>
extern "C"{
#include "include/avcodec.h"
}

extern "C" JNIEXPORT jstring

JNICALL
Java_com_example_lance_ffmpeg_MainActivity_stringFromJNI(
        JNIEnv *env,
        jobject /* this */) {
    //std::string hello = "Hello from C++";
    return env->NewStringUTF(avcodec_configuration());
}
