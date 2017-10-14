/// @description
stuSpawnPos = vect2(0,0);
masSpawnPos = vect2(16,32);
globalvar student;
globalvar master;
student = instance_create_depth(stuSpawnPos[0],stuSpawnPos[1],0,objStudent);
master = instance_create_depth(masSpawnPos[0],masSpawnPos[1],0,objMaster);

control = student;
