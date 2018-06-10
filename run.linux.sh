#!/usr/bin/env bash

javac HelloWorld.java

javah -jni HelloWorld

g++ -gdwarf-4 \
    -I$JAVA_HOME/include \
    -I$JAVA_HOME/include/darwin \
    -fPIC -shared -o libHelloWorld.so HelloWorld.c

java -Djava.library.path='.' HelloWorld
