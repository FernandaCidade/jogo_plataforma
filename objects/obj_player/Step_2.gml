//Aplicando a colisão horizontal
//Checando se eu estou colidindo com a parede
var _col = instance_place(x + velh, y,obj_chao); //Vai retornar o Id do que está colidindo ou retornar false

//Se eu colidi eu grudo em quem eu colidi
if(_col)
{
	//Checando se eu estou indo para direita
	if(velh > 0)
	{
		//Grudando na parte esquerda da parede
		x = _col.bbox_left + (x - bbox_right); // Parede esquerda da _col (depois criando um espaço na direita criando a colisão na ponta do player)
	}
	
	//Checando se eu estou indo para esquerda
	
	if(velh < 0)
	{
		x = _col.bbox_right + (x - bbox_left);
	}
	
	//uma vez que eu colidir, não importa o lado, eu paro
	
	velh = 0;
}

var _col = instance_place(x, y + velv, obj_chao);

if(_col)
{
	//Checando se eu estou indo para baixo
	if(velv > 0)
	{
		y = _col.bbox_top - (y - bbox_bottom);
	}
	
	//Checando se eu estou indo para cima
	
	if(velv < 0)
	{	
		y = _col.bbox_bottom - (y - bbox_top) 
	}
	
	//uma vez que eu colidir, não importa o lado, eu paro
	velv = 0;
}



//Movimentação
x += velh;
//Aplicando a gravidade
y += velv;

