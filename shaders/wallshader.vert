#version 150 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec3 color;
layout (location = 3) in vec2 texCoords;

out vec3 vColor; // output a color to the fragment shader
out vec3 vNormal;
out vec2 vTexCoords;

uniform mat4 uModel;
uniform mat4 view;
uniform mat4 projection;
uniform mat3 normalMatrix; // Custom normal matrix

void main()
{
        gl_Position = projection * view * uModel * vec4(position, 1.0);
        vNormal = normalize(normalMatrix * normal);
        vColor = color; // set ourColor to the input color we got from the vertex data
        vTexCoords = texCoords;
}
