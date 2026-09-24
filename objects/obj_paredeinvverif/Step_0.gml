if (place_meeting(x, y, obj_alan)) {
	if(obj_paredeinv.image_alpha>=0.2){
    obj_paredeinv.image_alpha-=0.05;
	}
	if(obj_luzparedeTuring.image_alpha>=0){
    obj_luzparedeTuring.image_alpha-=0.05;
	}
	if(obj_vidroparedeinv.image_alpha>=0.1){
    obj_vidroparedeinv.image_alpha-=0.02;
	}
} else{
	if(obj_paredeinv.image_alpha<1){
    obj_paredeinv.image_alpha+=0.05;
	}
	if(obj_luzparedeTuring.image_alpha<0.1){
    obj_luzparedeTuring.image_alpha+=0.01;
	}
	if(obj_vidroparedeinv.image_alpha<0.3){
    obj_vidroparedeinv.image_alpha+=0.05;
	}
	}