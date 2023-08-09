// Collide with player, fireball explode

instance_create_depth(x-4, y-4, 1, oFireballExplosion);
instance_destroy();


other.hp -= 100;