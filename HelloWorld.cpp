#include <jni.h>
#include <stdio.h>
#include "HelloWorld.h"

JNIEXPORT void JNICALL

Java_HelloWorld_print(JNIEnv *env, jobject obj)
{
   printf("This is invoked by HelloWorld.cpp: Hello World!\n");
}
