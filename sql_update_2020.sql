########### Graveyard für Mount-Hyjal ##############################

-- Löschen des Debuffs um Mount Hyjal zu betreten.
DELETE FROM world.spell_area WHERE spell = 42202;

-- Neuer Friedhof in Mount Hyjal
INSERT INTO world.graveyard_zone (ID, GhostZone, Faction, Comment) VALUES (1721, 616, 0, 'Hyjal GY all');

--Spirit Healer für den Graveyard in Mount Hyjal
INSERT INTO world.creature VALUES ('214033', '29259', '1', '0', '0', '1', '1', '0', '0', '5298.13', '-1536.21', '1367.44', '2.8455', '300', '0', '0', '7212', '0', '0', '0', '0', '0', '', '0');

-- Gräber fpr den Graveyard in Mount Hyjal
INSERT INTO world.gameobject VALUES ('167298', '37', '1', '0', '0', '1', '1', '5294.91', '-1534.65', '1367.08', '2.745', '-0', '-0', '-0.980403', '-0.197001', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('167299', '51708', '1', '0', '0', '1', '1', '5292.1', '-1533.46', '1366.75', '5.91325', '-0', '-0', '-0.183915', '0.982942', '0', '255', '1', '', '0');

####################################################################

######### Teleport to Dalaran ######################################

-- Gameobject Portal + Zauber
INSERT INTO world.gameobject_template VALUES ('244625', '22', '6831', 'Portal to Dalaran', '', '', '', '1', '80865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '12340');
INSERT INTO world.gameobject VALUES ('167333', '244625', '1', '0', '0', '1', '1', '5226.27', '-1233.48', '1374.85', '4.18615', '-0', '-0', '-0.866684', '0.498857', '300', '255', '1', '', '0');

-- Zauber Location
INSERT INTO world.spell_target_position VALUES ('80865', '0', '571', '5836.238770', '443.102417', '658.778076', '2.866006', '0');

####################################################################

######### Teleport to Hyjal Village ################################

-- Gameobject Portal + Zauber
INSERT INTO world.gameobject_template VALUES ('244626', '22', '6831', 'Portal to Hyjal Village', '', '', '', '1', '80866', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '12340');
INSERT INTO world.gameobject VALUES ('167357', '244626', '571', '0', '0', '1', '1', '5841.11', '505.632', '657.512', '3.98913', '-0', '-0', '-0.911545', '0.4112', '300', '255', '1', '', '0');

-- Zauber Location
INSERT INTO world.spell_target_position VALUES ('80866', '0', '1', '5212.583496', '-1388.930420', '1360.643799', '3.696067', '0');

####################################################################