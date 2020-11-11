cmake_minimum_required(VERSION 3.0.0)
project(Game VERSION 0.1.0)

include(CTest)
enable_testing()

set(CMAKE_INSTALL_PREFIX ${CMAKE_BINARY_DIR})

#src files
file(GLOB Game_src
    src/*.h
    src/*.cpp
)

if(APPLE)
    #Setup output locations
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/build/MacOS)

    #Compile and link flag locations
    include_directories(${PROJECT_SOURCE_DIR}/MacOS/include)
    find_library(SDL2lib ${PROJECT_SOURCE_DIR}/MacOS/lib)

    #Compiling and linking
    add_executable(Game MACOSX_BUNDLE ${Game_src})
    target_link_libraries(Game ${PROJECT_SOURCE_DIR}/MacOS/lib/libSDL2-2.0.0.dylib)

    #INSTALLATION: When build complete uncomment following lines to fix and copy dependencies to bundle
    include(${PROJECT_SOURCE_DIR}/BundleFixup.cmake)
    install(SCRIPT ${PROJECT_SOURCE_DIR}/BundleFixup.cmake)

elseif(WIN32)
    #Setup output locations
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/build/Windows)

    #Compile and link flag locations
    include_directories(${PROJECT_SOURCE_DIR}/Windows/include)
    #add_subdirectory(SDL2lib ${PROJECT_SOURCE_DIR}/Windows/lib)
    find_library(SDL2lib ${PROJECT_SOURCE_DIR}/Windows/lib)

    #Compiling and linking
    add_executable(Game WIN32 ${Game_src})
    target_link_libraries(Game ${PROJECT_SOURCE_DIR}/Windows/lib/SDL2.lib)
    
endif()


set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
