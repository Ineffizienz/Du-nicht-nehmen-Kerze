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