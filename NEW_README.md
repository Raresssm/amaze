# amaze

Amaze is a random maze generator and visualizer. It generates mazes with a single entrance and exit, allowing users to navigate through the maze interactively. This project demonstrates the use of OpenGL for rendering, SDL2 for window management, and GLEW for OpenGL extensions.

## Features
- **Random Maze Generation**: Each maze is procedurally generated, ensuring a unique experience every time.
- **Interactive Navigation**: Navigate through the maze using arrow keys.
- **Visualization**: Real-time rendering of the maze and user movements.
- **Shaders**: Uses OpenGL shaders for rendering effects.

## How It Works

### Maze Generation
The maze is generated using a random algorithm that ensures there is always one entrance and one exit. The algorithm guarantees that the maze is solvable.

### Rendering
The project uses OpenGL for rendering the maze. Shaders are used to apply visual effects, such as coloring walls and paths. The rendering pipeline includes:
- Vertex and fragment shaders for drawing the maze.
- Grid and wall shaders for visualizing the maze structure.

### User Interaction
The user can navigate the maze using the keyboard. The arrow keys move the player in the respective direction. The program checks for collisions with walls and ensures the player stays within the maze boundaries.

### Dependencies
- **OpenGL**: Used for rendering the maze.
- **SDL2**: Handles window creation and input events.
- **GLEW**: Manages OpenGL extensions.

## Build Instructions

### Using Make
1. Run `make` in the project directory to build the project.

### Using CMake
1. Create a build directory:
   ```bash
   mkdir build
   ```
2. Navigate to the build directory:
   ```bash
   cd build
   ```
3. Generate the build files:
   ```bash
   cmake ..
   ```
4. Build the project:
   ```bash
   make
   ```

## Running the Program
After building the project, run the executable to start the maze generator. Use the arrow keys to navigate through the maze. The goal is to find the exit.

## Troubleshooting
- **Black Screen**: Ensure your system supports OpenGL 2.1 or higher. Check for shader compilation errors in the console.
- **Shader Errors**: Verify that the GLSL version in the shader files matches your OpenGL version.

## License
This project is licensed under the MIT License.
