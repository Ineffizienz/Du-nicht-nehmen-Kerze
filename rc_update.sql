-- neue Mounts hinzufügen
INSERT INTO characters.help_mount (mount_id, flying) VALUES ('25596', '1');
INSERT INTO characters.help_mount (mount_id, flying) VALUES ('28915', '0');
INSERT INTO characters.help_mount (mount_id, flying) VALUES ('29105', '0');
INSERT INTO characters.help_mount (mount_id, flying) VALUES ('29225', '0');
INSERT INTO characters.help_mount (mount_id, flying) VALUES ('29228', '0');
INSERT INTO characters.help_mount (mount_id, flying) VALUES ('33225', '0');
INSERT INTO characters.help_mount (mount_id, flying) VALUES ('49284', '0');
INSERT INTO characters.help_mount (mount_id, flying) VALUES ('46708', '1');
INSERT INTO characters.help_mount (mount_id, flying) VALUES ('46814', '1');
INSERT INTO characters.help_mount (mount_id, flying) VALUES ('47840', '1');
INSERT INTO characters.help_mount (mount_id, flying) VALUES ('50435', '1');
INSERT INTO characters.help_mount (mount_id, flying) VALUES ('37012', '0');
INSERT INTO characters.help_mount (mount_id, flying) VALUES ('50818', '1');
INSERT INTO characters.help_mount (mount_id, flying) VALUES ('54811', '1');
INSERT INTO characters.help_mount (mount_id, flying) VALUES ('43599', '0');
UPDATE characters.help_mount SET flying = 1 WHERE mount_id = 50250;

-- entferne nicht nutzbare Mounts aus help_mount
DELETE FROM characters.help_mount WHERE mount_id = 39303;
DELETE FROM characters.help_mount WHERE mount_id = 21323;

-- Startspells für spezifische Klassen
UPDATE world.playercreateinfo_spell_custom SET classmask = 1024 WHERE Spell = 6795;
UPDATE world.playercreateinfo_spell_custom SET classmask = 4 WHERE Spell = 982;
UPDATE world.playercreateinfo_spell_custom SET classmask = 32 WHERE Spell = 50977;
UPDATE world.playercreateinfo_spell_custom SET classmask = 128 WHERE Spell = 11417;
UPDATE world.playercreateinfo_spell_custom SET classmask = 128 WHERE Spell = 35717;
UPDATE world.playercreateinfo_spell_custom SET classmask = 128 WHERE Spell = 32267;
UPDATE world.playercreateinfo_spell_custom SET classmask = 128 WHERE Spell = 11420;
UPDATE world.playercreateinfo_spell_custom SET classmask = 128 WHERE Spell = 11418;


-- NPCs
INSERT INTO world.creature_template VALUES ('43337', '0', '0', '0', '0', '0', '19075', '0', '0', '0', 'Draenei Water Totem', '', NULL, '0', '20', '20', '0', '2', '0', '1.2', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '0', '0', '0', '0', '0', '11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', '0.05', '1', '1', '1', '1', '0', '0', '1', '0', '0', '0', '', '12340');
INSERT INTO world.creature_template VALUES ('43338', '0', '0', '0', '0', '0', '30755', '0', '0', '0', 'Dwarf Water Totem', '', '', '0', '20', '20', '0', '2', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '0', '0', '0', '0', '0', '11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', '0.05', '1', '1', '1', '1', '0', '0', '1', '0', '0', '0', '', '12340');
INSERT INTO world.creature_template VALUES ('43339', '0', '0', '0', '0', '0', '30759', '0', '0', '0', 'Orc Water Totem', '', '', '0', '20', '20', '0', '2', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '0', '0', '0', '0', '0', '11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', '0.05', '1', '1', '1', '1', '0', '0', '1', '0', '0', '0', '', '12340');
INSERT INTO world.creature_template VALUES ('43340', '0', '0', '0', '0', '0', '30763', '0', '0', '0', 'Troll Water Totem', '', '', '0', '20', '20', '0', '2', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '0', '0', '0', '0', '0', '11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', '0.05', '1', '1', '1', '1', '0', '0', '1', '0', '0', '0', '', '12340');

-- Hunter Glyph Model-ID
UPDATE world.creature_template SET modelid1 = 23467 WHERE entry = 43306;

-- Hexenmeister Ausrüstung Position
UPDATE world.creature SET position_x = 5790.69 WHERE guid = 102749;