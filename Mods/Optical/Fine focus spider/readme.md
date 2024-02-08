# Fine focusing stage

![/Mods/Optical/Fine%20focus%20stage/render.png](/Mods/Optical/Fine%20focus%20stage/render.png)

This modified spider assembly allows a focuser movement of about 0.6 mm, moving the control lever over the span of about 75°.

Mechanically, this is achieved by sliding a disk with sloped surfaces in order to lift the entire main focuser mechanism by a small bit, while springs in the three corners keep the system under tension and prevent binding.

For reference, the available fine focusing range corresponds to 1/6th of a turn of the coarse focusing wheel using the default 3.8 mm pitch thread.  
If you do the math, you will see that we are talking about similar vertical travels over similar angles.  
However, moving the main focusing knob with precision by less than 1/6th of a turn is  more difficult than nudging the fine focuser lever in equally small increments.  
In addition, you can use a longer or shorter screw (within reason), to multiply and adjust to taste the linear horizontal travel corresponding to the same swept angle. 

You may also modify the CAD file to increase or decrease the slope and get a different movement range (again, within reason).
Note that the 0.6 mm vertical movement is achieved out of the available travel of a 1 mm step sloping over 120°, so you may need to do some calculation to get the exact effective range you want from the 75° actual available movement.
I also recommend adjusting in multiples of the layer height you are going to print with.


## Bill of Materials

**This mod only changes the spider of the standard focuser, please refer to the general BOM and instructions for the common parts, below is only what you will need specifically for this mod.**

- One set of printed parts, printed using the same settings as the rest of the microscope.
The "Paper Template" file is not really needed if all goes well, don't print it unless you have trouble with your PTFE tube.

- 3x 8x20 mm springs, same as those used in the standard focusing knob, but if you use longer ones they will just poke out, it may even get a steampunk vibe.

- 3x M3x40 mm SHCS screws and M3 nuts 

- 1x M3x50 mm SHCS screw, one M3 nut and optionally 1x M3 lock nut.    
>This is used as the lever shaft and can be replaced with one a bit shorter or longer. Experiment to taste considering also that you can adjust the final lever lenght by how much you will screw it in. The ideal screw is the one that sticks out the right amount for you after having bottomed out its seat in the rotor.

- 4mm diameter PTFE tube (bowden), about 55 cm for the basic version, 90 cm if you choose the PTFE lined nacelle.  
>I highlky recommend using plane cut in the slicer to print a test section of the spider, to verify the fit of your PTFE tube, if it doesn't you have a couple of options, jump to the bottom of this file.

- 3x M5x12 SHCS screws and nuts for locking the pipes (if you upgrade an existing spider you will recycle these).

>[!NOTE]
>The nacelle with PTFE groves may already improve the sliding of the disk, even if you don't actually add PTFE, as it would still have about 1/3 the contact surface.

## Assembling

![/Mods/Optical/Fine%20focus%20stage/section.png](/Mods/Optical/Fine%20focus%20stage/section.png)

- Remove the sacrificial layers from the three corners of the spider body, closing the nut slots in the bottom. Punch through them with an M3 screw and clear any burrs.

- Insert six spans of PTFE tube in the grooves of the spider body, they will provide an even slope instead of the inevitable "stairs" effect of the printed layers.   The tube should snap fit in the slot, push it one section at a time pressing down with the handle of a spoon going around the circle, cut off the excess when you get close to the end, cut as close as possible to the end of the groove, but avoid longer ends bumping and pushing out.

- Insert the M3 nut in the rotor (it goes in flat side down, unlike corner down as usual) and the M3x50 screw in the knob, then join them. As already mentioned the screw should bottom out in the pit which goes all the way trough the width of the rotor, but you can adjust it to taste or experiment with a different screw. You can also use an M3 locknut below the knob, to prevent it from sliding on the screw during use.

- If you have chosen the PTFE lined nacelle, this is the moment to insert the PTFE tubes in the bottom grooves.

- Apply grease to all mating surfaces, especially the central cylinder between rotor and spider, and the three vertical posts where nachelle and spider slide.  Place the rotor in the cradle of the spider body, followed by the nacelle. Make sure the rotor spins freely against both, and if in doubt add some grease, you can always clean up the excess once it is done.

>[!TIP]
>This is when you have to decide where you want the lever to point in relation to the microscope. Having it in front initially made sense to me but in practice I did not find it very comfortable, try placing it at the back right or back left depending on wether you are right handed or left handed, it is actually more natural as you keep your hands around the microscope, and you can control the movement by grabbing the spider and moveing the knob with the palm of your hand and vice versa.

- Drop the springs in the pits on the three corners, then the spring retainers. Use M3x40 and nuts the pits on the bottom of the spider to keep everything together. 

- Adjust the precharge of the springs, they must be just barely compressed, and they must press down evenly.  This means that unlike what appears in the render, the spring retainers may stick almost completely out, and the nut in the bottom may not engage for their full thread. If you have troubles finfing the sweetspot you may consider switching to M3x50 screws. Replacing the printed retainers with M3 washers will also shave a millimeter.      

- Proceed with the assembling of the other components and installation on the pipes, same as the standard optical module.

## PTFE whoes, and the paper trick

While putting together the prototype, I have found that the latest PTFE tube I bought was a bit larger and a bit stiffer than the one I got previously. It would not fit despite the grooves being the same dimensions as that on the bottom of the stage cart, and other projects in which the old pack of PTFE went just fine.  

Designing around all possible variations in PTFE quality is unfortunately a fool's errand, but I did make the grooves a bit more generous, since having some clearance would not be a dealbreaker in case you happen to have a smaller tube brand, while having the grooves too tight will be an issue.

If the PTFE tube you have on hand still does not fit, you have the following options.

1. Modify the CAD, there are two parameters PTFE_diameter and PTFE_poke that adjust the diameter and how much the tube rises out of the surface.

2. Try another brand, results are not guaranteed and it costs money, but it is an option.

3. The oven paper trick, weird but tested. Use the paper template file to print a donut shaped template, and use it to cut out some disks of oven paper. Stack them with some grease between spider and rotor in place of the PTFE tubes, experiment how much is enough, and how much is too much. While not ideal, oven paper does even out the printed layers and allow a smoother operation than just running the bare surfaces against each other.