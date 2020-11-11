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
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/build/MacOS)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/build/MacOS)

    #Compile and link flag locations
    include_directories(${PROJECT_SOURCE_DIR}/MacOS/include)
    find_library(SDL2lib ${PROJECT_SOURCE_DIR}/MacOS/lib)

    #Compiling and linking
    add_executable(Game MACOSX_BUNDLE ${Game_src})
    target_link_libraries(Game ${PROJECT_SOURCE_DIR}/MacOS/lib/libSDL2-2.0.0.dylib)

    #Fix and copy dependencies to bundle
    install(CODE "include(BundleUtilities) 
            fixup_bundle(Game.app \"\" \"\")" )

elseif(WIN32)
    #Setup output locations
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/build/Win10)
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/build/Win10)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/build/Win10)

    #Compile and link flag locations
    include_directories(${PROJECT_SOURCE_DIR}/Win10/include)
    #add_subdirectory(SDL2lib ${PROJECT_SOURCE_DIR}/Win10/lib)
    find_library(SDL2lib ${PROJECT_SOURCE_DIR}/Win10/lib)

    #Compiling and linking
    add_executable(Game WIN32 ${Game_src})
    target_link_libraries(Game ${PROJECT_SOURCE_DIR}/Win10/lib/SDL2.lib)
endif()


set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
