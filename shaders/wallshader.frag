#version 120

varying vec3 vColor;
varying vec3 vNormal;
varying vec2 vTexCoords;

uniform sampler2D texture_diffuse1;

float clamp(float x, float mi, float ma)
{
    return max(min(x, ma), mi);
}

void main()
{
    vec3 lightDir = vec3(0.0, 0.0, 1.0);
    float intensity = max(dot(vNormal, lightDir), 0.0);
    vec3 color = vColor * intensity;
    gl_FragColor = vec4(color, 1.0);
}
