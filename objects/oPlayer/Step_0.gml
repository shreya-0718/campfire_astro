x_speed = 0;
y_speed += grav;

//obj_display = instance_create_layer(x, y, "GUI", obj_display);
draw_text(300, 300, "yo wassup");

if keyboard_check(vk_right) { // if the right arrow key is pressed

    x_speed = movement_speed; // set the horizontal speed to heidi's movement_speed

} else if keyboard_check(vk_left) { // otherwise, if the left arrow key is pressed

    x_speed = -movement_speed;

}

if (place_meeting(x, y + 1, oSolid)) {

    if (keyboard_check_pressed(vk_up)) {

        y_speed = -5; // make heidi jump by setting her y_speed to a negative value

    } else { 

        y_speed = 0; 

    }
}
	

if (place_meeting(x, y, oSpikes)) { // if heidi collides with the spikes
    room_restart() // restart the level
}

if (y > room_height or y < 0 or x > room_width or x < 0) { // if the player is outside of the room

    room_restart(); 

}

if keyboard_check(vk_right) {

    x_speed = movement_speed; 

} else if keyboard_check(vk_left) {

    x_speed = -movement_speed; 
}



move_and_collide(x_speed, y_speed, oSolid);
