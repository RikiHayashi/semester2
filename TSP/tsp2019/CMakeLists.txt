cmake_minimum_required(VERSION 2.8)

project(tsp)

set(CMAKE_BUILD_TYPE Debug)
#set(CMAKE_CXX_FLAGS "-g -Wall")
find_package(Eigen3 REQUIRED)
find_package(PythonLibs 2.7 REQUIRED)
add_definitions(-lstdc++ -std=c++11 -lpython2.7)

include_directories(
    ${PYTHON_INCLUDE_DIRS}
    ${EIGEN3_INCLUDE_DIR}
)

#add_executable(eigen calc_mat.cpp calc_mat.h)
add_executable(tsp sample.cpp matplotlibcpp.h)


#target_link_libraries(eigen ${GLUT_LIBRARY} ${OPENGL_LIBRARY} m)
target_link_libraries(tsp ${PYTHON_LIBRARIES})
