#version 300 es
precision mediump float;

uniform vec2 u_mousePosition;

in vec2 v_uv;

out vec4 fragColor;

void main() {
    // Radius of the circle
    float radius = 0.2;

    float dist = distance(v_uv, u_mousePosition);
    float ring = step(dist, radius);

    vec3 blueColor = vec3(0.4, 0.4, 1.0);
    vec3 orangeColor = vec3(1.0, 0.5, 0.0);
    fragColor = vec4(mix(blueColor, orangeColor, ring), 1.0);
}