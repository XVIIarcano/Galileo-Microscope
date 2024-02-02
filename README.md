# GALILEO Modular Microscope

![Pictures/render.PNG](/Pictures/render.PNG)

## Galiwhat?

This project is about an affordable, expandable and customizeable microscope based around basic hardware, 3d printing, and the few specific microscope components that cannot be worked around.
It started with a father without technical or academic knowledge whatsoever wanting to show micro-critters to his daughter, so the aim is fist and foremost to provide an enjoyable experience exploring small stuff for hobby or home use.

While Galileo is expandable, its core design prioritizes simplicity and affordability.  
I measure the success of this project on the fun you will have building it and using it, **especially** if it will be just a stepping stone for more advanced instruments and projects.

I hope to improve and expand on this project, and I would be thrilled to see other people picking up and modding it.
If you are looking for a DIY microscope already designed from the ground up to be a high end solution, with a vast selection of upgrades and configurations addressing a variety of scientific needs, have a look at the [PUMA project](https://github.com/TadPath/PUMA)

That said, it works, including the stage movement despite ample margins of improvement, and I hereby summon **The Rotifer Of Proof!**

![Pictures/Rotifer_of_proof.PNG](/Pictures/Rotifer_of_proof.gif)

Curious? Enthusiastic? Need to ~insult me~ _politely question my design choices_?
[**Join us on Discord**](https://discord.gg/2NHQUmsnHg)

## Basic modules

The main feature of this microscope is having each of the core functions carried out by a separate module, that exist independently and can be modded, customized and combined freely.
The basic configuration consists of the following modules and the [Printing and assembling](/Printing_and_assembling.md) file contains instructions and tips to put them together:

- **Base** 
- **Lighting (bring your own)** 
- **Stage** 
- **Standoffs**
- **Optical group** 
- **Phone holder (optional, but you will want to brag)** 

## Materials

The [BOM and components](/BOM_and_components.md) file contains a list of the necessary materials and some considerations about lenses and other accessories you will need.
I'll try to keep things synchronized but buy some extra nuts and screws ;) 

In general, you will need:

- M3 and M5 screws of different lenghts, and nuts to suit
- about 60 cm of 12 mm diameter pipe
- Some 3d printer spare parts like bed leveling springs and bowden tube.
- At least one objective, one eyepiece, and some other off the shelf microscope accessory


The objective is to keep the project lean and possibly cheap, your pricing may vary but for your reference the first functional prototype costed less than 80,00 Euros in hardware, plus the printed parts. 
Of course, if you want to bling it out you can, as with all things, but it would sort of miss the point.

## Modifications and accessories

The Mods folder is open to anyone who has something to contribute to the project.
Entries should be tested in real life, and include a readme file with any necessary information, instructions and bill of materials (don't take things for granted, remeber that this project is not meant for experts).

Simple variants, such as longer standoffs, or different tolerances on the optical tube thread, can be just generated from the CAD.
Please just notify me if you need them, I will generate them and add the STLs accordingly, no need to reinvent the wheel.

## Core specification
The core of the structure is formed by the three vertical rods of 12 mm diameter, in an equilateral triangle arrangement of 140 mm diameter (between the centers), with an external perimeter of another 10 mm all around, making the base module diameter 160 mm.
That's about it, there is no limit on how tall each "layer" should be, on the number of layers, nor on the lenght of the vertical rods, so if you have an idea for a particular lighitng setup, a finer stage module, or something else entirely, all you should do is fit it in a 160 mm diameter cylinder shape (minus the space for the rods).

![Pictures/Base.png](/Pictures/Base.png)

## Wishlist and known issues

Below is a small list of things I would like to see, but have not been included in the core project (yet), if someone beats me to them, all the better!

- **No.1 priority -> Better movement with backlash compensation for the stage module**  
The stage in its current implementation is finnicky to assemble, and unpleasant to use...   It is still beter than moving around the stage manually, and it actually works if you just need to move the view around a couple millimeters at low magnification, but that's about it.  Having to press one knob as you move the other, or shake them when they bind (when, not if) is not the kind of user experience I had in mind.
That said, the system is enough to follow small critters around so I did not consider it a deal breaker for releasing the project.

- Base alternative with some internal storage or some other solution to store stuff within the cylinder footprint when not in use
- A less basic lighting module with its own light source.
- An advanced lighting module with the possibility to mount a condenser and other amenities.
- Fine focusing on the optical group, or a finer pitch option for the main focusing tube, or both!
- A better phone holder  

## Licensing

![/Pictures/Creative_Commons.png](/Pictures/Creative_Commons.png)  
This work is licensed under a Creative Commons (4.0 International License)  
[Attribution—Noncommercial—Share Alike](https://creativecommons.org/licenses/by-nc-sa/4.0/)

### Thanks and acknowledgements

Thanks to Maff, who desinged the [Hadley telescope](https://www.printables.com/it/model/224383-astronomical-telescope-hadley-an-easy-assembly-hig) ([Metric version](https://www.printables.com/it/model/268580-hadley-telescope-official-metric-remix)).
Building and using a Hadley has been the inspiration that made me think this might be possible, and the design itself of the microscope is directly inspired by Hadley and the ecosystem of mods that grew around it.

> **Fun Fact**  
>_While I was looking for a name to this project, I found out that Italian scientist Galileo Galilei is credited with the idea of [reversing a telescope and using it as a microscope](https://en.wikipedia.org/wiki/Galileo_Galilei#Engineering), and that his first composite microscope design is [a vertical tube resting on three thin metal legs](https://catalogue.museogalileo.it/object/CompoundMicroscopeGalilean.html)... apparently the name had found me._ 

Thanks to the [Hadley discord community](https://discord.gg/DD3vHDNDjg), especially @Maff, @Baker and @Marci who encouraged me down this road after seeing the first render that was, at that point, still half a joke in my head.
They also pointed, and accompanied me, to the next chapter of my acknowledgements.

Thanks to the [Microscopy discord community](https://discord.gg/zGW95BwCy4), in particular @SmarmyNarwal and @Blekenbleu who explained many things to me without patronizing even if I was literally an incompetent barging in with ideas.
They helped me understand what I would be aiming for, what challenges I should prioritize, and how far the mark still is.