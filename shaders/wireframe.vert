#version 330 core

layout (location = 0) in vec3 position;   // the position variable has attribute position 0

uniform mat4 uModel;
uniform mat4 view;
uniform mat4 projection;

void main()
{
        gl_Position = projection * view * uModel * vec4(position, 1.0);
}
