cmake_minimum_required(VERSION 3.0.0)
project(Game VERSION 0.1.0)

include(CTest)
enable_testing()

#SDL2 location set on WIN10 ***********
set(SDL2_DIR "C:/Users/Alex/Desktop/TechyStuff/SDL2-2.0.12")
#Finds and sets location of SDL2
find_package(SDL2 REQUIRED)

#Header files 
include_directories(include)
include_directories(${SDL2_INCLUDE_DIRS})

#Set src location for files to compile
file(GLOB SOURCES "src/*.cpp")

add_executable(Game ${SOURCES})

#Link libraries
target_link_libraries(Game ${SDL2_LIBRARIES})


set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
