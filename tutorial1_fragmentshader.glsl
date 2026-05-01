#version 300 es
precision mediump float;

in vec2 v_uv;

out vec4 fragColor;

void main() 
{
    vec3 blueColor = vec3(1.0, 0.0, 0.0);
    fragColor = vec4(blueColor, 1.0);
}