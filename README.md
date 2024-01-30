# MICROstack modular microscope

![Pictures/render.PNG](/Pictures/render.PNG)

## MICROwhat?

This project is about an affordable, expandable and customizeable microscope based around basic hardware, 3d printing, and the lenses and just a few specific microscope components that cannot be worked around.
It started with a father without technical or academic knowledge whatsoever wanting to show micro-critters to his daughter, so the aim is fist and foremost to provide an enjoyable experience exploring small stuff for hobby or home use.

While MICROstack is expandable, its core design prioritizes simplicity and affordability.  
I measure the success of this project on the fun you will have building it and using it, **especially** if it will be a stepping stone for more advanced instruments and projects.

If you are looking for a DIY microscope already designed from the ground up to be a high end solution, with a vast selection of upgrades and configurations addressing a variety of scientific needs, have a look at the [PUMA project](https://github.com/TadPath/PUMA)

## Basic modules

The basic configuration consists of the following modules:

- **Base** 
- **Lighting (bring your own)** 
- **Stage** 
- **Standoffs** (choose your size, Standard or clip on)
- **Optical group** 
- **Phone holder** 

## Materials

The list below covers the bare minimum, as your microscope grows or you choose some variant or another for the various modules, the list of what you need may change as well.

### 3d printed parts
Please read the [instructions](/Instructions.md) there are a couple variants to choose from, and some tips about printing.

### Generic hardware
- 3x 20 cm aluminum pipes spans, 12 mm diameter 
- 6x M5x12 SHCS screws and nuts for locking the pipes
- 2x M5x80 hexagon head bolts, 2x M5 lock nuts and 4x M5 washers for the stage movement.  You can also use M5 threaded rod 90 mm length instead of the bolts, but you will need 2 more locknuts and 2x M5 cap nuts.
- 3x M3x30 SHCS screws and nuts for the anti backlash ring
- 2x M3x12 SHCS screws for the slide holder
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

>[!NOTE]
>The microscope has been designed and tested around cheap optics from Amazon, using better components will definitely make a difference but if you are in doubt wether to commit money to this project, there is no shame in starting cheap.  
>Here is an example of what 25,00 Euros of glass can do already (4x objective 10x eyepiece, the small notches are 0.01 mm)
>![Pictures/example.jpeg](/Pictures/example.jpeg)![Pictures/example-crop.png](/Pictures/example-crop.png)

## Modifications and accessories

The Mods folder is open to anyone who has something to contribute to the project.
Entries should be tested in real life, and include a readme file with any necessary information, instructions and bill of materials (don't take things for granted, remeber that this project is not meant for experts).

Simple variants, such as longer standoffs, or different tolerances on the optical tube thread, can be just generated from the CAD.
Please just notify me if you need them, I will generate them and add the STLs accordingly, no need to reinvent the wheel.

## Core specification
The core of the structure is formed by the three vertical rods of 12 mm diameter, in an equilateral triangle arrangement of 140 mm diameter (between the centers), with an external perimeter of another 10 mm all around, making the base module diameter 160 mm.
That's about it, there is no limit on how tall each "layer" should be, on the number of layers, nor on the lenght of the vertical rods, so if you have an idea for a particular lighitng setup, a finer stage module, or something else entirely, all you should do is fit it in a 160 mm diameter cylinder shape (minus the space for the rods).

![Pictures/Base.png](/Pictures/Base.png)

### Wishlist and known issues

Below is a small list of things I would like to see, but have not been included in the core project (yet), if someone beats me to them, all the better!

- **No.1 priority -> Better movement with backlash compensation for the stage module**  
The stage in its current implementation is finnicky to assemble, and unpleasant to use...   It is still beter than moving around the stage manually, and it actually works if you just need to move the view around a couple millimeters at low magnification, but that's about it.  Having to gently shake one knob to unbind it after you move the other is not the kind of user experience I had in mind.

- Base alternative with some internal storage or some other solution to store stuff within the cylinder footprint when not in use
- A less basic lighting module with its own light source.
- An advanced lighting module with the possibility to mount a condenser and other amenities.
- Fine focusing on the optical group, or a finer pitch option for the main focusing tube, or both!
- A better phone holder  

## Licensing
(Talk to your kids about sharing culture use before someon else does)
This project is released under Creative Commons BY-SA-NC license.

## Thanks and acknowledgements

Thanks to Maff, who desinged the [Hadley telescope](https://www.printables.com/it/model/224383-astronomical-telescope-hadley-an-easy-assembly-hig) ([Metric version](https://www.printables.com/it/model/268580-hadley-telescope-official-metric-remix)).
Building and using a Hadley has been the inspiration that made me think this might be possible, and the design itself of the microscope is directly inspired by Hadley and the Hadley ecosystem.

Thanks to the Hadley discord community, especially Maff and Baker who encouraged me down this road after seeing the first render that was, at that point, still half a joke in my head.
They also pointed, and accompanied me, to the next chapter of my acknowledgements.

Thanks to the Microscopy discord community, in particular SmarmyNarwal and Blekenbleu who explained many things to me without patronizing even if I was literally an incompetent barging in with ideas.
They helped me understand what I should be aiming for and what challenges I should be aware of.