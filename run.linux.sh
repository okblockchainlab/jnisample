#!/usr/bin/env bash

javac HelloWorld.java

javah -jni HelloWorld

g++ -gdwarf-4 \
    -I$JAVA_HOME/include \
    -I$JAVA_HOME/include/darwin \
    -fPIC -shared -o libHelloWorld.so HelloWorld.cpp

java -Djava.library.path='.' HelloWorld

echo "=====================Dump libHelloWorld.so info===================="

ldd libHelloWorld.so
nm libHelloWorld.so