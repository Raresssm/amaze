#version 120

// Updated GLSL version for OpenGL 2.1 compatibility
// Removed unsupported features like layout and flat
// Downgraded to GLSL 1.20 for compatibility with OpenGL 2.1

void main()
{
	vec3 color = vec3(0.0, 0.0, 0.0);	
	gl_FragColor = vec4(color, 1.0);
}
