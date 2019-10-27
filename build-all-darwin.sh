#!/bin/sh

rm -rf compiled-libs && mkdir compiled-libs

cd antimodule
g++ -c -fPIC -I${JAVA_HOME}/include -I${JAVA_HOME}/include/darwin antimodule.cpp -o ../compiled-libs/antimodule.o
g++ -dynamiclib -o ../compiled-libs/antimodule.dylib ../compiled-libs/antimodule.o -lc
rm ../compiled-libs/antimodule.o
cd ../

cd heapsampler
g++ -c -fPIC -I${JAVA_HOME}/include -I${JAVA_HOME}/include/darwin heapsampler.cpp -o ../compiled-libs/heapsampler.o
g++ -dynamiclib -o ../compiled-libs/heapsampler.dylib ../compiled-libs/heapsampler.o -lc
rm ../compiled-libs/heapsampler.o
cd ../

cd richNPE
g++ -c -fPIC -I${JAVA_HOME}/include -I${JAVA_HOME}/include/darwin richNPE.cpp -o ../compiled-libs/richNPE.o
g++ -dynamiclib -o ../compiled-libs/richNPE.dylib ../compiled-libs/richNPE.o -lc
rm ../compiled-libs/richNPE.o
cd ../

cd vmtrace
g++ -c -fPIC -I${JAVA_HOME}/include -I${JAVA_HOME}/include/darwin vmtrace.cpp -o ../compiled-libs/vmtrace.o
g++ -dynamiclib -o ../compiled-libs/vmtrace.dylib ../compiled-libs/vmtrace.o -lc
rm ../compiled-libs/vmtrace.o
cd ../
