direcao = "baixo";
xspeed_anterior = 0;
yspeed_anterior = 0;
offset_letrae_x = 0;  
offset_letrae_y = -185;
offset_letraf_x = 0;
offset_letraf_y = -185;
image_xscale=8;
image_yscale=8;
vel = 7;
travado=false;
theosegue=false;

var _baixo = global.theojogando ? spr_theobaixo : spr_alanbaixo;
var _cima = global.theojogando ? spr_theocima : spr_alancima;
var _esquerda = global.theojogando ? spr_theoesquerda : spr_alanesquerda;
var _direita = global.theojogando ? spr_theodireita : spr_alandireita;

var _parado = global.theojogando ? spr_theoparado : spr_alanparado;
var _parado_cima = global.theojogando ? spr_theoparadocima : spr_alanparadocima;
var _parado_esquerda = global.theojogando ? spr_theoparadoesquerda : spr_alanparadoesquerda;
var _parado_direita = global.theojogando ? spr_theoparadodireita : spr_alanparadodireita;

som_passos_id = -1;
som_pedra_id = -1;