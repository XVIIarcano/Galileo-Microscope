Height = 80; // [80:Standard, 105:Crayford]
Text_Size = 5; //[1:8]
// Must be less than wall thickness
Emboss = 0.6; // [0.1:0.1:2]
// Assigned on Discord
Serial_Number = "0001";

/* [Hidden] */
$fn=50;
diameter = 12; // diameter of metal tube
wall = 2;
margin = 0.6; // allow for margin of error
radius = ((diameter + margin) / 2) + wall; // calculate desired outer radius
proportional_value = Text_Size / 2;
depth=5;

// Defaults
default_t = "text_on";
default_size = 4; // TODO - Can we make this 10?? To match internal size? There is an underlying value in text() -- This masks that.
default_font = "Liberation Mono";
default_spacing = 1; // Spacing between characters. There is an underlying value in text() -- This masks that. We try and match it here.
default_rotate = 0; // text rotation (clockwise)
default_center = true; //Text-centering
default_scale = [1,1,1];
default_extrusion_height = 2; //mm letter extrusion height
default_buffer_width = 0; //mm of buffer (thickening in all directions) to add to each letter
default_circle_ccw = false; // write on top or bottom in a ccw direction
default_circle_eastwest = 0;
default_cylinder_face = "side";
default_cylinder_updown = 0;

// Internal values - don't play with these :)
// This is much more accurate than the PI constant internal to Openscad.
internal_pi = 3.1415926535897932384626433832795028841971693993751058209;
internal_pi2 = internal_pi * 2;

// Internal values - You might want to play with these if you are using a proportional font
internal_space_fudge = 0.80; // Fudge for working out lengths (widths) of strings

debug = true;

// ---- Helper Functions ----
// String width (length from left to right or RTL) in OpenSCAD units
// NOTE: These are innacurate because we don't know the real spacing of the chars and so have to approximate
// They work for monospaced (fixed-width) fonts well
function width_of_text_char(size, spacing) = size * internal_space_fudge * spacing;
function width_of_text_string_num_length(length, size, spacing) = width_of_text_char(size, spacing) * length;
function width_of_text_string(t, size, spacing) = width_of_text_string_num_length(len(t), size, spacing);

//Angle that measures width of letters on perimeter of a circle (and sphere and cylinder)
function rotation_for_character(size, spacing, r, rotate = 0) = (width_of_text_char( size, spacing ) / (internal_pi2 * r)) * 360 * (1 - abs(rotate) / 90);

//Rotate according to rotate and if centred text also 1/2 width of text
function rotation_for_center_text_string_and_rotate(t, size, spacing,r,rotate,center) = ((center) ? (width_of_text_string(t, size, spacing) / 2 / (internal_pi2 * r) * 360) : 1) * (1 - abs(rotate) / 90);

module text_on_cylinder(
    t = default_t,                       
    locn_vec = [0, 0, 0],
    r,
    h,
    face = default_cylinder_face,
    updown = default_cylinder_updown,
    rotate = default_rotate,
    eastwest = default_circle_eastwest,
    ccw = default_circle_ccw,
    cylinder_center = false,
    extrusion_height = default_extrusion_height,
    center = default_center,
    font = undef,
    size = default_size,
    direction = undef,
    language = undef,
    script = undef,
    spacing = default_spacing
) 
{
    //Work on the side
    locn_offset_vec = (cylinder_center == true) ? [0, 0, 0] : [0, 0, h / 2]; 
    rotate(-1 * rotation_for_center_text_string_and_rotate(t, size, spacing, r, rotate, center), [0, 0, 1])
    translate(locn_vec + locn_offset_vec)
    __internal_text_on_cylinder_side(
        t,
        locn_vec,
        r = r,
        h = h,
        cylinder_center = cylinder_center,
        center = center,
        font = font,
        size = size,
        spacing = spacing,
        direction = direction,
        language = language,
        script = script,
        extrusion_height = extrusion_height,
        rotate = rotate,
        face = face,
        updown = updown,
        eastwest = eastwest
    );
}

