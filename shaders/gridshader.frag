#version 120

varying vec3 vColor;
varying vec3 vNormal;
varying vec2 vTexCoords;
varying float vSol;

uniform sampler2D texture_diffuse1;

void main()
{
	vec3 color = vColor; // not visited cell = 5

	if (vSol < 2)
		color = vec3(1,0,0); // current cell = 1
	else if (vSol < 3)
		color = vec3(0,1,0); // visited cell = 2
	else if (vSol < 4)
		color = vec3(0,0,1); // end cell = 3

	gl_FragColor = vec4(color, 1.0);
}
