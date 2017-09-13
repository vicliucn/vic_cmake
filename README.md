# vic-cmake

## 简介
`vic-cmake`是一个实用的CMake模块库，采用非常自由的开源协议。会不定期加入一些新的模块，敬请关注..

## 使用说明
1. 切换到项目目录，创建子项目目录: `mkdir third_party`。
2. 添加子项目: `git submodule add https://github.com/vicliucn/vic_cmake.git third_party/vic_cmake`。
3. 打来项目的CMake文件：`vim CMakeLists.txt`，设置模块搜索路径：`set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/vic_cmake")`。
4. 现在就可以使用相应的模块功能了。使用示例：`CMakeLists.txt`

## 反馈
* 作者: [Vic](https://github.com/vicliucn)
* 邮箱: any@vicliu.cn

