cmake_minimum_required(VERSION 3.0.0)
project(Game VERSION 0.1.0)

include(CTest)
enable_testing()

#External packages
#IF(WIN32)
#    set(SDL2_DIR C:/Users/Alex/Desktop/TechyStuff)
#ELSEIF(APPLE)
    find_package(SDL2 REQUIRED)
#ENDIF()

#Header files 
include_directories(include)
include_directories(${SDL2_INCLUDE_DIRS})

#Set src location for files to compile
file(GLOB SOURCES "src/*.cpp")

add_executable(Game ${SOURCES})

#Link static libraries
IF(APPLE)
    target_link_libraries(Game ${SDL2_LIBRARIES} -lSDL2  -lm -liconv  -Wl,-framework,CoreAudio -Wl,-framework,AudioToolbox -Wl,-framework,ForceFeedback -lobjc -Wl,-framework,CoreVideo -Wl,-framework,Cocoa -Wl,-framework,Carbon -Wl,-framework,IOKit -Wl,-weak_framework,QuartzCore -Wl,-weak_framework,Metal)
ELSEIF(WIN32)
    target_link_libraries(Game ${SDL2_LIBRARIES})
    #Copy the .dll file to the same folder as the executable
    add_custom_command(
        TARGET ${PROJECT_NAME} POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_if_different
        $<TARGET_FILE:${SDL2_LIBRARIES}s>
        $<TARGET_FILE_DIR:${PROJECT_NAME}>
        VERBATIM)
ENDIF()


set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
