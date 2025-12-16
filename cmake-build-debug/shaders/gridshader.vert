#version 120

varying vec3 vColor; // output a color to the fragment shader
varying vec3 vNormal;
varying vec2 vTexCoords;

//uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
uniform mat4 uModel;

void main()
{
	gl_Position = gl_ModelViewProjectionMatrix * vec4(position, 1.0);
	vNormal = normalize(gl_NormalMatrix * normal);
	vColor = color; // set ourColor to the input color we got from the vertex data
	vTexCoords = texCoords;
}
