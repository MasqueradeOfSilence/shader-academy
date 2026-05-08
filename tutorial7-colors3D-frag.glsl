#version 300 es
precision highp float;

in vec3 vNormal;
in vec3 vPosition;
in vec2 v_uv;

uniform vec3 lightPosition;
uniform vec3 lightColor;
uniform vec3 objectColor;

out vec4 fragColor;

void main() {
    // Ignore these lines for now. These are some maths to calculate how much light the cube receives, at what angle, etc: 
    vec3 normal = normalize(vNormal);
    vec3 lightDir = normalize(lightPosition - vPosition);
    float diff = max(dot(normal, lightDir), 0.0);
    vec3 diffuse = diff * lightColor;
    vec3 result = diffuse * objectColor;


    vec3 greenColor = vec3(0.1, 0.7, 0.1);
    result = diffuse * greenColor;

    // Note: the diffuse * greenColor operation modifies the color depending on the light, angle, surface, etc.

    // fragColor is the final color of the fragment.
    // The 1.0 is "opacity". After you're done with the exercise, try to change it and see what happens ?
    fragColor = vec4(result, 1.0);
}
