if (oCharacter.x >= x && oCharacter.x <= (x + areax) && (oCharacter.y - 16) <= y && (oCharacter.y - 16) >= (y + areay))
{
    if (oCamera.focus == 0)
    {
        oCamera.focus = 1
        oCamera.focustime = 0
    }
    oCamera.focustime += 1
    oCamera.locky = 1
    if (oCamera.y >= (y + areay) || (oCamera.y < (y + areay) && oCamera.lockstop == 1))
    {
        oCamera.targety = y + areay
        oCamera.snapy = 0
        oCamera.ratioy = 2
        oCamera.lockstop = 0
        if (oCamera.y > (y + areay) && oCamera.yprevious < (y + areay))
            oCamera.y = y + areay
    }
    oCamera.alarm[3] = 2
    oCamera.smoothout = 15
    oCamera.smoothin = 15
}
