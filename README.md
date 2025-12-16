# amaze
A random maze generator.
Mazes have one entrance and one exit, and can be navigated with arrow keys.

![](demo.gif)

Instructions to build:
- make

Otherwise using cmake:
- mkdir build
- cd build
- cmake ..
- make

## macOS notes

Homebrew packages are recommended for the OpenGL dependencies:

```
brew install sdl2 glew glm pkg-config
```

The project requests a 4.1 core OpenGL context and enables `GL_SILENCE_DEPRECATION`
to avoid macOS warning noise. Build either with CMake (preferred) or the included
Makefile; both automatically add the necessary macOS frameworks via pkg-config or
explicit linker flags.

