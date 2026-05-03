#version 300 es
precision mediump float;

uniform sampler2D u_texture;

in vec2 v_uv;

out vec4 fragColor;

void main() 
{
    vec3 blueColor = vec3(0.0, 0.0, 1.0);

    fragColor = texture(u_texture, v_uv);
}