#Requires AutoHotkey v2.0
#MaxThreadsPerHotkey 2
SetDefaultMouseSpeed(0)

F12::
{
    static bFlag := false
    bFlag := !bFlag
    startTime := A_TickCount
    while bFlag && (A_TickCount - startTime <= 60000)
    {
        MouseClick("left", 2060, 1080)
        Sleep(10)
    }
    bFlag := false
}
return
