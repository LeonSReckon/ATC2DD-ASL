// AirBorne troops AutoSplitter Version 1.5.0 4/8/2023
// Pointers, Script, Updates, Remodification <by> ||LeonSReckon||

state("AirborneTroops")
{
	int Load: 	0x25D250, 0x6C, 0x14, 0x1C, 0xC, 0xC, 0xC, 0x27C;
	int Start: 0x27B380, 0x58;
	int Area: 0x0AD064, 0x10;
	int Text: 0x274C7C, 0xA8, 0x8, 0x8, 0x1A0, 0x58, 0x8C, 0x168;
	byte Obj: 0x25D260, 0x1C, 0x1C, 0xC, 0x128, 0x58, 0x44, 0xB14;
}

startup
{
	settings.Add("SpeedRun Type", true, "SpeedRun Type");
	settings.CurrentDefaultParent = "SpeedRun Type";
	settings.Add("Full Game", false, "Full Game");
	settings.Add("IL", false, "IL");
	settings.CurrentDefaultParent = null;

	settings.CurrentDefaultParent = "IL";
	settings.Add("Mission 1", false, "Mission 1");
	settings.Add("Mission 2", false, "Mission 2");
	settings.Add("Mission 3", false, "Mission 3");
	settings.Add("Mission 4", false, "Mission 4");
	settings.Add("Mission 5", false, "Mission 5");
	settings.Add("Mission 6", false, "Mission 6");
	settings.Add("Mission 7", false, "Mission 7");
	settings.CurrentDefaultParent = null;

    // settings.Add("Splits Type", false, "Splits type");
    // settings.CurrentDefaultParent = "Splits Type";
	settings.Add("Area Splits", false, "Area Splits");
    // settings.CurrentDefaultParent = null;

    // Tool Tips
    settings.SetToolTip("SpeedRun Type", "Which type of SpeedRun you want to do");
    settings.SetToolTip("Full Game", "Check if you want to do a Full Game run");
    settings.SetToolTip("IL", "Check if you want to do IL runs");
    // settings.SetToolTip("Splits Type", "Which type of split type you want to use");
    settings.SetToolTip("Area Splits", "Check if you want to use the Area Splits");
    settings.SetToolTip("Mission 1", "Check if you want to run mission 1");
    settings.SetToolTip("Mission 2", "Check if you want to run mission 2");
    settings.SetToolTip("Mission 3", "Check if you want to run mission 3");
    settings.SetToolTip("Mission 4", "Check if you want to run mission 4");
    settings.SetToolTip("Mission 5", "Check if you want to run mission 5");
    settings.SetToolTip("Mission 6", "Check if you want to run mission 6");
    settings.SetToolTip("Mission 7", "Check if you want to run mission 7");
}

start
{
	if(settings ["Mission 1"]){
		if(current.Start == 85 && old.Start != 85){
            return true;
        }
	}

	if(settings ["Mission 2"]){
		if(current.Start == 85 && old.Start != 85){
            return true;
        }
	}

	if(settings ["Mission 3"]){
		if(current.Start == 86 && old.Start != 86){
            return true;
        }
	}

	if(settings ["Mission 4"]){
		if(current.Start == 86 && old.Start != 86){
            return true;
        }
	}

	if(settings ["Mission 5"]){
		if(current.Start == 86 && old.Start != 86){
            return true;
        }
	}

	if(settings ["Mission 6"]){
		if(current.Start == 86 && old.Start != 86){
            return true;
        }
	}

	if(settings ["Mission 7"]){
		if(current.Start == 86 && old.Start != 86){
            return true;
        }
	}

	if(settings ["Full Game"]){
		if(old.Start == 220 && current.Start != 220 || old.Start == 221 && current.Start != 221){
            return true;
			}
		}
}

split
{
	if(settings ["Area Splits"]){
		if(current.Area != old.Area && current.Area != 60 || current.Area == 60 && old.Area == 61){
            return true;
	}

	if(settings ["Mission 1"]){
		if(current.Start == 32 && current.Area == 14){
            return true;
        }
	}

	if(settings ["Mission 2"]){
		if(current.Start == 485 && current.Area == 17){
            return true;
        }
	}

	if(settings ["Mission 3"]){
		if(current.Start == 365 && current.Area == 18){
            return true;
        }
	}

	if(settings ["Mission 4"]){
		if(current.Start == 395 && current.Area == 42){
            return true;
        }
	}

	if(settings ["Mission 5"]){
		if(current.Start == 425 && current.Area == 5){
            return true;
        }
	}

	if(settings ["Mission 6"]){
		if(current.Start == 425 && current.Area == 41){
            return true;
        }
	}

	if(settings ["Mission 7"]){
		if(current.Start == 215 && current.Area == 7){
            return true;
        }
	}

// Last Split On The Last Mission only for Full Game runs
	if(settings ["Full Game"]){
		if(current.Start == 215 && current.Area == 7){
            return true;
			}
		}
	}
}

isLoading
{
	return current.Load == 1;
}

reset
{
	return current.Start == 221 && old.Start != 221 || current.Start == 220 && old.Start != 220;
}
