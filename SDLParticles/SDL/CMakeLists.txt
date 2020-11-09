cmake_minimum_required(VERSION 3.0.0)
project(Game VERSION 0.1.0)

include(CTest)
enable_testing()

#Header files 
include_directories(include)
IF(WIN32)
    include_directories(${CMAKE_SOURCE_DIR}/include/SDL2Win10)
ELSE()
    include_directories(${CMAKE_SOURCE_DIR}/include/SDL2)
ENDIF()

#set locations of install
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})

#Set src location for files to compile
file(GLOB SOURCES "src/*.cpp")

add_executable(Game ${SOURCES})

#Link libraries
IF(WIN32)
    target_link_libraries(Game ${CMAKE_SOURCE_DIR}/lib/Win10/SDL2.lib)
ELSE()
    target_link_libraries(Game ${CMAKE_SOURCE_DIR}/lib/libSDL2-2.0.0.dylib)
ENDIF()


set(CMAKE_INSTALL_RPATH "")
set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
