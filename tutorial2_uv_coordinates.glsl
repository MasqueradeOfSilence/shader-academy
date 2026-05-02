#version 300 es
precision mediump float;

in vec2 v_uv;

out vec4 fragColor;

void main() {
    vec3 blueColor = vec3(0.0, 0.0, 1.0);
    vec3 redColor = vec3(1.0, 0.0, 0.0);

    vec3 finalColor = blueColor;
    if (v_uv.x < 0.5)
    {
        finalColor = redColor;
    }

    fragColor = vec4(finalColor, 1.0);
}