# Printing and assembling

The following instructions cover the basic modules, over time some alternatives and mods may become available, so while the basic principles will still apply, it is always a good idea to check wether variants of the various modules have appeared, and how you may want to incorporate them in your build.

In particular your objective will need a specific focus tube lenghts, the DIN standard has a 160 mm tube, the JIS standard has a 170 mm tube. Choose yours accordingly and note that the threaded tube in the STLs are 5 mm shorter but that's correct, the objective holder nut adds the missing 5 mm.

## Printing tips

### Materials

The microscope is not subject to heat (unless something goes horribly wrong with the lighting module or you put something reactive on the stage.

All prototyping has been done in PETG, the extra rigidity and general easier printing of PLA should only improve the results, ABS may be both overkill and introduce some unexpected tolerance issues due to shrinking, I do not recommend it, but I may revise this paragraph if sufficient empyrical results emerge from people trying it none the less.

### Settings

Print with a 0.4 mm nozzle at 0.20 mm layer height.
I used these Settingssuccesfully for the parts with threads as well, but going lower for those cannot hurt if you feel like it.  

A high infill will add to the overall rigidity of the parts, prototyping and testing has been done with 4 walls and 40% infill, you can probably get away with less on the lower modules, but I would nt skimp on the spider, and on any of the gears. 

The STLs are already oriented for printing without supports, but some items like the focus tube and the standoffs do require a brim ulness your bed adhesion is exceptional, so you should add it at your discretion.
The focus tube has a bevel at the extremities, it helps it not to bind towards the bottom of the objective nut, and it will soak up any imperfection as you clena up the brim, but using a deburring tool and doing a clean job is still a good idea.

>[!TIP] 
>Do a couple test prints.  
>Print the objective holder nut and a 40 mm section of the focusing tube using the plane cut function of your slicer to test the thread, stiff is ok (it will wear itself down and you will add some grease where it matters), hard binds on the other hand may be a showstopper.   
>Don't print all at once the parts with nut holes, you don't want to spend half a spool of plastic then discover that your hardware won't fit, the same applies to the pipe holes in the modules. The base module is a good place to start since it has the holes for the pipes, vertical M5 and horizontal M3 nut pits, so you already have a bit of everything.

## Assembling

Each module is assembled separatey, then you can simply stack them along the vertical rods and tighten the screws on the base and spider modules.
You can use one of the rods to "break in" the holes of each module beforehand, so that the stacking will be smoother.

**Unless otherwise noted, all screws are of the SHCS type.** 

### Base

- (Optional) Add the M3 nuts on the bottom, then use M3x8 screws to secure the three TPU feet.  

- (Optional)Fill the cover with something that can act as ballast, sand, fishing leads, shot...     
Glue the walls of the cover and reverse the base upside down on it, wait for the glue to stick, then flip.  

- Slot in the aluminum rods, and secure them with the M5 nuts and M5x12 screws. 

### Lighting (bring your own)

Nothing to do here, just stack it in place.   
You will slide a cellphone here to provide the lighting, either with the torch or with a browser open on `about:blank` to have a dimmable white background.

### Stage

Remove the integrated supports from the slits in the Stage module, use an M5 screw to file the inside of the slits until it passes freely and slides freely across.

- Add M5 nuts in the verticasl slots of the cart.
- Add M3x8 screws in the large holes on the cart, thread them in the plastic, until the head pokes out by a bit less than 1 mm, these will serve as stoppers for the slides, so they must be about the same height but not poke above them.
- Add the clips in the small holes, using the recesses for the nuts on the underside of the cart.
- Insert a span of 4 mm PTFE tube in the slot on the underside of the cart, it will help it slide smoothly. 

- Insert an M5x80 hexagon head bolt in the knobs, or use one locknut and one capnut as shown in the photo.

![Pictures/instructions1.jpg](/Pictures/instructions1.jpg)

- Place the knobs with a washer on each side of the slit in the module body, then tighten a lock nut on the inside by holding it with a wrench as you turn the knob, as shown in the picture, it should be tight enough to hold the knobs in, but free to slide.

![Pictures/instructions2.jpg](/Pictures/instructions2.jpg)

- Towards the end of the knob insertion, align it with the nut in the cart, so that it will be pulled in.  Do not worry if the screw exits inside the cart by about 1 cm, even at los magnifications, it will remain well outside of the field of view and it won't cast a shadow.

### Standoffs

Nothing to do here either, just slide them in place.

### Optical group



### Phone holder

In the current implementation this too is just an add on without any required assemblig, just use the accessory ring on the optical group to adjust to the correct eye relief distance for taking good pictures. 