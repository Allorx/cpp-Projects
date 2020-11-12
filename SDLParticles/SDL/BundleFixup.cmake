cmake_minimum_required(VERSION 3.0.0)

#Allow BundleUtilities include and silence warning
#this is deprecated so may not work in future versions of CMake
cmake_policy(SET CMP0080 OLD)

include(BundleUtilities) 

message(STATUS  "************INSTALLING***********")

if(APPLE)
    set(BUNDLE_APPS ${PROJECT_SOURCE_DIR}/build/MacOS/Game.app)
    set(BUNDLE_DIRS ${PROJECT_SOURCE_DIR}/MacOS/lib/libSDL2-2.0.0.dylib)
    fixup_bundle("${BUNDLE_APPS}" "" "${BUNDLE_DIRS}")

elseif(WIN32)
    set(BUNDLE_APPS ${PROJECT_SOURCE_DIR}/build/Windows/Release)
    set(BUNDLE_DIRS ${PROJECT_SOURCE_DIR}/Windows/lib/SDL2.dll)
    file(COPY ${BUNDLE_DIRS} DESTINATION ${BUNDLE_APPS})

endif()