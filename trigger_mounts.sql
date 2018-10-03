USE characters; 
DROP TRIGGER IF EXISTS addMount; 
delimiter //
CREATE TRIGGER addMount AFTER INSERT ON characters
FOR EACH ROW
BEGIN
	DECLARE rdmMountGround int;
	DECLARE rdmMount int;
	DECLARE mountGround int;
	DECLARE mount int;
	DECLARE max int;
	DECLARE canFly int DEFAULT 0;
	DECLARE maxGuid int;
    DECLARE bag int;

	# Zufallszahl (= ID von help_mount) für das fliegende Reittier bestimmen
	SET max = ((SELECT count(*) FROM help_mount)+1);
	WHILE canFly <> 1 DO
		SET rdmMount = (SELECT FLOOR(RAND()*(max-1)+1));
		SET canFly = (SELECT flying FROM help_mount WHERE ID = rdmMount);
	END WHILE;
	SET mount = (SELECT mount_id FROM help_mount WHERE ID = rdmMount);

	# Zufallszahl (= ID von help_mount) für das Boden-Reittier bestimmen
	SET canFly = 1;
	WHILE canFly <> 0 DO
		SET rdmMountGround = (SELECT FLOOR(RAND()*(max-1)+1));
		SET canFly = (SELECT flying FROM help_mount WHERE ID = rdmMountGround);
	END WHILE;
	SET mountGround = (SELECT mount_id FROM help_mount WHERE ID = rdmMountGround);

	# guid für Einträge in item_instance festlegen und Einträge durchführen
	SET maxGuid = (SELECT max(guid) FROM item_instance);
	INSERT INTO item_instance (guid, itemEntry, owner_guid, creatorGuid, giftCreatorGuid, count, duration, charges, flags, enchantments, randomPropertyId, durability, playedTime, text) 
		VALUES (maxGuid+1, mount, NEW.guid, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, '');
	INSERT INTO item_instance (guid, itemEntry, owner_guid, creatorGuid, giftCreatorGuid, count, duration, charges, flags, enchantments, randomPropertyId, durability, playedTime, text) 
		VALUES (maxGuid+2, mountGround, NEW.guid, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, '');
    
	# character_inventory Einträge durchführen
	INSERT INTO character_inventory (guid, bag, slot, item) VALUES (NEW.guid, 0, 37, maxGuid+1);
	INSERT INTO character_inventory (guid, bag, slot, item) VALUES (NEW.guid, 0, 38, maxGuid+2);

	# Log-Einträge in log_mount eintragen
    INSERT INTO log_mount (character_guid, character_name, mount_ground, mount_fly) VALUES (NEW.guid, NEW.name, mountGround, mount);
	END;//
delimiter ;