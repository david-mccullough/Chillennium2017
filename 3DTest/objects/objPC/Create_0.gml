/// @description Insert description here
// You can write your code in this editor
event_inherited()

state = playerState.idle

invuln = false;
iframes = room_speed*2;

bowSpeed = -1
dashSpeed = 8;
dashDecelStart = 0.1;
dashDecelEnd = .3
dashDecelStep = .01
canDash = true;
dashCool = room_speed;

action = false;

hp = 3;