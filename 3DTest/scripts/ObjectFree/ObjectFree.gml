var xx = argument[0]
var yy = argument[1]
var obj = argument[2]

var bool = true;


// get list of all colliding objects
var hitList = instance_place_list(xx, yy, obj);
if (hitList != noone)
{
	var size = ds_list_size(hitList)
	for (var i = 0; i < size; i++)
	{
		var hit = ds_list_find_value(hitList, i);
		if true//hit.canClip == false //if any of the colliding objects cant clip then we cant place
		{
			bool = false;
			i = size
		}
	}
}
if ds_exists(hitList, ds_type_list)
ds_list_destroy(hitList);

return bool