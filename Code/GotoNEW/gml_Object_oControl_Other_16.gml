//Pause Ingame Events



//Copy Surface for oCharacter
if !surface_exists(copysurf)
    copysurf = surface_create(64, 64)
if surface_exists(oCharacter.surf)
    surface_copy(oCharacter.surf, oCharacter.x, oCharacter.y,  copysurf)
else
    surface_free(copysurf)

//Create surface for FadetoBlack
if !surface_exists(fadesurf)
    fadesurf = surface_create(320 * oControl.widescreen_space, 240)

//Set Alarm[6] = 1
alarm[6] = 1
