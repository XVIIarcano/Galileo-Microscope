# Printing and assembling

The following instructions cover the basic modules, over time some alternatives and mods may become available, so while the basic principles will still apply, it is always a good idea to check wether variants of the various modules have appeared, and how you may want to incorporate them in your build.

In particular your objective will need a specific focus tube lenghts, the DIN standard has a 160 mm tube, the JIS standard has a 170 mm tube. Choose yours accordingly and note that the threaded tube in the STLs are 5 mm shorter but that's correct, the objective holder nut adds the missing 5 mm.

>[!NOTE]
>The bill of materials and some considerations about lenses and other accessories can be found in the [BOM and components](/BOM_and_components.md) file. 

## Printing tips

### Materials

The microscope is not subject to heat (unless something goes horribly wrong with the lighting module or you put something reactive on the stage).

All prototyping has been done in PETG, the extra rigidity and general easier printing of PLA should only improve the results, ABS may be overkill but it has been tested succesfully(Esun ABS+ specifically, thanks discord @roo) and it did not introduce any unexpected tolerance issues due to shrinking, so I can remove the previous warning about it.

As mentioned in the [BOM and components](/BOM_and_components.md) file, prefer a matte black material for the optical tube for the best optical performance.

### Settings

Print with a 0.4 mm nozzle at 0.20 mm layer height.
I used these Settings succesfully for the parts with threads as well, but going lower for those cannot hurt if you feel like it.  

A high infill will add to the overall rigidity of the parts, prototyping and testing has been done with 4 walls and 40% gyroid infill, following the Voron recommended settings I already had a profile for. You can probably get away with less on the lower modules, while I would not skimp on the spider, as on any of the gears. 

The STLs are already oriented for printing without supports, but some items like the focus tube and the standoffs do require a brim ulness your bed adhesion is exceptional, so add it at your discretion.
The focus tube has a bevel at the extremities, it helps it not to bind towards the bottom of the objective nut, and it will soak up any imperfection as you clean up the brim, but using a deburring tool and doing a clean job is still a good idea.

>[!TIP] 
>Do a couple test prints.  
>Print the objective holder nut and a 40 mm section of the focusing tube using the plane cut function of your slicer to test the thread, a little stiff is ok (it will wear itself down and you will add some grease where it matters), hard binds on the other hand may be a showstopper.   
>Don't print all at once the parts with nut holes, you don't want to spend half a spool of plastic then discover that your hardware won't fit, the same applies to the pipe holes in the modules. The base module is a good place to start since it has the holes for the pipes, vertical M5 and horizontal M3 nut pits, so it already has a bit of everything.

## Assembling

Each module is assembled separatey, then you can simply stack them along the vertical rods and tighten the screws on the base and spider modules when you are done.
You can use one of the rods to "break in" the holes of each module beforehand, so that the stacking will be smoother.

**Unless otherwise noted, all screws are of the SHCS type.** 

### Base

- (Optional) Add the M3 nuts on the bottom, then use M3x8 screws to secure the three TPU feet.  

- (Optional) Fill the cover with something that can act as ballast, sand, fishing leads, shot...     
Glue the walls of the cover and reverse the base upside down on it, wait for the glue to set, then flip.  

- Slide in the aluminum rods, and secure them with the M5 nuts and M5x12 screws. 

![Pictures/instructions%20base.png](/Pictures/instructions%20base.png)

### Lighting (bring your own)

Nothing to do here, just stack it in place.   
You will slide a cellphone here to provide the lighting, either with the torch or with a browser open on `about:blank`, which will give you a nice and dimmable white background.

Having this module open towards the front is handy, but it may bump against the stage movement knob, so you may consider rotating the module to open at the rear left instead.

### Stage

>[!NOTE]
>The stage module has integrated supports in the slits where the knob axles will travel, remove them and use an M5 screw to file the inside of the slits until it slides freely from one side to the other.

Add M5 nuts in the verticasl slots of the cart.

Add M3x8 screws in the large holes on the cart, thread them in the plastic, until the head pokes out by about 1 mm, these will serve as stoppers for the slides, so they must be about the same height but don't need to be taller.

Add the clips in the small holes, using the recesses for the nuts on the underside of the cart.

Insert a span of 4 mm PTFE tube in the slot on the underside of the cart, it will help it slide smoothly.   The tube should snap fit in the slot, push it one section at a time pressing down with a spoon going around the circle, cut off the excess when you get close to the end, cut as close as possible to get a seamless ring, but avoid the two ends bumping into each other and pushing out. 

![Pictures/instructions%20stage.png](/Pictures/instructions%20stage.png)

Insert an M5x80 hexagon head bolt in the knobs.  

Place the knobs with a washer on each side of the slit in the module body, then tighten a lock nut on the inside by holding it with a wrench as you turn the knob, as shown in the picture, it should be tight enough to hold the knobs in, but free to spin and slide side to side (as soon as you use it, you will get a feeling of how tight they should be - not much actually - and you can adjust to taste)

