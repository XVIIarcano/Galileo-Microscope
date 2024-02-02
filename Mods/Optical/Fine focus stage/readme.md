# Fine focusing stage

>[!WARNING]
>**This mod has not yet been fully tested by me, test at your risk**

![/Mods/Optical/Fine%20focus%20stage/render.png](/Mods/Optical/Fine%20focus%20stage/render.png)

This modified spider assembly allows a movement of about 0.6 mm moving the control lever over the span of about 75°.

For reference, it corresponds to 1/6 of a turn of the coarse focusing wheel using the default 3.8 mm pitch thread.
You can modify the CAD file to increase the slope and get a different movement range, within reason.

Mechanically, this is achieved by sliding a disk with sloped surfaces in order to lift the entire main focuser mechanism, while springs in the three corners keep the system under tension and prevent binding.

## Bill of Materials

**This mod only changes the spider of the standard focuser, please refer to that BOM and instructions for the common parts, below is only what you will need specifically for this mod.**

- One set of printed parts, printed using the same settings as the rest of the microscope

- 3x 8x20 mm springs, same as those used in the standard focusing knob

- 3x M3x40 mm SHCS screws and M3 lock nuts

- 1x M3x50 mm SHCS screw, one M3 nut and 2x M3 locknuts    

- 4mm diameter PTFE tube (bowden), about 55 cm for the basic version, 90 cm if you choose the PTFE lined nacelle.

- 3x M5x12 SHCS screws and nuts for locking the pipes (if you upgrade an existing spider you will recycle these).

>[!NOTE]
>The M3x50 is used as the lever shaft and can be replaced with one a bit shorter or longer, but it is not recommended. With a shorter screw you may not be able to bottom it out, reducing the rigidity of the system, or you may limit the available travel as the knob will bump in the spider (and removing the knob altoghether would be barbaric); with a longer screw you may get finer control as the horizontal travel per vertical displacement increases, but if you exagerate you may again introduce some flex in the system as well (it would also stick out as a sore thumb).
>The nacelle with PTFE groves may already improve the sliding of the disk, even if you don't actually add PTFE, as it would still have about 1/3 the contact surface. 

## Assembling

![/Mods/Optical/Fine%20focus%20stage/section.png](/Mods/Optical/Fine%20focus%20stage/section.png)

- Remove the sacrificial layers from the three corners of the spider body, closing the nut slots in the bottom. Punch through them with an M3 screw and clear any burrs.

- Insert six spans of PTFE tube in the grooves of the spider body, they will provide an even slope instead of the inevitable "stairs" effect of the printed layers.   The tube should snap fit in the slot, push it one section at a time pressing down with a spoon going around the circle, cut off the excess when you get close to the end, cut as close as possible to the end of the groove, but avoid longer ends bumping and pushing out. 

- Insert the M3 nut in the rotor (it goes in flat side down, unlike corner down as usual) and the M3x50 screw in the knob, then join them. Make sure the screw bottoms out in the pit which goes all the way trough the depth of the rotor.

- If you have chosen the PTFE lined nacelle, this is the moment to insert the PTFE tubes in the bottom grooves.

- Place the rotor in the cradle of the spider body, followed by the nacelle. Make sure the rotor spins freely against both, and if in doubt add some grease especially in the pit between spider and rotor, where it won't risk getting in your hands during use anyways.

- Drop the springs in the pits on the three corners, then the spring retainers. Use M3x40 and locknuts in the pits on the bottom of the spider to keep everything together. 

- Adjust the precharge of the springs, they must not be too compressed, and they must press down evenly.  

- Proceed with the assembling of the other components and installation on the pipes, same as the standard optical module.

>[!TIP]
>This is when you have to decide where you want the lever to point in relation to the microscope. Having it in front initially made sense to me but in practice I did not find it very comfortable, try placing it at the back right or back left depending on wether you are right handed or left handed, it is actually more natural as you keep your hands around the microscope. 

