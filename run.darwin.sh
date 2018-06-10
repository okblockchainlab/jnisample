#!/usr/bin/env bash

javac HelloWorld.java

javah -jni HelloWorld

g++ -gdwarf-4 \
    -I$JAVA_HOME/include \
    -I$JAVA_HOME/include/darwin \
    -fPIC -dynamiclib -o libHelloWorld.dylib HelloWorld.cpp

java -Djava.library.path='.' HelloWorld

echo "=====================Dump libHelloWorld.dylib info===================="

otool -L libHelloWorld.dylib

nm libHelloWorld.dylib