Towards the end of the knob insertion, align it with the nut in the cart, so that it will be pulled in.  Do not worry if the screw exits inside the cart by about 1 cm, even at low magnifications, it will remain well outside of the field of view and it won't cast a shadow.
![Pictures/instructions%20stage%20detail](/Pictures/instructions%20stage%20detail.png)
![Pictures/instructions2.jpg](/Pictures/instructions2.jpg)

>If you have trouble finidng the M5x80 bolts, you can use one locknut and one capnut at the end of the threaded rod in the knob, but it is not recommended as they will want to come loose while you tighten the other locknut.


Glue the diffuser ring to a sheet of oven paper, and cut out the excess, you can put this in the slot on the floor of the stage module to prevent wet samples from dripping in the illumination stage.
You can use a 3mm disk of acrylic if you have any around, it will do a much better job and look nicer too, but I would not go buy a sheet just for this.

### Standoffs

Not much to see here either, if you opt for the plain standoffs just slide them in place.
The default size of 80 mm should be a good starting point but you can cut them shorter or stretch them taller directly in the slicer.

There is also a threaded version with an accessory ring and a simple phone holder, which will allow you to use the phone as a reflected light source ("light from above" in plain english). 
You can use the accessory ring to rise or lower the phone along the shaft, or to clamp the holder down at the bottom, you can even add two rings one above and one below.

If your phone doesn't fit, or you wish to develop something else based on this, you can use the source file in the [CAD](/CAD) folder to edit as needed (this is true of the whole project by the way)

### Optical group

>[!NOTE]
>The focus knob has a sacrificial layer at the bottom of the spring wells to allow proper printing without supports. Punch trough them with an M3 screw, and make sure that all the burrs come off.

Assemble the objective in the objective holder, the nut has RMS threads on it but it is unlikely that your printer can resolve them correctly, they will help guide the operation, but you will be actually threading the plastic with the metal of the objective. Do it nice and slow, and pay attention to go straight. If you have more than one objective, it may be a good idea to just print multiple nuts and leave each objective on its own.

Test fit the eyepiece in  the optical tube, you can sand the inside or wrap some tape around the eyepiece shaft to adjust the fit (or modify the CAD...).

Apply a little bit of grease on the sloped sides of the collar of the spider, and insert the split ring on it.

Insert M3 nuts in the holes on the bottom side of the focusing knob, then slide it over the split ring (do this upside down, or the nuts will fall off!), the knob should compress the split ring and snap fit on it.
You should eventually glue the knob to the split ring, but donìt do it just yet, at the end of the assembling, after you check that all is ok, you can make this mating final by applying glue on the flat surface of the split ring and pressing he knob down (do not exagerate and be careful, you do not want any glue to end up between split ring and spider body and cause a jam).

Add some grease on the central and upper part of the optical tube, avoid greasing the extremity where the objective nut will be, it is ok if that is a bit stiffer, while all other rings have to turn as smooth as possible the nut has to stay in place.

Insert the tube in the spider from below, rotating the focusing knob as soon as it catches the threads on the tube so that you can draw it up. Be careful, the knob is not glued to the ring yet and there are no screws preventing the nuts inside from being dislodged if it lifts.

![Pictures/instructions%20optical](/Pictures/instructions%20optical.png)

Insert the springs in the holes on top of the knob, then add the anti backlash ring, tighten it down until it compresses the springs. A couple millimeters clearance should remain between the two rings, there are two sets of holes on the backlash ring so that you can adjust it in half a turn increments, you can change this later based on your preference.

Use M3x30 screws trough the backlash springs and down to the nuts in the focus ring to secure the assembly together, do not overtighten the screws, and make sure the backlash ring is not tilted.

![Pictures/instructions%20optical%20detail](/Pictures/instructions%20optical%20detail.png)

Test the assembly a few times, any stiffness should break in soon as the surfaces wear a little and the grease spreads.
If you are happy with the results, you can now push the optical tube up, this will detach the focus knob from the split ring, but the nuts are now secure, so you can add the glue and press it back down.   

>[!TIP] 
>You do not really need to glue the knob down, the microscope is actually perfectly useable also with the knob just pressed together, in use, you may occasionally experience it pushing up, but it is no big deal, so you can take your time testing, adding (or cleaning off) grease, etc...

Add the accessory ring on the top of the focus tube, followed by the eyepiece, and the objective ring on the bottom.

You can now install the asembly on the lower part of the microscope.

### Phone holder

Print the main body, and an insert to suit the clearance between the body and your specific eyepiece, the insert just slides in, as you can have more than one for different eyepieces. Install the phone holder by sliding it on the eyepiece, and use the accessory ring on the optical tube to move the support higher or lower based on the eye-relief distance of your eyepiece. **Note that you may have to plane cut or extend the inserts to the length of your eyepiece as well** 

If your holder wobbles because none of the pre-generated sleeves fits right on your eyepiece, you can use the source file in the [CAD](/CAD) folder to generate a custom size.

This type of holder is handy because you just lean the phone on it but it may be too small for your phone, be careful.  
If your phone is too large, instead of printing some sort of larger dish you may prefer a different solution like [this one](https://www.printables.com/model/629333-ocular-phone-mount) or [this one](https://www.openocular.com/designs)
