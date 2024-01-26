# MICROstack modular microscope

![Pictures/render.PNG](https://github.com/XVIIarcano/MICROstack/blob/main/Pictures/render.PNG)

## MICROwhat?

This project is about an affordable, expandable and customizeable microscope based around basic hardware, 3d printing, and the lenses and few specific microscope components that won't break the bank.
It started with a father wanting to show micro-critters to his daughter, so the aim is fist and foremost to provide an enjoyable experience exploring small stuff for hobby or home use.

While MICROstack is expandable, its core design prioritizes simplicity and affordability.  
We measure the success of this project on the fun you will have building it and using it, especially if it will be just a stepping stone for your next instruments and projects.

If you are already looking for a DIY microscope designed from the ground up to be a high end solution, and a vast selection of upgrades and configurations for addressing specific needs, have a look at the [PUMA project](https://github.com/TadPath/PUMA)

## Core specification
The core of the structure is formed by the three vertical rods of 12 mm diameter, in an equilateral triangle arrangement of 140 mm diameter (between the centers), with an external perimeter of another 10 mm all around, making the base module diameter 160 mm.
That's about it, there is no limit on how tall each "layer" should be, on the number of layers, nor on the lenght of the vertical rods, so if you have an idea for a particular lighitng setup, a finer stage module, or something else entirely, all you should do is fit it in a 160 mm diameter cylinder shape (minus the space for the rods).

## Base modules
The basic implementation consists of the following modules:

- Base 
This is Literally a dish filled with ballast, not much to see here.
You can use sand, fishing leads, shot, technically you can even leave it empty or ignore this altogether.
I recommend 

- Lighting (bring your own), slide a phone in with the torch on
- Stage
- Standoffs (either simple or clip on, if you have different objectives and the focused doesn't cover the whole range for all of them)
- Optical group (this is the only one a bit more complex to put together, but nothing scary)
- Phone holder to take pictures and brag about your new microscope 

## Materials

The list below covers the bare minimum, as your microscope grows or you choose some variant or another for the various modules, the list of what you need may change as well.

### 3d printed parts
Please read the instructions there are a couple variants to choose from, and some tips about printing.

### Generic hardware
- 3x 25 cm aluminum pipes spans, 12 mm diameter 
- 2x M5x ___ SHCS screws, 4x M5 nuts and 2x M5 washers for the stage movement
- 3x M3x30 SHCS screws and nuts for the anti backlash ring
- 2x M3x12 SHCS screws for the slide holder
- **BLUE!** threadlock 
- Superlube grease or similar
- Superglue
- A bit of oven paper or similar, or a 25 mm diameter disk of 3 mm frosted acrylic if you are feeling dapper

### 3D printing related hardware
- PTFE tube, 4 mm diameter, about 30 cm in total
- 3x 8x20 mm bed leveling springs, the generic yellow ones. 

### Microscope specific hardware
- at least one objective, with standard RMS thread, if in doubt start with a 4x one 
- at least one eyepiece, 23.2 mm tube diameter, if in doubt start with a 10x eyeglasses friendly
- a pair of stage clips, the standard type which comes with M3 screws for installation
- a pack of slides and cover slips

### Tools
- Allen keys matching the screw heads
- Metal saw for the aluminum tube
- having Sandpaper around never hurts, but it should not be necessary. 

## Modifications and accessories

The Mods folder is open to anyone who has something to contribute to the project.
Entries should be tested in real life, and include a readme file with any necessary information, instructions and bill of materials (don't take things for granted, remeber that this project is not meant for experts).

Simple variants, such as longer standoffs, or different tolerances on the optical tube thread, can be just generated from the CAD.
Please just notify me if you need them, I will generate them and add the STLs accordingly, no need to reinvent the wheel.

### Wishlist

Below is a small list of things I would like to see, but have not been included in the core project (yet), if someone beats me to them, all the better!

- Base alternative with some internal storage (has to be taller than the objective nut diameter, to accomodate the objectives sitting on their own ring)
- A basic lighting module with its own light source, external power and maybe a dimmer knob... 
- A less basic lighting module with the possibility to mount a condenser, an iris, and other 
- Either a stage or standoff solution integrating a reflected light source ("light from above" in plain english)
- Fine focusing on the optical group
- Fine movement and backlash compensation fo the stage module
- A better phone holder  

## Licensing
(Talk to your kids about sharing culture use before someon else does)
This project is released under Creative Commons BY-SA-NC license.

## Thanks and acknowledgements

Thanks to Maff, who desinged the [Hadley telescope](https://www.printables.com/it/model/224383-astronomical-telescope-hadley-an-easy-assembly-hig) ([Metric version](https://www.printables.com/it/model/268580-hadley-telescope-official-metric-remix)).
Building and using a Hadley has been the inspiration that made me think this might be possible, and the desing itself of the microscope is directly inspired by Hadley and the Hadley ecosystem.

Thanks to the Hadley discord community, especially Maff and Baker who encouraged me down this road after seeing the first render that was, at that point, still half a joke in my head.
They also pointed, and accompanied me, to the next chapter of my acknowledgements.

Thanks to the Microscopy discord community, in particular SmarmyNarwal and Blekenbleu who explained many things to me without patronizing even if I was literally an incompetent barging in with bold ideas.
They helped me understand what I should be aiming for and what challenges I should be aware of.