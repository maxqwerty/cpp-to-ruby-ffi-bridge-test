all: wrapper_lib cpptest ctest

ctest: wrapper_lib
	gcc ctest.c -o ctest -lwrapper

wrapper_lib: custom_lib wrapper.cpp
	g++ -fPIC -shared -o libwrapper.so wrapper.cpp -lcustom_lib

cpptest: custom_lib cpptest.cpp
	g++ cpptest.cpp -o cpptest -lcustom_lib

custom_lib:
	g++ -fPIC -shared -o libcustom_lib.so custom_lib.cpp

clean:
	rm *.so cpptest ctest
