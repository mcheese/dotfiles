mkdir build_compile_commands
cd build_compile_commands
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DCMAKE_CXX_USE_RESPONSE_FILE_FOR_INCLUDES=0 -DCMAKE_C_USE_RESPONSE_FILE_FOR_INCLUDES=0 -DCMAKE_TOOLCHAIN_FILE=~/TC-mingw.cmake ..
cp compile_commands.json ../
cd ..
rm -r build_compile_commands
