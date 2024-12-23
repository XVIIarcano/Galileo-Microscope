# Bill of materials and microscope components

>[!CAUTION]
>This documentation is written by me, a salesman of totally unrelated goods with a degree in Political Sciences.  I write based on my personal experience, opinions, expectations and whatever I could understand from doing my own research.  
Some skilled and awesome pioneers have already completed their own builds with good results but...  

>**...Do your own research too before committing money to this project, no refunds.**

## 3d printed parts

Please read the [Printing and assembling](/Printing_and_assembling.md) file, there are a couple variants to choose from, and some tips about printing, so read it all at least once before you start pushing plastic.

For the sake of the shopping list, one spool of either PLA or PETG (ABS+ has been succesfully used as well) should be enough to complete the project, but printing all in one color the result may look boring, I suggest a two color scheme (one for the structure and another one for the gears and knobs), plus there are the optional TPU feet. 

The only caveat about color selection is that technically the inside of the optical tube should be matte black to avoid bouncing light around, which would cause a halo effect in the view, different colors and conditions may affect the results, but as a measure of caution stay away from canary yellow and glow in the dark filaments.

## Hardware

### Generic hardware

- 3x 20 cm aluminum pipes spans, 12 mm diameter.  
Wood or other materials would also work, as long as the material is rigid and the diameter is correct.

- 6x M5x12 SHCS screws and nuts for locking the pipes

- 2x M5x80 hexagon head bolts, 2x M5 lock nuts and 4x M5 washers for the stage movement.  You can also use M5 threaded rod 90 mm length instead of the bolts, but you will need 2 more locknuts and 2x M5 cap nuts, having done it, I do not recommend it.

- 3x M3x30 SHCS screws and M3 nuts for the anti backlash ring

- 2x M3x12 or M3x8 SHCS screws for the slide backers

- 3x M3x8 SHCS screws and M3 nuts for the TPU feet (optional)

- Superlube grease or similar, oil may or may not work, I think grease is better and easier to manage, you will have to glue parts next to greased surfaces, so it would be better if it doesn't spill.

- Superglue, there is debate on wether cyanaclrilate sticks to PETG, experiment if needed, but it is not dramatic if it fails.

- A bit of oven paper or similar, or a 25 mm diameter disk of 3 mm frosted acrylic if you are feeling dapper. This will cover the hole between stage and illumination.

### 3D printing related hardware

- PTFE tube (Bowden), 4 mm diameter, about 22 cm (optional, but used to allow the stage to slide around better), it will be finnicky to place it afterwards so I do recommend installing it from the start.

- 3x 8x20 mm bed leveling springs, the generic yellow ones.  
These also exist in 25 mm version, they may work as well, just precharge the anti backlash ring one less turn, it will eat 5 mm of travel to your focuser, wether this is a problem depends on your objectives, I don't have data to tell. 
Do note that if your springs remain 5 mm longer, you will also need M3x35 screws instead of M3x30.

### Microscope specific hardware

- at least one objective, with standard RMS thread, if in doubt start with a 4x one

- at least one eyepiece, 23.2 mm tube diameter (careful, 30 mm tubes exist), if in doubt start with a 10x eyeglasses friendly

- a pair of stage clips, the standard type which comes with M3 screws for installation  

- a pack of slides and cover slips

![/Pictures/cheap_objective.png](/Pictures/cheap_objective.png) ![/Pictures/cheap_eyepiece.png](/Pictures/cheap_eyepiece.png) ![/Pictures/Clips.png](/Pictures/Clips.png) ![/Pictures/slides.png](/Pictures/slides.png)  
_These are not intrinsecally good, just what I started with, and worked, that said here are the amazon links for the very same I used (Amazon Italy tho')..._

[Objective](https://www.amazon.it/dellobiettivo-obiettivi-acromatici-microscopio-biologico/dp/B07XRMMBRK/ref=sr_1_1_sspa?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2NY08BKFBANIX&keywords=microscopio+lente+4x&qid=1706975572&s=industrial&sprefix=microscopio+lente+4%2Cindustrial%2C176&sr=1-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1)
[Eyepiece](https://www.amazon.it/Oculare-microscopio-WF002-G-grandangolare-regolabile/dp/B07NMLYC6X?pd_rd_w=Eui6O&content-id=amzn1.sym.96d1abda-aa11-4f46-aefd-d454143536ea&pf_rd_p=96d1abda-aa11-4f46-aefd-d454143536ea&pf_rd_r=RD4ZGR5EZV3XMWFMR19E&pd_rd_wg=lnUyw&pd_rd_r=a92d7860-4b5e-419b-b774-faf18eb14be3&pd_rd_i=B07NMLYC6X&psc=1&ref_=pd_bap_d_grid_rp_0_1_ec_ppx_yo2ov_dt_b_bia_item_t)
[Clips](https://www.amazon.it/unknows-portacampionatore-sconosciuti-Inossidabile-Applicazioni/dp/B0987PYLYM/ref=sr_1_4?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=EGTPWBC62ILR&keywords=clip+microscopio&qid=1706975423&s=electronics&sprefix=clip+microscopio%2Celectronics%2C160&sr=1-4)
[Slides](https://www.amazon.it/Huarew-microscopio-pre-puliti-contagocce-plastica/dp/B08Y75VR5Y/ref=sr_1_2_sspa?keywords=vetrini+microscopio&qid=1706975855&sr=8-2-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1)

### Tools

- Allen keys matching the screw heads

- an open wrench matching the M5 lock nuts

- Metal saw for the aluminum tube

- having Sandpaper (or a dremel) around never hurts, but it should not be necessary. 

## Considerations about lenses

The microscope has been designed and tested around cheap optics from Amazon, using better components will definitely make a difference but if you are in doubt wether to commit money to this project, there is no shame in starting cheap like I did (self absolutory? You bet I would be!).  

Here is an example of what 25,00 Euros of glass can do already (4x objective 10x eyepiece, no brand off Amazon).

![Pictures/example.jpeg](/Pictures/example.jpeg)![Pictures/example-crop.png](/Pictures/example-crop.png)

The small notches are 0.01 mm, meaning that your average tardigrade would be as wide as the medium nothces.

The downside of these cheap lenses is that the optical design itself has some intrinsic shortcomings.

The focus plane is not straight, a phenomenon called field curvature, as a result if the center of the scene is in focus, the outes parts will not be, you may see something with the corner of your eye, and then have to move the stage and center it in order to get a good sharp view. 

They also lack any sophisticated optical coating, meaning that they will be more susceptible to things like chromatic aberrations (funny halos around bright and high contrast edges), and reflections.

That said, it is like using a cheap camera fom years past, it is not that the pictures didnt't turn out, just that they could have looked better, especially in challenging scenes, than newer or more expensive equipment.

If you want to know more about why certain lenses can come with a big price tag (and therefore what you can expect out of those which are cheap), I recommend you [this page on the Edmund Optics website](https://www.edmundoptics.com/knowledge-center/application-notes/microscopy/understanding-microscopes-and-objectives/).

If you are reading this, I'm afraid that like me we may not be their target customer, but their page is very comprehensive and informative none the less, if a bit technical. 

In my research, it has been the most useful, as they provide a detailed explanation of the nomenclature of microscope lenses. The various concepts they illustrate will be extremely useful when you have to do your shopping, so I wholehartedly recommend investing half an hour in reading their materials.
