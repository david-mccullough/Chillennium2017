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
	ds_map_add(global.objectMap, O_DCRATE, obj3D);
	ds_list_add(global.d3dObjects, O_DCRATE);
	#macro O_DGRASS		"3dGrass"
	ds_map_add(global.objectMap, O_DGRASS, obj3D);
	ds_list_add(global.d3dObjects, O_DGRASS);
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
	#macro O_DBUSH2	"3dBush2"
	ds_map_add(global.objectMap, O_DBUSH2, obj3D);
	ds_list_add(global.d3dObjects, O_DBUSH2);
	#macro O_DGRASSCUT1	"3dGrassCut1"
	ds_map_add(global.objectMap, O_DGRASSCUT1, obj3D);
	ds_list_add(global.d3dObjects, O_DGRASSCUT1);
	#macro O_DCOTTAGE1	"3dCottage1"
	ds_map_add(global.objectMap, O_DCOTTAGE1, obj3D);
	ds_list_add(global.d3dObjects, O_DCOTTAGE1);
	#macro O_DSTUDENT1	"3dStudent1"
	ds_map_add(global.objectMap, O_DSTUDENT1, obj3D);
	ds_list_add(global.d3dObjects, O_DSTUDENT1);
	#macro O_DMENTOR1	"3dMentor1"
	ds_map_add(global.objectMap, O_DMENTOR1, obj3D);
	ds_list_add(global.d3dObjects, O_DMENTOR1);
	#macro O_DENEMY1	"3dEnemy1"
	ds_map_add(global.objectMap, O_DENEMY1, obj3D);
	ds_list_add(global.d3dObjects, O_DENEMY1);
	#macro O_DWALL	"3dWall"
	ds_map_add(global.objectMap, O_DWALL, obj3D);
	ds_list_add(global.d3dObjects, O_DWALL);
	#endregion
	
	#region //2D
	global.d2dObjects = ds_list_create();
	
	#macro O_PUDDLE		"Puddle"
	ds_map_add(global.objectMap, O_PUDDLE, objGround);
	ds_list_add(global.d2dObjects,O_PUDDLE);
	#macro O_BLOB1		"Blob1"
	ds_map_add(global.objectMap, O_BLOB1, obj2D);
	ds_list_add(global.d2dObjects,O_BLOB1);
	#macro O_SMALLBLOB1		"SmallBlob1"
	ds_map_add(global.objectMap, O_SMALLBLOB1, obj2D);
	ds_list_add(global.d2dObjects,O_SMALLBLOB1);
	
	#endregion
	
	#region //Entity
	global.entObjects = ds_list_create();
	
	#macro O_STUDENT	"Student"
	ds_map_add(global.objectMap, O_STUDENT, objStudent);
	ds_list_add(global.entObjects,O_STUDENT);
	#macro O_MASTER		"Master"
	ds_map_add(global.objectMap, O_MASTER, objMaster);
	ds_list_add(global.entObjects,O_MASTER);
	#macro O_ENEMYSA	"ESingleA"
	ds_map_add(global.objectMap, O_ENEMYSA, objESingleA);
	ds_list_add(global.entObjects,O_ENEMYSA);
	#macro O_ENEMYSB	"ESingleB"
	ds_map_add(global.objectMap, O_ENEMYSB, objESingleB);
	ds_list_add(global.entObjects,O_ENEMYSB);
	#macro O_ENEMYDA	"EDoubleA"
	ds_map_add(global.objectMap, O_ENEMYDA, objEDoubleA);
	ds_list_add(global.entObjects,O_ENEMYDA);
	#macro O_ENEMYDB	"EDoubleB"
	ds_map_add(global.objectMap, O_ENEMYDB, objEDoubleB);
	ds_list_add(global.entObjects,O_ENEMYDB);
	#macro O_ENEMYTA	"ETripleA"
	ds_map_add(global.objectMap, O_ENEMYTA, objETripleA);
	ds_list_add(global.entObjects,O_ENEMYTA);
	#macro O_ENEMYTB	"ETripleB"
	ds_map_add(global.objectMap, O_ENEMYTB, objETripleB);
	ds_list_add(global.entObjects,O_ENEMYTB);	
	
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
if global.levelEditorEnabled = false && instance_exists(objLevelEditor)
{
	instance_destroy(objLevelEditor)
}

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

