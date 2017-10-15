/// @description released behavior

switch(text)
{
	case "Save":
		LevelSave();
		break;
		
	case "Load":
		if show_question("Are you you sure you want to reload your last save?\n\n(All unsaved changes will be lost)")
		{
			LevelLoad(true);		
		}
		break;
		
	case "Resources":
		PanelToggle(objLevelEditor.editPanel,!objLevelEditor.editPanel.uiVisible);
		break;
		
	case "Options":
		PanelToggle(objLevelEditor.optionsPanel,!objLevelEditor.optionsPanel.uiVisible);
		
		break;
		
	default:
		show_debug_message("ERROR: No functionality for button found called " + string(text))
	break;

}


state = buttonState.idle
