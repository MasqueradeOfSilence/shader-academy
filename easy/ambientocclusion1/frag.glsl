#version 300 es
precision highp float;

in vec3 vNormal;
in vec3 vPosition;
in vec2 v_uv;

uniform vec3 lightPosition;
uniform vec3 lightColor;
uniform vec3 objectColor;
uniform sampler2D u_texture;
uniform sampler2D u_ao;

out vec4 fragColor;

void main() {
    vec3 normal = normalize(vNormal);
    vec3 lightDir = normalize(lightPosition - vPosition);
    
    vec3 base = texture(u_texture, v_uv).rgb;
    float ao = texture(u_ao, v_uv).r;    
    ao = pow(ao, 0.5);
    vec3 color = base * ao;
    fragColor = vec4(color, 1.0);
} 
