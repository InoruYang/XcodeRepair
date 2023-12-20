#!/bin/bash

# 执行方式
# chmod +x start.sh
# ./start.sh


# 修复新Xcode无相关二进制问题

# 14.3.1
# arc文件夹
# 15.x一般无此文件夹
toolchain_lib_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib'
if [ ! -d "$toolchain_lib_path/arc" ]; then 
    cp -r ./14.3.1/arc $toolchain_lib_path
    echo "修复无arc文件夹" 
fi


