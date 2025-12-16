#version 120

// Updated GLSL version for OpenGL 2.1 compatibility
// Removed unsupported features like layout and flat

attribute vec3 position;   // the position variable has attribute position 0

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
	gl_Position = projection * view * model * vec4(position, 1.0);
}
