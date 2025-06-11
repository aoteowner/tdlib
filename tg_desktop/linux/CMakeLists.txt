# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

# Project-level configuration.
set(PROJECT_NAME "tg_desktop")
project(${PROJECT_NAME} LANGUAGES CXX)

# install(FILES "${CMAKE_CURRENT_SOURCE_DIR}/tdlib/libtdjson.so" DESTINATION "lib" COMPONENT Runtime)

set(tg_desktop_bundled_libraries
  # Defined in ../src/CMakeLists.txt.
  # This can be changed to accommodate different builds.
  "${CMAKE_CURRENT_SOURCE_DIR}/tdlib/libtdjson.so"
  PARENT_SCOPE
)