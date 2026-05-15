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
uniform sampler2D u_emissive;

out vec4 fragColor;

void main() {
    // Base color
    vec4 texColor = texture(u_texture, v_uv);

    // Ambient occlusion
    float ao = texture(u_ao, v_uv).r;
    ao = pow(ao, 0.5);

    // Apply AO to the color texture
    vec3 result = texColor.rgb * ao;

    // Sample emissive texture and add it to the final color so it glows regardless of lighting.
    vec3 emissive = texture(u_emissive, v_uv).rgb;
    result += emissive;
    fragColor = vec4(result, 1.0);
}


