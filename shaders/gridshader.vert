#version 120

attribute vec3 position;
attribute vec3 normal;
attribute vec3 color;
attribute vec2 texCoords;

varying vec3 vColor; // output a color to the fragment shader
varying vec3 vNormal;
varying vec2 vTexCoords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
uniform mat3 normalMatrix; // Custom normal matrix

void main()
{
	gl_Position = projection * view * model * vec4(position, 1.0);
	vNormal = normalize(normalMatrix * normal);
	vColor = color; // set ourColor to the input color we got from the vertex data
	vTexCoords = texCoords;
}
