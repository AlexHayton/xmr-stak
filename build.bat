set CMAKE_PREFIX_PATH=xmr-stak-dep\hwloc;xmr-stak-dep\libmicrohttpd;xmr-stak-dep\openssl
mkdir build
cd build
REM cmake -G "Visual Studio 14 2015 Win64" -T v140,host=x64 .. -DCUDA_ARCH=30

cmake -G "Visual Studio 14 2015 Win64" ..
cmake --build . --config Release --target install
cd bin\Release
copy C:\xmr-stak-dep\openssl\bin\* .