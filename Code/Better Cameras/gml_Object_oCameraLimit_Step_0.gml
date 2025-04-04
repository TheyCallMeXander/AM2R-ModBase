if (oCharacter.x >= x && oCharacter.x <= (x + areax) && (oCharacter.y - 12) >= y && (oCharacter.y - 12) <= (y + areay)) // flip vertical signs for stretchable (experimental)
{
    oCamera.smoothin = smoothin
    if (oCamera.focus == 0)
    {
        oCamera.focus = 1
        oCamera.focustime = 0
    }
    oCamera.focustime += 1
    if (lockx != 0)
    {
        oCamera.lockx = 1
        oCamera.targetx = lockx
        oCamera.snapx = 0
        oCamera.alarm[2] = 1
    }
    if (locky != 0)
    {
        oCamera.locky = 1
        oCamera.targety = locky
        oCamera.snapy = 0
        oCamera.alarm[3] = 1
        oCamera.lockstop = 1
    }
    oCamera.smoothout = smoothout * 2.5
}