module __internal_text_on_cylinder_side(
    t = default_t,
    locn_vec = [0, 0, 0],
    r,
    r1 = undef,
    r2 = undef,
    h,
    cylinder_center,
    extrusion_height = default_extrusion_height,
    center = undef,
    rotate = default_rotate,
    font = undef,
    size = default_size,
    direction = undef,
    language = undef,
    script = undef,
    spacing = default_spacing,
    buffer_width = default_buffer_width,
    updown = default_cylinder_updown,
    face = default_cylinder_face,
    eastwest = default_circle_eastwest
) 
{
    wid = width_of_text_char( size, spacing ); //TODO: refactor this out?

    function calc_radius_at_height_offset(r1, r2, h_total, h_offset) = r1 + ((r2 - r1) * (h_total - h_offset) / h_total);
    
    //Has to factor in up/downedness
    //Starts at middle height then height displacement is reduced under rotation and by the slope of the uneven radii
    function calc_height_offset_at_length(r1, r2, h, length, rotate, updown) = h / 2 - updown + length * rotate / 90 * cos(atan((r2 - r1) / h));

    function calc_radius_at_length(r1, r2, h, length, rotate, updown) = calc_radius_at_height_offset(r1, r2, h, calc_height_offset_at_length(r1, r2, h, length, rotate, updown));
    
    r1 = (r1 != undef) ? r1 : r;
    r2 = (r2 != undef) ? r2 : r;
    //NOTE: r is not used after here. We operate on generalised slanty cone (r1 and r2)
    
    //TODO: Look at changing this to extrusion_height_center
    //and renaming the other as text_center
    rr1 = (center) ? r1 - extrusion_height / 2 : r1;
    rr2 = (center) ? r2 - extrusion_height / 2 : r2;
    
    ccenter = (r != undef) ? center : false; //We don't do (text) centering for the slanty cones/helical paths (yet? ever?). Needs to do quite a few offset calcs.
    ddirection = ((r == undef) && ((direction == "ttb") || (direction == "btt"))) ? "ltr" : direction; //We don't do ttb or btt directions on slanty
    rtl_sign = (ddirection == "rtl") ? -1 : 1;

        //This code takes care of slanty cylinders and "normal" cylinders
    translate([0, 0, updown])
    rotate(eastwest, [0, 0, 1])
    for(l = [0 : len(t) - 1]) {
        //TODO: TTB and BTT need to have a different concept of path/length than this for RTL/LTR
           //width_of_... is half a char too long -- add 0.5 (counting from zero)
        length_to_center_of_char = width_of_text_string_num_length(l + 0.5, size, spacing);
        radius_here = calc_radius_at_length(rr1, rr2, h, length_to_center_of_char, rotate, updown);
        //Rotating into position and tangentially to surface -- Don't rotate per character for ttb/btt
        //-90 is to get centering at origin
        rotate_z_inner = -90 + rtl_sign * rotation_for_character(size, spacing, radius_here, rotate) * ((ddirection == "ttb" || ddirection== "btt") ?  0 : l);
        rotate(rotate_z_inner, [0, 0, 1]) {
            //Positioning - based on (somewhat innacurate) string length
            //Offset per character to go up/down the side in ttb/btt -- TTB down, BTT up
            vert_z_char_offset = (ddirection == "ttb" || ddirection == "btt") ?  (l * size * ((ddirection == "ttb") ? -1 : 1 )) :  0 ;
            //Only if RTL/LTR and if center -- center the text (starts off in a more visually appealing location)
            vert_z_half_text_offset_tmp = (len(t) -1) / 2 * (rotate / 90 * wid);
            vert_z_half_text_offset = ((ddirection == "ttb" || ddirection == "btt") || (ccenter == false)) ? 0 : vert_z_half_text_offset_tmp;
            translate([ radius_here , 0, vert_z_char_offset - l * (rotate / 90 * wid) + vert_z_half_text_offset])

            //Flip to tangent on the sloping side (without respecting rotation impact on the tangent -- rotate seems a little off. TODO: Investigate).
            rotate(atan((rr2 - rr1) /h), [0, 1, 0])
            //Flip onto face of "normal" cylinder
            rotate(90, [1, 0, 0])
            rotate(90, [0, 1, 0])

            //Modify the offset of the baselined text to center
            translate([0, (ccenter) ? -size / 2 : 0, 0])
        
            text_extrude(t[l],
                    center = false,
                    rotate = rotate,
                    font = font,
                    size = size,
                    spacing = spacing,
                    direction = undef, //We don't pass direction ( misaligns inside text() ). TODO: Investigate why
                    language = language,
                    script = script,
                    halign = "center", //This can be relaxed eventually
                    valign = "baseline", //Need this to keep all letters on the same line (could also support top -- otherw will make
                    extrusion_height = extrusion_height,
                    buffer_width = buffer_width);
        }
    }
}

module text_extrude(
    t = default_t,
    extrusion_height = default_extrusion_height,
    center = default_center, // Fudgy. YMMV. // TODO:center_extrusion, or extrusion offset??
    rotate = default_rotate,
    scale = default_scale, // For scaling by different on axes (for widening etc)
    // Following are test() params (in addition to t=)
    font = default_font,
    size = default_size,
    direction = undef,
    halign  = undef,
    valign = undef,
    language = undef,
    script = undef,
    spacing = default_spacing,
    buffer_width = default_buffer_width
) 
{   
    extrusion_center = (center) ? true : false ;
    
    scale(scale)
    rotate(rotate, [0, 0, -1]) //TODO: Do we want to make this so that the entire vector can be set?
    linear_extrude(height = extrusion_height, convexity = 10, center = extrusion_center)
    offset(delta = buffer_width)
    text(
        text = t,
        size = size,
        $fn = 40,
        font = font,
        direction = direction,
        spacing = spacing,
        halign = halign,
        valign = valign,
        language = language,
        script = script
    );
}

difference() // turn into a pipe
{
    union() // limits emboss to specified depth matching curve of the cylinder
    {  
        difference()
        {
            cylinder(r=radius, h=Height);
            { // create text
                %cylinder(r=radius, h=Height, center=false);
                text_on_cylinder(
                    str("Galileo ", Serial_Number), 
                    [proportional_value, depth/2, 0],
                    r=radius,
                    h=Height,
                    rotate=-90,
                    updown=proportional_value, 
                    extrusion_height=depth, 
                    font="Noto Sans:style=Bold Italic", // "Arial:style=Bold", "Times New Roman:style=Italic", null
                    size=Text_Size
                );
            };
        };
        cylinder(r=(radius - Emboss), h=Height);
    };
    cylinder(r=(radius - wall), h=Height);
}