#version 300 es
precision highp float;

in vec3 vNormal;
in vec3 vPosition;
in vec2 v_uv;

uniform vec3 lightPosition;
uniform vec3 lightColor;
uniform vec3 objectColor;

out vec4 fragColor;

// Don't modify this file. Go to vert.glsl (the vertex shader code)

void main() {
    vec3 normal = normalize(vNormal);
    vec3 lightDir = normalize(lightPosition - vPosition);
    
    float diff = max(dot(normal, lightDir), 0.0);
    vec3 diffuse = diff * lightColor;
    
    vec3 result = diffuse * objectColor;
    fragColor = vec4(result, 1.0);
}
