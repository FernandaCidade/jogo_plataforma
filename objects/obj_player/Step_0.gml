//Controlando o player
var _chao = place_meeting(x,y + 1, obj_chao); //Se o chão ta a um pixel do player, essa conta vai ser true

var _left, _right, _jump;

_left = keyboard_check(inputs.left);

_right = keyboard_check(inputs.right);

_jump = keyboard_check_pressed(inputs.jump);


velh = (_right - _left) * vel; //Se apertar para direita, vai fazer 1 menos o valor do pixel. Mesma coisa para esquerda, o que dá valor negativo multiplicado pela velocidade



//Permitindo o player pular apenas no chão
if(_chao)
{
	if(_jump)
	{
		velv =  -vel_jump;
	}
	//Se eu estou no chão e me movendo 
	if(velh != 0 )
	{	
		//Mudando a sprite
		sprite_index = spr_player_run;
		
		//Faço ele olhar para onde está indo 
		image_xscale = sign(velh) //essa função pega qqr valor e se ele for positivo, ela retorna 1 e negativo -1
	}
	else //Se minha velocidade é zero
	{
		sprite_index = spr_player_idle;
	}
}
else // Aplicando gravidade se não estou no chão
{
	//Mudando a sprite
	sprite_index = spr_player_jump;
	
	//Aplicando a gravidade
	velv += grav;
	
	if(velh != 0)
	{
		image_xscale = sign(velh);
	}
}
