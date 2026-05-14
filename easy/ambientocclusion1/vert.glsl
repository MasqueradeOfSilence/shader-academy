#version 300 es
precision highp float;

in vec3 position;
in vec3 normal;
in vec2 uv;

uniform mat4 world;
uniform mat4 worldView;
uniform mat4 worldViewProjection;

out vec3 vNormal;
out vec3 vPosition;
out vec2 v_uv;

void main() {
    vec4 worldPos = world * vec4(position, 1.0);
    vPosition = worldPos.xyz;
    vNormal = normalize(mat3(world) * normal);
    v_uv = uv;
    gl_Position = worldViewProjection * vec4(position, 1.0);
}


