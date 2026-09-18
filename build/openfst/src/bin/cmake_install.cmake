# Install script for directory: /mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/onnxruntime/third_party/openfst/src/bin

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstarcsort" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstarcsort")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstarcsort"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstarcsort")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstarcsort" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstarcsort")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstarcsort"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstarcsort")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstclosure" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstclosure")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstclosure"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstclosure")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstclosure" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstclosure")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstclosure"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstclosure")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstcompile" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstcompile")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstcompile"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstcompile")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstcompile" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstcompile")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstcompile"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstcompile")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstcompose" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstcompose")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstcompose"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstcompose")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstcompose" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstcompose")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstcompose"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstcompose")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconcat" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconcat")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconcat"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstconcat")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconcat" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconcat")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconcat"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconcat")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconnect" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconnect")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconnect"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstconnect")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconnect" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconnect")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconnect"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconnect")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconvert" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconvert")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconvert"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstconvert")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconvert" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconvert")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconvert"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstconvert")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdeterminize" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdeterminize")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdeterminize"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstdeterminize")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdeterminize" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdeterminize")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdeterminize"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdeterminize")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdifference" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdifference")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdifference"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstdifference")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdifference" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdifference")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdifference"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdifference")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdisambiguate" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdisambiguate")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdisambiguate"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstdisambiguate")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdisambiguate" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdisambiguate")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdisambiguate"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdisambiguate")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdraw" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdraw")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdraw"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstdraw")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdraw" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdraw")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdraw"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstdraw")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstencode" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstencode")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstencode"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstencode")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstencode" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstencode")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstencode"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstencode")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstepsnormalize" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstepsnormalize")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstepsnormalize"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstepsnormalize")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstepsnormalize" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstepsnormalize")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstepsnormalize"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstepsnormalize")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstequal" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstequal")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstequal"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstequal")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstequal" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstequal")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstequal"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstequal")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstequivalent" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstequivalent")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstequivalent"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstequivalent")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstequivalent" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstequivalent")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstequivalent"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstequivalent")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstinfo" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstinfo")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstinfo"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstinfo")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstinfo" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstinfo")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstinfo"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstinfo")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstintersect" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstintersect")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstintersect"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstintersect")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstintersect" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstintersect")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstintersect"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstintersect")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstinvert" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstinvert")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstinvert"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstinvert")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstinvert" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstinvert")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstinvert"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstinvert")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstisomorphic" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstisomorphic")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstisomorphic"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstisomorphic")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstisomorphic" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstisomorphic")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstisomorphic"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstisomorphic")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstmap" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstmap")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstmap"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstmap")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstmap" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstmap")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstmap"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstmap")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstminimize" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstminimize")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstminimize"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstminimize")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstminimize" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstminimize")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstminimize"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstminimize")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstprint" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstprint")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstprint"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstprint")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstprint" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstprint")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstprint"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstprint")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstproject" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstproject")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstproject"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstproject")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstproject" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstproject")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstproject"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstproject")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstprune" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstprune")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstprune"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstprune")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstprune" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstprune")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstprune"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstprune")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstpush" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstpush")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstpush"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstpush")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstpush" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstpush")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstpush"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstpush")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrandgen" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrandgen")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrandgen"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstrandgen")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrandgen" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrandgen")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrandgen"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrandgen")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrelabel" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrelabel")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrelabel"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstrelabel")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrelabel" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrelabel")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrelabel"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrelabel")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreplace" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreplace")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreplace"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstreplace")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreplace" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreplace")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreplace"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreplace")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreverse" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreverse")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreverse"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstreverse")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreverse" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreverse")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreverse"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreverse")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreweight" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreweight")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreweight"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstreweight")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreweight" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreweight")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreweight"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstreweight")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrmepsilon" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrmepsilon")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrmepsilon"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstrmepsilon")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrmepsilon" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrmepsilon")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrmepsilon"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstrmepsilon")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstshortestdistance" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstshortestdistance")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstshortestdistance"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstshortestdistance")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstshortestdistance" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstshortestdistance")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstshortestdistance"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstshortestdistance")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstshortestpath" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstshortestpath")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstshortestpath"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstshortestpath")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstshortestpath" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstshortestpath")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstshortestpath"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstshortestpath")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstsymbols" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstsymbols")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstsymbols"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstsymbols")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstsymbols" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstsymbols")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstsymbols"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstsymbols")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstsynchronize" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstsynchronize")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstsynchronize"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstsynchronize")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstsynchronize" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstsynchronize")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstsynchronize"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstsynchronize")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fsttopsort" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fsttopsort")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fsttopsort"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fsttopsort")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fsttopsort" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fsttopsort")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fsttopsort"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fsttopsort")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstunion" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstunion")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstunion"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/bin/fstunion")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstunion" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstunion")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstunion"
         OLD_RPATH "/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/onnxruntime-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker/ffmpeg-amd64/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/script:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/openfst/src/lib:/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/build/glog:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fstunion")
    endif()
  endif()
endif()

