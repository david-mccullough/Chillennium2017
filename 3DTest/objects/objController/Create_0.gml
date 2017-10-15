/// @description 
#region // Color and Font Macros

#macro C_FOCUS make_colour_rgb(150, 255, 200)
#macro C_TRUE  make_colour_rgb(50, 255, 100)
#macro C_FALSE make_colour_rgb(255, 50, 100)
#macro C_LETEXT c_white

#macro F_DEBUG fntDebug
#macro F_LE fntLevelEditor

#endregion
draw_set_font(F_DEBUG)

#region // Object Name Macros
	
	#region //3D
	//D denotes 3D
	//DS_MAP of identity : object_index
	global.objectMap = ds_map_create();
	global.d3dObjects = ds_list_create();
	
	#macro O_DCRATE		"3dCrate"
	global.objectMap[? O_DCRATE] = obj3D;
	ds_list_add(global.d3dObjects, O_DCRATE);
	#macro O_DGRASS		"3dGrass"
	ds_map_add(global.objectMap, O_DGRASS, obj3D);
	ds_list_add(global.d3dObjects, O_DGRASS);
	#macro O_DTREE		"3dTree"
	ds_map_add(global.objectMap, O_DTREE, obj3D);
	ds_list_add(global.d3dObjects, O_DTREE);
	#macro O_DBUCKET	"3dBucket"
	ds_map_add(global.objectMap, O_DBUCKET, obj3D);
	ds_list_add(global.d3dObjects, O_DBUCKET);
	#macro O_DBARREL1	"3dWoodenBarrel"
	ds_map_add(global.objectMap, O_DBARREL1, obj3D);
	ds_list_add(global.d3dObjects, O_DBARREL1);
	#macro O_DROCKS1	"3dRocks1"
	ds_map_add(global.objectMap, O_DROCKS1, obj3D);
	ds_list_add(global.d3dObjects, O_DROCKS1);
	#macro O_DBUSH1	"3dBush1"
	ds_map_add(global.objectMap, O_DBUSH1, obj3D);
	ds_list_add(global.d3dObjects, O_DBUSH1);
	#macro O_DTALLGRASS1	"3dTallGrass1"
	ds_map_add(global.objectMap, O_DTALLGRASS1, obj3D);
	ds_list_add(global.d3dObjects, O_DTALLGRASS1);
	#macro O_DCANDLE1	"3dCandle1"
	ds_map_add(global.objectMap, O_DCANDLE1, obj3D);
	ds_list_add(global.d3dObjects, O_DCANDLE1);
	#macro O_DCHAIR1	"3dChair1"
	ds_map_add(global.objectMap, O_DCHAIR1, obj3D);
	ds_list_add(global.d3dObjects, O_DCHAIR1);
	#macro O_DTREE1	"3dTree1"
	ds_map_add(global.objectMap, O_DTREE1, obj3D);
	ds_list_add(global.d3dObjects, O_DTREE1);
	#macro O_DBAMBOO1	"3dBamboo1"
	ds_map_add(global.objectMap, O_DBAMBOO1, obj3D);
	ds_list_add(global.d3dObjects, O_DBAMBOO1);
	#macro O_DBAMBOO2	"3dBamboo2"
	ds_map_add(global.objectMap, O_DBAMBOO2, obj3D);
	ds_list_add(global.d3dObjects, O_DBAMBOO2);
	#macro O_DLANTERN1	"3dLantern1"
	ds_map_add(global.objectMap, O_DLANTERN1, obj3D);
	ds_list_add(global.d3dObjects, O_DLANTERN1);
	#macro O_DBLOB1	"3dBlob1"
	ds_map_add(global.objectMap, O_DBLOB1, obj3D);
	ds_list_add(global.d3dObjects, O_DBLOB1);
	#macro O_DBUSH2	"3dBush2"
	ds_map_add(global.objectMap, O_DBUSH2, obj3D);
	ds_list_add(global.d3dObjects, O_DBUSH2);
	#macro O_DGRASSCUT1	"3dGrassCut1"
	ds_map_add(global.objectMap, O_DGRASSCUT1, obj3D);
	ds_list_add(global.d3dObjects, O_DGRASSCUT1);
	#macro O_DCOTTAGE1	"3dCottage1"
	ds_map_add(global.objectMap, O_DCOTTAGE1, obj3D);
	ds_list_add(global.d3dObjects, O_DCOTTAGE1);
	
	#endregion
	
	#region //2D
	global.d2dObjects = ds_list_create();
	
	#macro O_PUDDLE		"Puddle"
	ds_map_add(global.objectMap, O_PUDDLE, objGround);
	ds_list_add(global.d2dObjects,O_PUDDLE);
	
	#endregion
	
	#region //Entity
	global.entObjects = ds_list_create();
	
	//#macro O_PUDDLE		"Puddle"
	ds_map_add(global.objectMap, "notReal", objEntity);
	ds_list_add(global.entObjects,O_PUDDLE);
	
	#endregion
	
	#region //Other
	global.miscObjects = ds_list_create();
	
	//#macro O_PUDDLE		"Puddle"
	ds_map_add(global.objectMap, "awesome", objEntity);
	ds_list_add(global.miscObjects,O_PUDDLE);
	
	#endregion
		
	
#endregion
global.numObjects = ds_map_size(global.objectMap)
ds_list_sort(global.d3dObjects,1);
ds_list_sort(global.d2dObjects,1);
ds_list_sort(global.entObjects,1);
ds_list_sort(global.miscObjects,1);


#region // Level Editor

#macro LOAD_INCLUDED_LEVELDATA false //do NOT touch this -david (keep to false)

global.levelEditorEnabled = false;
ToggleLevelEditor(); // toggle levelEditor on

#endregion

#region // Depth Grid Init

global.depthGrid = 0;
// create grid if not yet created
if !ds_exists(global.depthGrid, ds_type_grid)
{
	global.depthGrid = ds_grid_create(2,0);
}

#endregion

#region // File Directory

#macro DIR_LEVELDATA "LevelData\\"
directory_create("LevelData\\")
if !file_exists("ignore.txt")
{
	var readme = file_text_open_write("ignore.txt");
	file_text_write_string(readme,"hi");
	file_text_close(readme);
}

#macro DIR_STORAGE filename_path("ignore.txt")
show_debug_message("STORAGE DIRECTORY: " + DIR_STORAGE)

if global.levelEditorEnabled && LOAD_INCLUDED_LEVELDATA
{
	if show_question("Do you want to load locally saved level data?" +
	"\n\nWARNING: Selecting No will load level data from included files and will overwrite level data with with files from last time zipLevelData.bat was run.")
	{
		// do nothing
	}
	else
	{
		zip_unzip("levelData.zip",DIR_LEVELDATA)
	}
}
else if LOAD_INCLUDED_LEVELDATA
{
	zip_unzip("levelData.zip",DIR_LEVELDATA)
}

//zip_unzip("BeeChillLogo.zip",DIR_STORAGE)
//global.logo = sprite_add(DIR_STORAGE + "BeeChillLogo.gif",1,false,false,0,0);

#endregion

//if !ds_exists(global.levels,ds_type_list)
global.levels = ds_list_create();
//LoadLevelList();

