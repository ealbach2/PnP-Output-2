;setup to move mouse every 800 seconds
settimer, MouseTime2, 800000
return


^#e::Edit


MouseTime2:
MouseMove, 10,0,10, R
MouseMove, -10,0,10, R
return

