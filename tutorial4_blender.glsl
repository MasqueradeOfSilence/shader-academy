#version 300 es
precision mediump float;

uniform sampler2D u_texture;
uniform sampler2D u_texture2;

in vec2 v_uv;

out vec4 fragColor;

void main() {
    // Fouth component is the transparency - 1.0 means opaque:
    vec4 redColor = vec4(1.0, 0.0, 0.0, 1.0);
    vec4 textureColor = texture(u_texture, v_uv);

    // TODO: Mix textureColor with redColor
    fragColor = mix(textureColor, redColor, 0.5);
}
