### cmake简单编译

在CMakeLists.txt所在的目录（一般为项目根目录）下执行如下指令进行编译：

```shell
mkdir build
cd build
cmake ..
make
```

#### 1、cmake使用eigen库

Eigen是一个C++开源线性代数库，提供矩阵的线性代数运算，Eigen是一个只有头文件的库。

cmake使用eigen，需要在CMakeLists.txt中添加如下语句：

```
find_package(Eigen3)

include_directories(${EIGEN3_INCLUDE_DIRS})
```

举个CMakeLists.txt的例子如下：

```
cmake_minimum_required(VERSION 2.6)
project(eigen_demo)

add_compile_options(-std=c++11)
set(CMAKE_CXX_FLAGS_DEBUG "-Wall -Werror")

find_package(Eigen3)
include_directories(${EIGEN3_INCLUDE_DIRS})

include_directories(include)

add_executable(getting_started src/getting_started.cpp)
```

#### 2、cmake使用pcl库

cmake使用pcl，需要在CMakeLists.txt中添加如下语句：

```
find_package(PCL 1.2 REQUIRED)

include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})
target_link_libraries (pcl_test ${PCL_LIBRARIES})

```

举个CMakeLists.txt的例子如下：

```
cmake_minimum_required(VERSION 2.6)
project(pcl_test)

find_package(PCL 1.2 REQUIRED)

include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})
 
add_executable(pcl_test pcl_test.cpp)

target_link_libraries (pcl_test ${PCL_LIBRARIES})
```

