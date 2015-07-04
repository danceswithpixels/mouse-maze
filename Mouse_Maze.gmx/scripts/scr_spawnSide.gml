switch(argument2) {
    case 0: // Up
        if not place_meeting(argument0,argument1-32,obj_safe) and argument1-32 > 0 {
            instance_create(argument0,argument1-32,obj_safe)
            return 0;
        }
    case 1: // Down
        if not place_meeting(argument0,argument1+32,obj_safe) and argument1+32 < room_height {
            instance_create(argument0,argument1+32,obj_safe)
            return 0;
        }
    case 2: // Left
        if not place_meeting(argument0-32,argument1,obj_safe) and argument0-32 > 0 {
            instance_create(argument0-32,argument1,obj_safe)
            return 0;
        }
    case 3: // Right
        if not place_meeting(argument0+32,argument1,obj_safe) and argument0+32 < room_width {
            instance_create(argument0+32,argument1,obj_safe)
            return 0;
        }
}

return 1;

/*if argument2 == 0 and not place_meeting(argument0,argument1-32,obj_safe) and argument1-32 > 0
    instance_create(argument0,argument1-32,obj_safe);
else
    argument2 += 1;
    
if argument2 == 1 and not place_meeting(argument0,argument1+32,obj_safe) and argument1+32 < room_height
    instance_create(argument0,argument1+32,obj_safe);
else
    argument2 += 1;
    
if argument2 == 2 and not place_meeting(argument0-32,argument1,obj_safe) and argument0-32 > 0
    instance_create(argument0-32,argument1,obj_safe);
else
    argument2 += 1;
    
if argument2 == 3 and not place_meeting(argument0+32,argument1,obj_safe) and argument0+32 < room_width
    instance_create(argument0+32,argument1,obj_safe);*/