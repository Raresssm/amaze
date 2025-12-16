#version 330 core

in vec3 vColor;
in vec3 vNormal;
in vec2 vTexCoords;

uniform sampler2D texture_diffuse1;

out vec4 FragColor;

void main()
{
    vec3 lightDir = vec3(0.0, 0.0, 1.0);
    float intensity = max(dot(vNormal, lightDir), 0.0);
    vec3 color = vColor * intensity;
    FragColor = vec4(color, 1.0);
}
