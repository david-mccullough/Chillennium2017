/// Sleep(Milliseconds)

var endTime = get_timer() + ((argument0*1000));
do {
   room_speed = 1;
} until(get_timer() >= endTime);

// added this part myself so it suits what i'm looking for.
if get_timer() >= endTime {room_speed = 60;}