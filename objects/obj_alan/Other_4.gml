if(room==rm_mansao){
	x=1100; y=2200;
	image_xscale=1; image_yscale=1}
if(room==rm_bletchley){
	if(obj_trocaroom.bletchley2baixo){x=2900; y=1670;obj_trocaroom.bletchley2baixo=false;}
	else if(obj_trocaroom.bletchley2cima){x=2900; y=1000;obj_trocaroom.bletchley2cima=false;}
	else{
	x=1320; y=760;
}image_xscale=0.7; image_yscale=0.7;}
if(room==rm_hut8){
	x=1100; y=700;
	image_xscale=1; image_yscale=1}
if(room==rm_hut6){
	x=1900; y=1500;
	image_xscale=1; image_yscale=1}
if (room == rm_bletchley2) {
    image_xscale = 0.7;
    image_yscale = 0.7;
    if (obj_trocaroom.quartopara2) {
        x = 1170;
        y = 400;
		travado=true;
        obj_trocaroom.quartopara2 = false;
    }
    else if (obj_trocaroom.bletchleybaixo) {
        x = 100;
        y = 1670;
        obj_trocaroom.bletchleybaixo = false;
    }
    else {
        x = 100;
        y = 1050;
        obj_trocaroom.bletchleycima = false;
    }
}

