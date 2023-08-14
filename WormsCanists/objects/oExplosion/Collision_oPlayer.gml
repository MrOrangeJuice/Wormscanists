/// @description Damage Player

if(!damagedPlayer)
{
	other.hp -= damage;
	damagedPlayer = true;
}