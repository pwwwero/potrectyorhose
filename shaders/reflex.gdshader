shader_type canvas_item;
render_mode unshaded;

uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;




void fragment(){

    vec2 uv = SCREEN_UV;
    float y = 1.1  - uv.y;


    COLOR = vec4(texture(SCREEN_TEXTURE, vec2(uv.x, y))); 
} 