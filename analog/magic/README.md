# OpenDVS layout  

## Files
* [extfiles](./extfiles/) directory for extraction files  
* [pixel.mag](./pixel.mag) test file for pixel layout  
* [pixel.spice](./pixel.spice) extracted SPICE netlist from [pixel.mag](./pixel.mag)  
* [flatpixels.mag](./flatpixels.mag) flattened test structures for schematic extraction  
* [flatpixels.spice](./flatpixels.spice) extracted SPICE netlist from [flatpixels.mag](./flatpixels.mag)  
* [mimcap.mag](./mimcap.mag) test file for MIMCAP layout  
* [wires.mag](./wires.mag) interconnect wires for pixel

## Notes    
  
### Pixel layout  
The design of the pixel is layout driven  

* by available space for a pixel  
* by the row and column wires connecting the pixels  
* by making sure the photosensor is  
    * shielded by the sides  
    * not getting covered by fill metal  

### MIMCAP  
The [minimum MIMCAP feature size](https://skywater-pdk.readthedocs.io/en/main/rules/assumptions.html#minimum-critical-dimensions) of 2&mu;m without contacts prevents a matched MIMCAP array, but two MIMCAPs with appropriate size ratio will fit  

### Wires  
The position, layer, width, and spacing of the wires connecting the pixel is an important design constraint that needs to be coordinated with the periphery of the pixel array.    
  
Tentatively, a first stab at [wires.mag](./wires.mag) uses minimum width and spacing metal1 and metal2 wires. This is probably **not** a good idea, but a first basis of discussion.  
