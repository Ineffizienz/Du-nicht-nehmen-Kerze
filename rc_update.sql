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

-- Modify Ombrok
UPDATE world.creature_template SET gossip_menu_id = 0 AND npcflag = 2 WHERE entry = 43285;

-- NPCs
INSERT INTO world.creature_template VALUES ('43337', '0', '0', '0', '0', '0', '19075', '0', '0', '0', 'Draenei Water Totem', '', NULL, '0', '20', '20', '0', '2', '0', '1.2', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '0', '0', '0', '0', '0', '11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', '0.05', '1', '1', '1', '1', '0', '0', '1', '0', '0', '0', '', '12340');
INSERT INTO world.creature VALUES ('214023', '43337', '571', '0', '0', '1', '1', '0', '0', '5829.59', '672.173', '609.886', '2.01781', '300', '0', '0', '25', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template VALUES ('43338', '0', '0', '0', '0', '0', '30755', '0', '0', '0', 'Dwarf Water Totem', '', '', '0', '20', '20', '0', '2', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '0', '0', '0', '0', '0', '11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', '0.05', '1', '1', '1', '1', '0', '0', '1', '0', '0', '0', '', '12340');
INSERT INTO world.creature_template VALUES ('43339', '0', '0', '0', '0', '0', '30759', '0', '0', '0', 'Orc Water Totem', '', '', '0', '20', '20', '0', '2', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '0', '0', '0', '0', '0', '11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', '0.05', '1', '1', '1', '1', '0', '0', '1', '0', '0', '0', '', '12340');
INSERT INTO world.creature_template VALUES ('43340', '0', '0', '0', '0', '0', '30763', '0', '0', '0', 'Troll Water Totem', '', '', '0', '20', '20', '0', '2', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '0', '0', '0', '0', '0', '11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', '0.05', '1', '1', '1', '1', '0', '0', '1', '0', '0', '0', '', '12340');
INSERT INTO world.creature VALUES ('214017', '43340', '571', '0', '0', '1', '1', '0', '0', '5830.08', '677.49', '609.886', '3.99339', '300', '0', '0', '25', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('214022', '43340', '571', '0', '0', '1', '1', '0', '0', '5825.39', '675.064', '609.886', '0.0212054', '300', '0', '0', '25', '0', '0', '0', '0', '0', '', '0');

-- Hunter Glyph Model-ID
UPDATE world.creature_template SET modelid1 = 23467 WHERE entry = 43306;

-- Hexenmeister Ausrüstung Position
UPDATE world.creature SET position_x = 5790.69 WHERE guid = 102749;

-- Heal Zonkos and McDonalds
UPDATE world.creature SET curhealth = 12600 WHERE guid = 213973;
UPDATE world.creature SET curhealth = 12600 WHERE guid = 213980;


-- Textänderungen GObjects
UPDATE world.page_text SET Text = "Ein großes Dankeschön gehen an Linda und Mayon für die technische Unterstützung, Dennis und Mayon für das Design, Mayon, Steffi und Kitty für die Guides und Danny, Daniel, Dennis, Kitty, Mayon, Linda, Malte für die Beta-Tests :D" WHERE ID = 3605;
UPDATE world.page_text_locale SET Text = "Ein großes Dankeschön gehen an Linda und Mayon für die technische Unterstützung, Dennis und Mayon für das Design, Mayon, Steffi und Kitty für die Guides und Danny, Daniel, Dennis, Kitty, Mayon, Linda, Malte für die Beta-Tests :D" WHERE ID = 3605 AND locale = "deDE";
UPDATE world.gameobject_template SET name = "Waffenexpertise" WHERE entry = 2139;


-- Update Vendor
UPDATE world.creature_template SET name = "Mr. Mummy" WHERE entry = 43298;
UPDATE world.creature_template SET name = "Craig Harrison" WHERE entry = 43306;
UPDATE world.creature_template SET name = "Sevi'en de Nuev" WHERE entry = 43302;
UPDATE world.creature_template SET name = "Klotz" WHERE entry = 43299;
UPDATE world.creature_template SET name = "Eluvera" AND modelid1 = '17275' WHERE entry = 3034;
UPDATE world.creature_template SET name = "Rauul Sanftmut" WHERE entry = 43305;
UPDATE world.creature_template SET name = "Dar'Grol" WHERE entry = 43304;
UPDATE world.creature_template SET name = "Spot" WHERE entry = 43303;
UPDATE world.creature_template SET name = "Homn" WHERE entry = 43295;
UPDATE world.creature_template SET name = "Ferengue" WHERE entry = 43297;
UPDATE world.creature_template SET name = "D'ja Ma'al" WHERE entry = 43300;
UPDATE world.creature_template SET name = "Bilian Teraiken" WHERE entry = 43296;
UPDATE world.creature_template SET name = "Jaij N'wey" WHERE entry = 5882;

-- Update Verzauberungshändler

INSERT INTO world.npc_vendor VALUES (43336, 0, 41611, 0, 0, 0, 0); -- Ewige Gürtelschnalle
INSERT INTO world.npc_vendor VALUES (43336, 1, 44133, 0, 0, 0, 0); -- Große Inschrift der Axt
INSERT INTO world.npc_vendor VALUES (43336, 2, 44136, 0, 0, 0, 0); -- Große Inschrift des Turms
INSERT INTO world.npc_vendor VALUES (43336, 3, 44957, 0, 0, 0, 0); -- Große Inschrift des Gladiators
INSERT INTO world.npc_vendor VALUES (43336, 4, 38374, 0, 0, 0, 0); -- Eisschuppenbeinrüstung
INSERT INTO world.npc_vendor VALUES (43336, 5, 50369, 0, 0, 0, 0); -- Arkanum des tapferen Beschützers
INSERT INTO world.npc_vendor VALUES (43336, 6, 50367, 0, 0, 0, 0); -- Arkanum der Qualen
INSERT INTO world.npc_vendor VALUES (43336, 7, 23549, 0, 0, 0, 0); -- Standhaftigkeit der Geißel
INSERT INTO world.npc_vendor VALUES (43336, 8, 34207, 0, 0, 0, 0); -- Handschuhverstärkung
INSERT INTO world.npc_vendor VALUES (43336, 9, 38373, 0, 0, 0, 0); -- Frostbalgbeinrüstung
INSERT INTO world.npc_vendor VALUES (43336, 10, 41604, 0, 0, 0, 0); -- Saphirfarbener Zauberfaden
INSERT INTO world.npc_vendor VALUES (43336, 11, 41602, 0, 0, 0, 0); -- Glänzender Zauberfaden
INSERT INTO world.npc_vendor VALUES (43336, 12, 35449, 0, 0, 0, 0); -- Schild - Erhebliche Ausdauer
INSERT INTO world.npc_vendor VALUES (43336, 13, 44936, 0, 0, 0, 0); -- Titanbeschlag
INSERT INTO world.npc_vendor VALUES (43336, 14, 44815, 0, 0, 0, 0); -- Rolle der Armschienenverzauberung - Großer Sturmangriff
INSERT INTO world.npc_vendor VALUES (43336, 15, 44947, 0, 0, 0, 0); -- Rolle der Armschienenverzauberung - Erhebliche Ausdauer
INSERT INTO world.npc_vendor VALUES (43336, 16, 38856, 0, 0, 0, 0); -- Rolle der Handschuhverzauberung - Große Beweglichkeit
INSERT INTO world.npc_vendor VALUES (43336, 17, 44458, 0, 0, 0, 0); -- Rolle der Handschuhverzauberung - Zermalmer
INSERT INTO world.npc_vendor VALUES (43336, 18, 38964, 0, 0, 0, 0); -- Rolle der Handschuhverzauberung - Großer Sturmangriff
INSERT INTO world.npc_vendor VALUES (43336, 19, 38967, 0, 0, 0, 0); -- Rolle der Handschuhverzauberung - Erhebliche Beweglichkeit
INSERT INTO world.npc_vendor VALUES (43336, 20, 38990, 0, 0, 0, 0); -- Rolle der Handschuverzauberung – Waffenmeister
INSERT INTO world.npc_vendor VALUES (43336, 21, 39003, 0, 0, 0, 0); -- Rolle der Umhangverzauberung - Großes Tempo
INSERT INTO world.npc_vendor VALUES (43336, 22, 44457, 0, 0, 0, 0); -- Rolle der Umhangverzauberung - Erhebliche Beweglichkeit
INSERT INTO world.npc_vendor VALUES (43336, 23, 39001, 0, 0, 0, 0); -- Rolle der Umhangverzauberung - Mächtige Rüstung
INSERT INTO world.npc_vendor VALUES (43336, 24, 38825, 0, 0, 0, 0); -- Rolle der Umhangverzauberung - Große Verteidigung
INSERT INTO world.npc_vendor VALUES (43336, 25, 44465, 0, 0, 0, 0); -- Rolle der Brustverzauberung - Gewaltige Werte
INSERT INTO world.npc_vendor VALUES (43336, 26, 38863, 0, 0, 0, 0); -- Rolle der Stiefelverzauberung - Große Beweglichkeit
INSERT INTO world.npc_vendor VALUES (43336, 27, 44469, 0, 0, 0, 0); -- Rolle der Stiefelverzauberung - Großer Sturmangriff
INSERT INTO world.npc_vendor VALUES (43336, 28, 38986, 0, 0, 0, 0); -- Rolle der Stiefelverzauberung - Eiswandler
INSERT INTO world.npc_vendor VALUES (43336, 29, 39006, 0, 0, 0, 0); -- Rolle der Stiefelverzauberung - Vitalität der Tuskarr
INSERT INTO world.npc_vendor VALUES (43336, 30, 44493, 0, 0, 0, 0); -- Rolle der Waffenverzauberung - Berserker
INSERT INTO world.npc_vendor VALUES (43336, 31, 38995, 0, 0, 0, 0); -- Rolle der Waffenverzauberung - Außergewöhnliche Beweglichkeit


### Update McDonalds
INSERT INTO world.npc_vendor VALUES (43326, 0, 42999, 0, 0, 0, 0); -- Geschwärzte Drachenflosse

	-- add Cleaver to McDonalds
	UPDATE world.creature SET equipment_id = 1 WHERE guid = 213980;
	INSERT INTO world.creature_equip_template VALUES ('43326', '1', '1827', '0', '0', '0');

-- Update Zosimus
INSERT INTO world.npc_vendor VALUES (43291, 0, 40093, 0, 0, 0, 0); -- Unzerstörbarer Trank

-- Add GObjects
INSERT INTO world.gameobject VALUES ('167196', '185130', '571', '0', '0', '1', '1', '5829.04', '647.529', '610.286', '5.23438', '-0', '-0', '-0.500695', '0.865624', '300', '255', '1', '', '0');

-- Move GObjects
UPDATE world.gameobject SET position_x = '5833.74' AND position_y = '638.559' AND position_z = '613.754' AND orientation = '2.37747' WHERE guid = '166108';

-- Delete GObjects
DELETE FROM world.gameobject WHERE guid = '166113';

/*
-- Add Starting-Quest

-- Krieger
	INSERT INTO world.creature_queststarter VALUES ('43285', '26035'); -- Ombrok startet die Quest
	INSERT INTO world.quest_template VALUES ('26035', '2', '80', '80', '4570', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Willkommen auf dem WOW-Server', 'Begib zu Facepalm deinem Klassenausrüster', 'Hallo $N. Du fühlst dich bestimmt erschlagen von den ganzen Dingen, die du grad siehst. Ich will dir ein bisschen dabei helfen dich zurecht zu finden. Als erstes solltest du mal in den Bereich deiner Klasse laufen.', '', 'Gehe zu Facepalm', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '12340');
	INSERT INTO world.quest_template_addon VALUES ('26035', '0', '1', '0', '0', '26036', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
	INSERT INTO world.quest_poi VALUES ('26035', '1', '-1', '571', '4570', '0', '0', '0', '0');
	INSERT INTO world.quest_poi_points VALUES ('26035', '1', '0', '5755.75', '584.511', '0');

-- Krieger-Startquest
UPDATE world.creature_template SET npcflag = 130 WHERE entry = 43292;
INSERT INTO world.creature_questender VALUES ('43292', '26035');
INSERT INTO world.creature_queststarter VALUES ('43292', '26036');
INSERT INTO world.creature_questender VALUES ('43292', '26036');
INSERT INTO world.quest_template VALUES ('26037', '2', '80', '80', '4570', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Des Kriegers neue Kleider', 'Kauf dir Ausrüstung für deinen Krieger', 'Willkommen junger Krieger, ich bin *hnf*... Facepalm wollte ich sagen, bevor ich so rüde unterbrochen wurde. Du möchtest bestimmt etwas zum anziehen und ein paar neue Waffen, oder? Sieh dich ruhig um!', 'Kaufe Ausrüstung', 'Kaufe Ausrüstung', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '12340');
INSERT INTO world.quest_template_addon VALUES ('26036', '0', '1', '0', '26035', '26037', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');


DELETE FROM world.quest_poi WHERE QuestID = 26035;
DELETE FROM world.quest_poi_points WHERE QuestID = 26035;
DELETE FROM world.quest_template WHERE ID = 26035;
DELETE FROM world.quest_template_addon WHERE ID = 26035;

INSERT INTO world.creature_template VALUES ('43341', '0', '0', '0', '0', '0', '23006', '0', '0', '0', 'Facepalm', 'Krieger Ausrüstung', '', '0', '80', '80', '2', '2', '130', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
UPDATE world.creature SET id = 43341 WHERE guid = 214026;
INSERT INTO world.creature_queststarter VALUES ('43341','26037');
INSERT INTO world.creature_questender VALUES ('43341', '26037');
INSERT INTO world.quest_template_addon VALUES ('26037', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO world.quest_template VALUES ('26037', '2', '80', '80', '4570', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Des Kriegers neue Kleider', 'Kauf dir Ausrüstung für deinen Krieger', 'Willkommen junger Krieger, ich bin *hnf*... Facepalm wollte ich sagen, bevor ich so rüde unterbrochen wurde. Du möchtest bestimmt etwas zum anziehen und ein paar neue Waffen, oder? Sieh dich ruhig um!', 'Kaufe Ausrüstung', 'Kaufe Ausrüstung', '0', '0', '0', '0', '0', '0', '0', '0', '50846', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '', '', '12340');
INSERT INTO world.npc_vendor  VALUES (43341, 0, 50846, 0, 0, 0, 0);
UPDATE world.creature_questender SET quest = 26038 WHERE id = 43341;
UPDATE world.creature_queststarter SET quest = 26038 WHERE id = 43341;
UPDATE world.quest_template SET ID = 26038 WHERE ID = 26037;
UPDATE world.quest_template_addon SET ID = 26038 WHERE ID = 26037;

UPDATE world.creature_template SET gossip_menu_id = 57021 WHERE entry = 43341;
INSERT INTO world.gossip_menu VALUES ('57021', '50017', '0');
INSERT INTO world.gossip_menu_option VALUES ('57021', '0', '1', 'Ich benötige Ausrüstung', '0', '3', '128', '0', '0', '0', '0', '', '0', '0');
INSERT INTO world.gossip_menu_option VALUES ('57021', '1', '10', '', '0', '2', '2', '0', '0', '0', '0', '', '0', '0');
INSERT INTO world.gossip_menu_option VALUES ('57021', '0', '10', 'Und nocha Text', '0', '2', '2', '0', '0', '0', '0', '', '0', '0');
INSERT INTO world.npc_text VALUES ('50017', 'Willkommen in Nordend werter Reisender. Ich bin Ombrok der Verschnupfte.... *Hatschi* Auf dem Schwarzmarkt von Dalaran seht ihr alles, was das Kämpferherz begehrt. Bedient euch, aber bedenkt, dass ihr nicht alles tragen könnt. *Haaaaaaaatschiiii* Gott verdammtes Wetter...', NULL, '77866', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '', NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

INSERT INTO world.smart_scripts VALUES ('43341', '1', '0', '1', '62', '0', '100', '0', '57021', '0', '0', '0', '0' '72', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', hm?');
INSERT INTO world.smart_scripts VALUES ('43341', '1', '1', '0', '62', '0', '100', '0', '57021', '0', '0', '0', '0' '11', '79181', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Siegemaster Fezzik - Out of Combat - Quest Credit \'A Cold Front Approaches\'');
*/