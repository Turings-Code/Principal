if(obj_folhacodigos.image_index==4){
	enigma1=true;
	obj_objetivos.define_etapas([
    "- Descriptografe os códigos (1/3)",
    "- Coloque os códigos no baú"
]);
	}
if(obj_folhacodigos.image_index==8){
	enigma2=true;
	obj_objetivos.define_etapas([
    "- Descriptografe os códigos (2/3)",
    "- Coloque os códigos no baú"
]);
	}
if(obj_folhacodigos.image_index==12){
	enigma3=true;
	global.codigos_descriptografados = true;
	obj_objetivos.define_etapas([
    "- Descriptografe os códigos (3/3)",
    "- Coloque os códigos no baú"
]);
	}