cmake_minimum_required(VERSION 3.11)

project(amaze LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# ---------- OpenGL ----------
find_package(OpenGL REQUIRED)

# ---------- SDL2 ----------
find_package(SDL2 REQUIRED)

# ---------- GLEW ----------
find_package(GLEW REQUIRED)

# ---------- Sources ----------
file(GLOB_RECURSE SRCFILES src/*.cpp)

add_executable(amaze ${SRCFILES})

# ---------- Linking (MODERN CMAKE) ----------
target_link_libraries(amaze
        PRIVATE
        OpenGL::GL
        SDL2::SDL2
        SDL2::SDL2main
        GLEW::GLEW
)

if(APPLE)
    target_compile_definitions(amaze PRIVATE GL_SILENCE_DEPRECATION)
endif()

# ---------- Shader copy ----------
add_custom_command(TARGET amaze POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_directory
        ${CMAKE_SOURCE_DIR}/shaders
        $<TARGET_FILE_DIR:amaze>/shaders
)
