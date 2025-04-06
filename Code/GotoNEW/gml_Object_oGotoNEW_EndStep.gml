var height, width;
height = image_yscale * 16
width = image_xscale * 16
if ((image_xscale > 1 && oCharacter.y <= y && oCharacter.y > (y + height + 8)) || (image_yscale > 1 && oCharacter.x >= x && oCharacter.x < (x + height) && global.spectatorIndex == -1))
{
    global.targetx = targetx
    global.targety = targety
    camstartx = global.targetx
    camstarty = global.targety
    if (image_xscale > 1)
    {
        global.offsetx = oCharacter.x - x
        global.offsety = 0
    }
    if (image_yscale > 1)
    {
        global.offsetx = 0
        global.offsety = oCharacter.y - y - height
    }
    if (global.widescreen_enabled != oControl.widescreen)
        oControl.widescreen_switch = 1
    oControl.mod_previous_room = room
    Mute_Loops()
    StopAmbLoops()
    oCharacter.x = targetx
    oCharacter.y = targety
    global.camstartx = camstartx
    global.camstarty = camstarty
    oCamera.x = global.camstartx
    oCamera.y = global.camstarty
    room_goto(targetroom)
}
