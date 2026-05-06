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
    // Create a copy of the position that we'll modify
    vec3 modifiedPosition = position;

    // TODO: Change modifiedPosition here:
    // Uncomment the following line to move the cube:
    modifiedPosition.x += 1.0;


    // Ignore all this code for now. These are some maths which you will better understand later:
    vec4 worldPos = world * vec4(modifiedPosition, 1.0);
    vPosition = worldPos.xyz;
    vNormal = normalize(mat3(world) * normal);
    v_uv = uv;
    gl_Position = worldViewProjection * vec4(modifiedPosition, 1.0);
}
