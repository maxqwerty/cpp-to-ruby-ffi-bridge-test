#export LD_LIBRARY_PATH = $(shell pwd):$LD_LIBRARY_PATH
#$(echo $LD_LIBRARY_PATH)

all: wrapper_lib cpptest ctest

ctest: wrapper_lib
	gcc ctest.c -o ctest -lwrapper -L./ -Wl,-rpath=./

wrapper_lib: custom_lib wrapper.cpp
	g++ -fPIC -shared -o libwrapper.so wrapper.cpp -lcustom_lib -L./

cpptest: custom_lib cpptest.cpp
	g++ cpptest.cpp -o cpptest -lcustom_lib -L./

custom_lib:
	g++ -fPIC -shared -o libcustom_lib.so custom_lib.cpp

clean:
	rm *.so cpptest ctest
