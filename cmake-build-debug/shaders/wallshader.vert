#version 120

// Updated GLSL version for OpenGL 2.1 compatibility
// Removed unsupported features like layout and flat

varying vec3 vColor; // output a color to the fragment shader
varying vec3 vNormal;
varying vec2 vTexCoords;

//uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
	gl_Position = gl_ModelViewProjectionMatrix * vec4(position, 1.0);
	vNormal = normalize(gl_NormalMatrix * normal);
	vColor = color; // set ourColor to the input color we got from the vertex data
	vTexCoords = texCoords;
}
