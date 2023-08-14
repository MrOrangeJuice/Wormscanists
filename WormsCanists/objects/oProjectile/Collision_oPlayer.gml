// Collide with player, fireball explode

if(playerNum != other.playerNum)
{
	instance_create_depth(x, y, 1, explosionObject);
	instance_destroy();
	other.hp -= damage;
}