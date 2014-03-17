DELETE FROM character_data WHERE Alive = 0;
DELETE FROM object_data WHERE Damage = 1;
UPDATE `traders_data` SET qty=1000 WHERE qty<=100;