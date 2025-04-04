// Script and comments by DodoBirb and Xander

// Place in gml_Object_oSolid_Create_0 for best result

var xs, ys, total, stx, sty, incr_x, incr_y, inst, par;
par = object_get_parent(object_index)
if (object_index == oSolid1 || par == oSolid1) // All breakables are children of oSolid, not oSolid1
    exit //so we exit if Object is child of oSolid1, or object is oSolid1 
if (object_index == oMovingSolid || par == oMovingSolid)
    exit // we also exit for oMovingSolid
if ((image_xscale > 1 || image_yscale > 1) && stretched == 0) // check if object is stretched
{
    xs = image_xscale
    ys = image_yscale
    total = xs * ys
    stx = x
    sty = y
    for (incr_x = 0; incr_x < xs; incr_x++) // loop through horizontal layers of blocks
    {
        for (incr_y = 0; incr_y < ys; incr_y++) // loop through vertical layers, making a column per horizontal block
        {
            if ((incr_x + incr_y) > 0) // Skip making new block where the origin block will exist
            {
                inst = instance_create((stx + incr_x * 16), (sty + incr_y * 16), object_index) // Making
                // set image_scales so blocks dont make blocks dont make blocks dont make...
                inst.image_xscale = 1 
                inst.image_yscale = 1
                // set tile delete layer to match original stretched block
                inst.tl1_delete_layer = tl1_delete_layer
                inst.tl2_delete_layer = tl2_delete_layer
            }
        }
    }
    image_xscale = 1 //set scale for origin block
    image_yscale = 1
}
