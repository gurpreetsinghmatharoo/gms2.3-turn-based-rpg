/// @description 
// Create camera
camera = camera_create_view(0, 0, global.Resolution.width, global.Resolution.height);

// Enable views and make view 0 visible
view_enabled = true;
view_visible[0] = true;

// Assign camera to view 0
view_set_camera(0, camera);

// Camera properties
cameraFollow = true;