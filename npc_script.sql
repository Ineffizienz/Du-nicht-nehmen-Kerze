CREATE TABLE characters.help_mount (ID INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL, mount_id VARCHAR(45) NOT NULL, flying INT(11) NOT NULL);
CREATE TABLE characters.log_mount (id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL, character_guid INT(11) NOT NULL, character_name VARCHAR(128) NOT NULL, mount_ground INT(11) NOT NULL, mount_fly INT(11) NOT NULL);

/************************* Modify Create-Data ****************************************/

INSERT INTO world.playercreateinfo_item VALUES (0, 0, 51809, 4); -- add Bags

-- modify startposition
UPDATE world.playercreateinfo SET `map`='571', `zone`='4395', `position_x`='5804.477051', `position_y`='640.055481', `position_z`='609.885986', `orientation`='0.934426' WHERE `race` IN (2,5,6,8,9,10); -- Horde
UPDATE world.playercreateinfo SET `map`='571', `zone`='4395', `position_x`='5804.477051', `position_y`='640.055481', `position_z`='609.885986', `orientation`='0.934426' WHERE `race` IN (1,3,4,7,11,22); -- Alli

INSERT INTO world.playercreateinfo_item VALUES ('0','7','5175','1'); -- Erdtotem an Schamane
INSERT INTO world.playercreateinfo_item VALUES ('0','7','5176','1'); -- Feuertotem an Schamane
INSERT INTO world.playercreateinfo_item VALUES ('0','7','5177','1'); -- Wassertotem an Schamane
INSERT INTO world.playercreateinfo_item VALUES ('0','7','5178','1'); -- Lufttotem an Schamane
INSERT INTO world.playercreateinfo_item VALUES ('0','9','6265','13'); -- Soul Shards an Hexenmeister

INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '0', '33388', 'Apprentice Riding');
INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '0', '33391', 'Journeymap Riding');
INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '0', '34090', 'Expert Riding');
INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '0', '34093', 'Artisan Riding');
INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '0', '54197', 'Cold Weather Flying');
INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '11', '6795', 'Crowl'); -- Bär Druide
INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '3', '982', 'Revive Pet'); -- Pet wiederbeleben Jäger
INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '0', '45542', 'First Aid Grand Master'); -- First Aid
INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '0', '33359', 'Cooking Master'); -- Cooking

DELETE FROM world.creature WHERE guid = 104242;


/************************* Modify Quest ****************************************/
UPDATE world.quest_template SET RequiredNpcOrGoCount1 = 1 WHERE ID = 24507;



/************************* Delete NPCs ****************************************/
DELETE FROM world.creature WHERE guid = 213886;
DELETE FROM world.creature WHERE guid = 102693;
DELETE FROM world.creature WHERE guid = 110148;
DELETE FROM world.creature WHERE guid = 118221;
DELETE FROM world.creature WHERE guid = 113397;
DELETE FROM world.creature WHERE guid = 107612;
DELETE FROM world.creature WHERE guid = 104358;
DELETE FROM world.creature WHERE guid = 85064;
DELETE FROM world.creature WHERE guid = 111373;
DELETE FROM world.creature WHERE guid = 85208;
DELETE FROM world.creature WHERE guid = 85209;
DELETE FROM world.creature WHERE guid = 85210;
DELETE FROM world.creature WHERE guid = 117830;
DELETE FROM world.creature WHERE guid = 117938;
DELETE FROM world.creature WHERE guid = 102603;
DELETE FROM world.creature WHERE guid = 102673;
DELETE FROM world.creature WHERE guid = 102516;

/************************* Add Game Objects ****************************************/

-- Mailbox
INSERT INTO world.gameobject VALUES ('166476', '177044', '571', '0', '0', '1', '1', '5819.97', '634.524', '609.886', '4.00649', '-0', '-0', '-0.907943', '0.419094', '300', '255', '1', '', '0');

-- add Runeforge

INSERT INTO world.gameobject VALUES ('166428', '190557', '571', '0', '0', '1', '1', '5798.03', '591.872', '609.158', '2.55028', '-0', '-0', '-0.956611', '-0.291369', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166016', '191746', '571', '0', '0', '1', '1', '5798.03', '591.872', '609.158', '2.55028', '-0', '-0', '-0.956611', '-0.291369', '300', '255', '1', '', '0');


INSERT INTO world.gameobject VALUES ('166105', '192825', '571', '0', '0', '1', '1', '5810.09', '651.532', '609.885', '4.32448', '-0', '-0', '-0.830137', '0.55756', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166106', '192824', '571', '0', '0', '1', '1', '5810.06', '651.775', '609.885', '4.41637', '-0', '-0', '-0.803652', '0.5951', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166103', '191945', '571', '0', '0', '1', '1', '5811.21', '652.117', '609.886', '4.19488', '-0', '-0', '-0.8645', '0.502633', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166098', '177387', '571', '0', '0', '1', '1', '5781.54', '628.374', '609.158', '2.78193', '-0', '-0', '-0.983874', '-0.178863', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166100', '192824', '571', '0', '0', '1', '1', '5783.14', '628.856', '610.893', '5.71933', '-0', '-0', '-0.27821', '0.96052', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166102', '192824', '571', '0', '0', '1', '1', '5781.76', '627.007', '610.893', '6.27304', '-0', '-0', '-0.00507387', '0.999987', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166113', '2139', '571', '0', '0', '1', '1', '5810.94', '611.198', '613.678', '2.30601', '-0', '-0', '-0.913988', '-0.405741', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166108', '2139', '571', '0', '0', '1', '1', '5836.67', '647.266', '613.058', '2.37747', '-0', '-0', '-0.927898', '-0.372834', '300', '255', '1', '', '0');

-- Tisch neben der Seelenschmiede
INSERT INTO world.gameobject VALUES ('166150', '192547', '571', '0', '0', '1', '1', '5786.04', '587.353', '609.158', '1.65236', '-0', '-0', '-0.735349', '-0.677689', '300', '255', '1', '', '0');


INSERT INTO world.gameobject VALUES ('166268', '50486', '571', '0', '0', '1', '1', '5780.62', '624.666', '609.705', '0.573418', '-0', '-0', '-0.282797', '-0.95918', '300', '255', '1', '', '0');
UPDATE world.gameobject_template SET name = "Zosimus Alchemy" WHERE entry = 50486;

-- Pfeilhändler Zubehör

INSERT INTO world.gameobject VALUES ('166297', '13952', '571', '0', '0', '1', '1', '5818.07', '688.37', '610.545', '5.11403', '-0', '-0', '-0.551845', '0.833947', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166301', '244609', '571', '0', '0', '1', '1', '5826.18', '687.784', '609.886', '4.56504', '-0', '-0', '-0.757237', '0.65314', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166391', '244610', '571', '0', '0', '1', '1', '5814.57', '682.079', '609.158', '4.85619', '-0', '-0', '-0.654484', '0.756076', '300', '255', '1', '', '0');
INSERT INTO world.gameobject_template VALUES ('244610', '5', '691', 'Stand des Pfeilanders', '', '', '', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '12340');
INSERT INTO world.gameobject_template VALUES ('244609', '5', '8206', 'Etwas Käse zum Wein gefällig?', '', '', '', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '12340');

-- Schilder Menagerie

INSERT INTO world.gameobject VALUES ('166307', '244606', '571', '0', '0', '1', '1', '5851.76', '554.243', '652.656', '1.5842', '-0', '-0', '-0.71183', '-0.702352', '300', '255', '1', '', '0');
INSERT INTO world.gameobject_template VALUES ('244606', '5', '8206', 'Gerissenheit', '', '', '', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '12340');
INSERT INTO world.gameobject VALUES ('166309', '244607', '571', '0', '0', '1', '1', '5859.05', '555.818', '652.656', '2.08056', '-0', '-0', '-0.862547', '-0.505977', '300', '255', '1', '', '0');
INSERT INTO world.gameobject_template VALUES ('244607', '5', '8206', 'Hartnäckigkeit', '', '', '', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '12340');
INSERT INTO world.gameobject VALUES ('166310', '244608', '571', '0', '0', '1', '1', '5861.37', '559.676', '652.656', '3.09137', '-0', '-0', '-0.999685', '-0.0251094', '300', '255', '1', '', '0');
INSERT INTO world.gameobject_template VALUES ('244608', '5', '8206', 'Wildheit', '', '', '', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '12340');

-- Edelsteinhändler Zubehör
INSERT INTO world.gameobject VALUES ('166389', '192846', '571', '0', '0', '1', '1', '5787.26', '663.723', '616.133', '5.58897', '-0', '-0', '-0.340177', '0.940361', '300', '255', '1', '', '0'); -- Schild
INSERT INTO world.gameobject VALUES ('166302', '180324', '571', '0', '0', '1', '1', '5792.45', '656.508', '609.158', '2.25418', '-0', '-0', '-0.903166', '-0.429291', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166303', '164782', '571', '0', '0', '1', '1', '5794.04', '656.964', '610.043', '5.18057', '-0', '-0', '-0.523802', '0.85184', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166304', '164778', '571', '0', '0', '1', '1', '5790.86', '655.905', '610.047', '4.81536', '-0', '-0', '-0.66978', '0.74256', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166305', '164779', '571', '0', '0', '1', '1', '5791.05', '660.224', '610.477', '5.01563', '-0', '-0', '-0.592192', '0.805797', '300', '255', '1', '', '0');

-- Pilze
INSERT INTO world.gameobject VALUES ('166360', '142144', '571', '0', '0', '1', '1', '5764.62', '602.981', '609.886', '0.486309', '-0', '-0', '-0.240766', '-0.970583', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166363', '152094', '571', '0', '0', '1', '1', '5762.08', '601.034', '609.887', '0.288399', '-0', '-0', '-0.1437', '-0.989621', '300', '255', '1', '', '0');

-- Tisch
INSERT INTO world.gameobject VALUES ('166393', '180324', '571', '0', '0', '1', '1', '5790.74', '616.082', '609.886', '0.702622', '-0', '-0', '-0.344129', '-0.938922', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166452', '180885', '571', '0', '0', '1', '1', '5841.04', '674.283', '609.887', '3.26858', '-0', '-0', '-0.997985', '0.0634512', '300', '255', '1', '', '0'); -- Tisch für McDonalds

-- Glyphen Areal
INSERT INTO world.gameobject VALUES ('166395', '244611', '571', '0', '0', '1', '1', '5792.43', '612.909', '618.911', '1.0207', '-0', '-0', '-0.488483', '-0.872574', '300', '255', '1', '', '0');
INSERT INTO world.gameobject_template VALUES ('244611', '5', '7724', 'Glyphen', '', '', '', '1.38', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '12340');


INSERT INTO world.gameobject VALUES ('166396', '105175', '571', '0', '0', '1', '1', '5789.77', '616.707', '610.774', '0.862449', '-0', '-0', '-0.417984', '-0.908455', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166398', '105175', '571', '0', '0', '1', '1', '5790.74', '616.89', '610.774', '0.088832', '-0', '-0', '-0.0444014', '-0.999014', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166399', '179706', '571', '0', '0', '1', '1', '5791.18', '615.782', '610.774', '0.611122', '-0', '-0', '-0.300828', '-0.953678', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166400', '177747', '571', '0', '0', '1', '1', '5791.03', '615.208', '610.774', '0.0927588', '-0', '-0', '-0.0463631', '-0.998925', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166424', '193981', '571', '0', '0', '1', '1', '5790.51', '616.263', '610.775', '3.5666', '-0', '-0', '-0.977506', '0.210909', '300', '255', '1', '', '0'); -- Lexicon of Power
INSERT INTO world.gameobject VALUES ('166427', '178439', '571', '0', '0', '1', '1', '5792.24', '615.153', '610.774', '3.37588', '-0', '-0', '-0.993147', '0.116876', '300', '255', '1', '', '0'); -- Globus

/************************* Add Ombrok ****************************************/


-- Ombrok der Verschnupfte Script
INSERT INTO world.creature_template VALUES ('43285', '0', '0', '0', '0', '0', '10038', '0', '0', '0', 'Ombrok der Verschnupfte', '', '', '57020', '83', '83', '2', '2', '3', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '2', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '12340');

INSERT INTO world.creature VALUES('213857', '43285', '571', '0', '0', '1', '1', '0', '1', '5813.02', '650.658', '609.886', '4.01124', '300', '0', '0', '5578000', '68128', '0', '0', '134217984', '0', '', '0');

INSERT INTO world.npc_text VALUES ('50016', 'Willkommen in Nordend werter Reisender. Ich bin Ombrok der Verschnupfte.... *Hatschi* Auf dem Schwarzmarkt von Dalaran seht ihr alles, was das Kämpferherz begehrt. Bedient euch, aber bedenkt, dass ihr nicht alles tragen könnt. *Haaaaaaaatschiiii* Gott verdammtes Wetter...', NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '', NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO world.gossip_menu VALUES ('57020','50016','0');

INSERT INTO world.broadcast_text VALUES ('77866', '0', 'Willkommen Reisender', '3', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0');
UPDATE world.npc_text SET BroadcastTextID0 = 77866 WHERE id = 50016;

/************************* Add NPCs ****************************************/

-- Lepragnom
INSERT INTO world.creature VALUES ('213878', '18722', '571', '0', '0', '1', '1', '0', '0', '5783.18', '639.219', '609.158', '2.71286', '300', '0', '0', '102', '0', '0', '0', '0', '0', '', '0');

-- Training Dummys
INSERT INTO world.creature VALUES ('213971', '31146', '571', '0', '0', '1', '1', '0', '0', '5826.22', '695.486', '609.157', '5.44291', '300', '0', '0', '24009944', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213972', '31146', '571', '0', '0', '1', '1', '0', '0', '5834.67', '698.593', '609.157', '4.86957', '300', '0', '0', '24009944', '0', '0', '0', '0', '0', '', '0');


-- Waffenmeister/-lehrer
INSERT INTO world.creature VALUES ('213886', '16621', '571', '0', '0', '1', '1', '0', '0', '5851.19', '690.275', '610.706', '3.78727', '300', '0', '0', '737', '2175', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213885', '11869', '571', '0', '0', '1', '1', '0', '1', '5850.24', '692.126', '610.695', '3.95614', '300', '0', '0', '15505', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213883', '11870', '571', '0', '0', '1', '1', '0', '1', '5847.82', '692.157', '610.718', '4.10615', '300', '0', '0', '15505', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213882', '11868', '571', '0', '0', '1', '1', '0', '1', '5847.42', '693.926', '610.7', '4.14542', '300', '0', '0', '15505', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213881', '2704', '571', '0', '0', '1', '1', '0', '1', '5845.21', '694.264', '610.72', '4.29464', '300', '0', '0', '15505', '0', '0', '0', '0', '0', '', '0');

-- Klassen-Trainer

-- Todesritter
INSERT INTO world.creature VALUES ('213954', '29194', '571', '0', '0', '1', '1', '0', '0', '5747.92', '598.817', '613.759', '0.512955', '300', '0', '0', '126000', '0', '0', '0', '0', '0', '', '0');
-- Krieger
INSERT INTO world.creature VALUES ('213955', '3353', '571', '0', '0', '1', '1', '0', '1', '5762.03', '590.36', '613.659', '0.933142', '300', '0', '0', '4121', '0', '0', '0', '0', '0', '', '0');
-- Paladin
INSERT INTO world.creature VALUES ('213956', '23128', '571', '0', '0', '1', '1', '0', '1', '5765.93', '585.221', '613.769', '0.978691', '300', '0', '0', '6986', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_addon VALUES ('213956', '0', '0', '0', '0', '10', NULL);
-- Druide 
INSERT INTO world.creature VALUES ('213957', '3034', '571', '0', '0', '1', '1', '0', '1', '5756.04', '590.338', '613.745', '0.931567', '300', '0', '0', '4121', '0', '0', '0', '0', '0', '', '0');
-- Schamane
INSERT INTO world.creature VALUES ('213958', '3403', '571', '0', '0', '1', '1', '0', '1', '5762.32', '585.522', '613.747', '0.876589', '300', '0', '0', '1753', '0', '0', '0', '0', '0', '', '0');
-- Priester
INSERT INTO world.creature VALUES ('213959', '16660', '571', '0', '0', '1', '1', '0', '0', '5753.58', '594.444', '613.76', '0.8491', '300', '0', '0', '1077', '3191', '0', '0', '0', '0', '', '0');
-- Schurke
INSERT INTO world.creature VALUES ('213960', '4583', '571', '0', '0', '1', '1', '0', '1', '5770.31', '580.27', '613.755', '1.10828', '300', '0', '0', '2769', '0', '0', '0', '0', '0', '', '0');
-- Magier
INSERT INTO world.creature VALUES ('213966', '5882', '571', '0', '0', '1', '1', '0', '1', '5755.82', '587.042', '613.719', '0.797266', '300', '0', '0', '4121', '0', '0', '0', '0', '0', '', '0');
-- Hexenmeister
INSERT INTO world.creature VALUES ('3461', '3324', '1', '0', '0', '1', '1', '1324', '1', '1844.21', '-4353.61', '-14.5713', '3.31613', '300', '0', '0', '2769', '0', '0', '0', '0', '0', '', '0');
-- Hunter
INSERT INTO world.creature VALUES ('213965', '3406', '571', '0', '0', '1', '1', '0', '1', '5757.63', '584.784', '613.713', '5.61411', '300', '0', '0', '2769', '0', '0', '0', '0', '0', '', '0');

/************************* Schurke Item + Glyphen Händler ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43286', '0', '0', '0', '0', '0', '10732', '0', '0', '0', 'Annika Düster', 'Schurke Ausrüstung', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213866', '43286', '571', '0', '0', '1', '1', '0', '0', '5832.96', '645.357', '609.158', '2.80756', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43286 WHERE guid = 213866;

-- Itemset
INSERT INTO world.npc_vendor VALUES (43286, 0, 50105, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 50089, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 50090, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 50087, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 50088, 0, 0, 0, 0);

-- General Items
INSERT INTO world.npc_vendor VALUES (43286, 0, 45263, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 45609, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 45456, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 47282, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 45162, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 45108, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 45517, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 44893, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 43566, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 47496, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 40694, 0, 0, 0, 0);

-- Weapons
INSERT INTO world.npc_vendor VALUES (43286, 0, 51384, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 51011, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 51788, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 50793, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 50776, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 51385, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 50810, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 50046, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 51021, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 51784, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43286, 0, 51003, 0, 0, 0, 0);


/************************* Magier Item + Glyphen Händler ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43287', '0', '0', '0', '0', '0', '28144', '0', '0', '0', 'Jenn Pillette', 'Magier Ausrüstung', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213870', '43287', '571', '0', '0', '1', '1', '0', '0', '5833.46', '651.336', '609.158', '2.55748', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43287 WHERE guid = 213870;

-- Itemset
INSERT INTO world.npc_vendor  VALUES (43287, 0, 50275, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 50276, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 50277, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 50278, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 50279, 0, 0, 0, 0);

-- General Items
INSERT INTO world.npc_vendor  VALUES (43287, 0, 45617, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 50309, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 45133, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 45242, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 47861, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 47855, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 49232, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 45614, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 47862, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 47879, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 45518, 0, 0, 0, 0);

-- Weapons
INSERT INTO world.npc_vendor  VALUES (43287, 0, 51553, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 51326, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 51582, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 50966, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 50047, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 51788, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43287, 0, 50793, 0, 0, 0, 0);


/************************* Druide Item + Glyphen Händler ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43288', '0', '0', '0', '0', '0', '21106', '0', '0', '0', '<Vorname> Mondschauer', 'Druiden Ausrüstung', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213868', '43288', '571', '0', '0', '1', '1', '0', '0', '5828.42', '640', '609.718', '1.26818', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43288 WHERE guid = 213868;

-- Itemset
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50824, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50825, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50826, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50827, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50828, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50819, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50820, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50821, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50822, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50823, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50106, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50107, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50108, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50109, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50113, 0, 0, 0, 0);


-- General Items
INSERT INTO world.npc_vendor VALUES (43288, 0, 42646, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43288, 0, 43566, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43288, 0, 47496, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43288, 0, 44893, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43288, 0, 41830, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43288, 0, 40694, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43288, 0, 47271, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43288, 0, 42137, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43288, 0, 47732, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43288, 0, 47278, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43288, 0, 45149, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43288, 0, 45618, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43288, 0, 45455, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43288, 0, 45243, 0, 0, 0, 0);
INSERT INTO world.npc_vender VALUES (43288, 0, 45518, 0, 0, 0, 0);

-- Weapon
INSERT INTO world.npc_vendor  VALUES (43288, 0, 51004, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50051, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50810, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 51784, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 51003, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 51562, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50052, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 51582, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50805, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50998, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50966, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 51788, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43288, 0, 50793, 0, 0, 0, 0);

/************************* Hunter Item + Glyphen Händler ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43289', '0', '0', '0', '0', '0', '30686', '0', '0', '0', 'Huntress', 'Jäger Ausrüstung', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213863', '43289', '571', '0', '0', '1', '1', '0', '0', '5807.11', '613.295', '609.157', '3.00001', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43289 WHERE guid = 213863;

-- Itemset
INSERT INTO world.npc_vendor  VALUES (43289, 0, 50114, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43289, 0, 50115, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43289, 0, 50116, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43289, 0, 50117, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43289, 0, 50118, 0, 0, 0, 0);

-- General Items
INSERT INTO world.npc_vendor  VALUES (43289, 0, 40384, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43289, 0, 45517, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43289, 0, 45461, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43289, 0, 47850, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43289, 0, 50270, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43289, 0, 47867, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43289, 0, 46322, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43289, 0, 50271, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43289, 0, 45609, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43289, 0, 48722, 0, 0, 0, 0);

-- Weapon
INSERT INTO world.npc_vendor VALUES (43289, 0, 50776, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43289, 0, 50049, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43289, 0, 51021, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43289, 0, 51384, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43289, 0, 51011, 0, 0, 0, 0);


/************************* Priest Item + Glyphen Händler ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43290', '0', '0', '0', '0', '0', '23546', '0', '0', '0', 'Nachtschatten', 'Priester Ausrüstung', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213867', '43290', '571', '0', '0', '1', '1', '0', '0', '5824.96', '641.363', '609.738', '2.63996', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43290 WHERE guid = 213867;

-- Itemset
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50769, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50768, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50767, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50766, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50765, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50393, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50394, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50396, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50391, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50392, 0, 0, 0, 0);

-- General Items
INSERT INTO world.npc_vendor  VALUES (43290, 0, 45133, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 45243, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 45495, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 49486, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 45614, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 47618, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 45518, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 45535, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 47726, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 47880, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 45170, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 45511, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 45617, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 45115, 0, 0, 0, 0);

-- Weapons
INSERT INTO world.npc_vendor  VALUES (43290, 0, 51004, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50051, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50805, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 51582, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50966, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 51788, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50793, 0, 0, 0, 0);


/************************* Hexenmeister Item + Glyphen Händler ****************************************/

-- Händler
UPDATE world.creature_template SET subname = "Hexenmeister Ausrüstung" WHERE entry = 32334;
DELETE FROM world.npc_vendor WHERE entry = 32334;

-- Itemset
INSERT INTO world.npc_vendor  VALUES (32334, 0, 50240, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (32334, 0, 50241, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (32334, 0, 50242, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (32334, 0, 50243, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (32334, 0, 50244, 0, 0, 0, 0);

-- General Items
INSERT INTO world.npc_vendor  VALUES (32334, 0, 47663, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (32334, 0, 47855, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (32334, 0, 45242, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (32334, 0, 45133, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (32334, 0, 45614, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (32334, 0, 47618, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (32334, 0, 45518, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (32334, 0, 47879, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (32334, 0, 45511, 0, 0, 0, 0);

-- Weapon
INSERT INTO world.npc_vendor  VALUES (32334, 0, 50047, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (32334, 0, 51582, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (32334, 0, 50966, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (32334, 0, 51788, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (32334, 0, 50793, 0, 0, 0, 0);


/************************* Warrior Item + Glyphen Händler ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43292', '0', '0', '0', '0', '0', '22328', '0', '0', '0', 'Facepalm', 'Krieger Ausrüstung', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213861', '43292', '571', '0', '0', '1', '1', '0', '0', '5811.71', '619.659', '609.158', '2.18948', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43292 WHERE guid = 213861;

-- Itemset
INSERT INTO world.npc_vendor  VALUES (43292, 0, 50846, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 50847, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 50848, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 50849, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 50850, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 50078, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 50079, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 50080, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 50081, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 50082, 0, 0, 0, 0);

-- General Items
INSERT INTO world.npc_vendor  VALUES (43292, 0, 45540, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 45534, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 47297, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 45588, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 45241, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 40330, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 45501, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 45587, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 46038, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 45522, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 45313, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 49487, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 47731, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 45471, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 49492, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 45496, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 45139, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 45111, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 50207, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 37692, 0, 0, 0, 0);

-- Weapon
INSERT INTO world.npc_vendor  VALUES (43292, 0, 51834, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 50759, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 50787, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 50760, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 50048, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 50798, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 51562, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43292, 0, 50761, 0, 0, 0, 0);


/************************* Deathknight Item + Glyphen Händler ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43293', '0', '0', '0', '0', '0', '28195', '0', '0', '0', 'Maade Jha', 'Todesritter Ausrüstung', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213864', '43293', '571', '0', '0', '1', '1', '0', '0', '5801.13', '602.739', '609.158', '1.84617', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43293 WHERE guid = 213864;

-- Itemset
INSERT INTO world.npc_vendor  VALUES (43293, 0, 50853, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43293, 0, 50854, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43293, 0, 50855, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43293, 0, 50856, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43293, 0, 50857, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43293, 0, 50094, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43293, 0, 50095, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43293, 0, 50096, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43293, 0, 50097, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43293, 0, 50098, 0, 0, 0, 0);

-- General Items
INSERT INTO world.npc_vendor VALUES (43293, 0, 47232, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 45663, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 45559, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 49808, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 47725, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 47881, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 47727, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 47882, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 45534, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 50306, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 45471, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 47700, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 47297, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 45485, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 47672, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 47673, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 45144, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 48722, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 40402, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 50290, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 47275, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 47852, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 47870, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 47885, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 47731, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43293, 0, 47735, 0, 0, 0, 0);


-- Weapon
INSERT INTO world.npc_vendor  VALUES (43293, 0, 50048, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43293, 0, 51562, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43293, 0, 50761, 0, 0, 0, 0);


/************************* Schamane Item ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43295', '0', '0', '0', '0', '0', '28196', '0', '0', '0', 'Schami', 'Schamanen Ausrüstung', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213890', '43295', '571', '0', '0', '1', '1', '0', '0', '5808.81', '616.761', '609.158', '2.56481', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43295 WHERE guid = 213890;

-- Itemset
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50835, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50836, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50837, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50838, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50839, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50841, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50842, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50843, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50844, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50845, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50830, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50831, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50832, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50833, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50834, 0, 0, 0, 0);

-- General Items
INSERT INTO world.npc_vendor  VALUES (43295, 0, 47665, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 47666, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 47667, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 45133, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 45243, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 45517, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 45461, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 45486, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 45618, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 45460, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50209, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 47866, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50270, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 45244, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 45615, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 45495, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 46322, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 45614, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 47618, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 47703, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 45518, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 45535, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 45609, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 47879, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 47880, 0, 0, 0, 0);

-- Weapon
INSERT INTO world.npc_vendor  VALUES (43295, 0, 51004, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50051, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 51784, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 51003, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 51582, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50998, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50966, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 51788, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50793, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43295, 0, 50805, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43295, 0, 47287, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43295, 0, 45887, 0, 0, 0, 0);


/************************* Paladin Item ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43296', '0', '0', '0', '0', '0', '18668', '0', '0', '0', 'Pali', 'Schamanen Ausrüstung', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213891', '43296', '571', '0', '0', '1', '1', '0', '0', '5802.64', '611.225', '609.158', '2.50805', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43296 WHERE guid = 213891;

-- Itemset
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50860, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50861, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50862, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50863, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50864, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50865, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50866, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50867, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50868, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50869, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50324, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50325, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50326, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50327, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50328, 0, 0, 0, 0);

-- General Items
INSERT INTO world.npc_vendor  VALUES (43296, 0, 43285, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 37291, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 37288, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 37670, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 40585, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 37192, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 37844, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 37728, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 37682, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 37379, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 37712, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 37847, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 43282, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 37186, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 38617, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 37220, 0, 0, 0, 0); --
INSERT INTO world.npc_vendor  VALUES (43296, 0, 37397, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 47232, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 37874, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 37178, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 37367, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 44935, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 37151, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 37390, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 45663, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50455, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50460, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50461, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43296, 0, 40401, 0, 0, 0, 0);

-- Weapon
INSERT INTO world.npc_vendor  VALUES (43296, 0, 51004, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50760, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50051, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50047, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50048, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50798, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 51562, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43296, 0, 50761, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43296, 0, 45587, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43296, 0, 47276, 0, 0, 0, 0);

/************************* Glyphen Händler ****************************************/

-- Priester - Händler
INSERT INTO world.creature_template VALUES ('43294', '0', '0', '0', '0', '0', '27286', '0', '0', '0', 'Xantili', 'Glyphen (Priester)', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213887', '43294', '571', '0', '0', '1', '1', '0', '0', '5772.59', '621.513', '609.886', '5.22767', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43294 WHERE guid = 213887;

-- Glyphen
INSERT INTO world.npc_vendor VALUES (43294, 0, 42404, 0, 0, 0, 0), (43294, 0, 42414, 0, 0, 0, 0), (43294, 0, 42396, 0, 0, 0, 0), 
(43294, 0, 45753, 0, 0, 0, 0), (43294, 0, 45755, 0, 0, 0, 0), (43294, 0, 45756, 0, 0, 0, 0), (43294, 0, 45757, 0, 0, 0, 0), 
(43294, 0, 45758, 0, 0, 0, 0), (43294, 0, 45760, 0, 0, 0, 0), (43294, 0, 42405, 0, 0, 0, 0), (43294, 0, 42409, 0, 0, 0, 0),
(43294, 0, 42417, 0, 0, 0, 0), (43294, 0, 42399, 0, 0, 0, 0), (43294, 0, 42400, 0, 0, 0, 0), (43294, 0, 42401, 0, 0, 0, 0), 
(43294, 0, 42407, 0, 0, 0, 0), (43294, 0, 42412, 0, 0, 0, 0), (43294, 0, 42410, 0, 0, 0, 0), (43294, 0, 42402, 0, 0, 0, 0),
(43294, 0, 42406, 0, 0, 0, 0), (43294, 0, 42398, 0, 0, 0, 0), (43294, 0, 42411, 0, 0, 0, 0), (43294, 0, 43374, 0, 0, 0, 0),
(43294, 0, 43370, 0, 0, 0, 0), (43294, 0, 43372, 0, 0, 0, 0), (43294, 0, 42397, 0, 0, 0, 0), (43294, 0, 43373, 0, 0, 0, 0),
(43294, 0, 42415, 0, 0, 0, 0), (43294, 0, 42408, 0, 0, 0, 0), (43294, 0, 42416, 0, 0, 0, 0), (43294, 0, 43342, 0, 0, 0, 0),
(43294, 0, 43371, 0, 0, 0, 0);

-- Schurke - Händler
INSERT INTO world.creature_template VALUES ('43297', '0', '0', '0', '0', '0', '21022', '0', '0', '0', 'Schuri Glyph', 'Glyphen (Schurke)', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213895', '43297', '571', '0', '0', '1', '1', '0', '0', '5791.82', '611.946', '609.887', '3.51318', '300', '0', '0', '5040000', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43297 WHERE guid = 213895;

-- Glyphen
INSERT INTO world.npc_vendor VALUES (43297, 0, 42971, 0, 0, 0, 0), (43297, 0, 42959, 0, 0, 0, 0), (43297, 0, 42954, 0, 0, 0, 0),
(43297, 0, 45761, 0, 0, 0, 0), (43297, 0, 45762, 0, 0, 0, 0), (43297, 0, 45764, 0, 0, 0, 0), (43297, 0, 45766, 0, 0, 0, 0),
(43297, 0, 45767, 0, 0, 0, 0), (43297, 0, 45768, 0, 0, 0, 0), (43297, 0, 45769, 0, 0, 0, 0), (43297, 0, 45908, 0, 0, 0, 0),
(43297, 0, 43378, 0, 0, 0, 0), (43297, 0, 42957, 0, 0, 0, 0), (43297, 0, 42967, 0, 0, 0, 0), (43297, 0, 42968, 0, 0, 0, 0),
(43297, 0, 42958, 0, 0, 0, 0), (43297, 0, 42965, 0, 0, 0, 0), (43297, 0, 42969, 0, 0, 0, 0), (43297, 0, 42955, 0, 0, 0, 0),
(43297, 0, 43376, 0, 0, 0, 0), (43297, 0, 43380, 0, 0, 0, 0), (43297, 0, 42963, 0, 0, 0, 0), (43297, 0, 42962, 0, 0, 0, 0),
(43297, 0, 42964, 0, 0, 0, 0), (43297, 0, 43377, 0, 0, 0, 0), (43297, 0, 42970, 0, 0, 0, 0), (43297, 0, 42973, 0, 0, 0, 0),
(43297, 0, 42974, 0, 0, 0, 0), (43297, 0, 42960, 0, 0, 0, 0), (43297, 0, 42966, 0, 0, 0, 0), (43297, 0, 43379, 0, 0, 0, 0),
(43297, 0, 42956, 0, 0, 0, 0), (43297, 0, 42961, 0, 0, 0, 0), (43297, 0, 42972, 0, 0, 0, 0), (43297, 0, 43343, 0, 0, 0, 0);


-- Magier - Händler
INSERT INTO world.creature_template VALUES ('43298', '0', '0', '0', '0', '0', '22387', '0', '0', '0', 'Magi Glyph', 'Glyphen (Magier)', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213898', '43298', '571', '0', '0', '1', '1', '0', '0', '5792.37', '604.526', '609.887', '2.85188', '300', '0', '0', '5040000', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43298 WHERE guid = 213898;

-- Glyphen
INSERT INTO world.npc_vendor VALUES (43298, 0, 44684, 0, 0, 0, 0), (43298, 0, 42748, 0, 0, 0, 0), (43298, 0, 42745, 0, 0, 0, 0),
(43298, 0, 44920, 0, 0, 0, 0), (43298, 0, 42751, 0, 0, 0, 0), (43298, 0, 44955, 0, 0, 0, 0), (43298, 0, 42754, 0, 0, 0, 0),
(43298, 0, 50045, 0, 0, 0, 0), (43298, 0, 42736, 0, 0, 0, 0), (43298, 0, 45736, 0, 0, 0, 0), (43298, 0, 45737, 0, 0, 0, 0),
(43298, 0, 45738, 0, 0, 0, 0), (43298, 0, 45739, 0, 0, 0, 0), (43298, 0, 45740, 0, 0, 0, 0), (43298, 0, 42749, 0, 0, 0, 0),
(43298, 0, 42744, 0, 0, 0, 0), (43298, 0, 42750, 0, 0, 0, 0), (43298, 0, 42737, 0, 0, 0, 0), (43298, 0, 42738, 0, 0, 0, 0),
(43298, 0, 42746, 0, 0, 0, 0), (43298, 0, 42747, 0, 0, 0, 0), (43298, 0, 42753, 0, 0, 0, 0), (43298, 0, 43360, 0, 0, 0, 0),
(43298, 0, 43357, 0, 0, 0, 0), (43298, 0, 42734, 0, 0, 0, 0), (43298, 0, 42741, 0, 0, 0, 0), (43298, 0, 42743, 0, 0, 0, 0),
(43298, 0, 39302, 0, 0, 0, 0), (43298, 0, 42735, 0, 0, 0, 0), (43298, 0, 42752, 0, 0, 0, 0), (43298, 0, 43364, 0, 0, 0, 0),
(43298, 0, 42740, 0, 0, 0, 0), (43298, 0, 42742, 0, 0, 0, 0), (43298, 0, 43361, 0, 0, 0, 0), (43298, 0, 43362, 0, 0, 0, 0),
(43298, 0, 42739, 0, 0, 0, 0), (43298, 0, 43339, 0, 0, 0, 0), (43298, 0, 43359, 0, 0, 0, 0);

-- Krieger - Händler
INSERT INTO world.creature_template VALUES ('43299', '0', '0', '0', '0', '0', '19905', '0', '0', '0', 'Kriegi Glyph', 'Glyphen (Krieger)', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213899', '43299', '571', '0', '0', '1', '1', '0', '0', '5789.13', '597.448', '609.887', '2.4637', '300', '0', '0', '5040000', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template_addon VALUES (43299, 0, 0, 1, 0, 0, NULL); -- let Vendor sit
UPDATE world.creature SET id = 43299 WHERE guid = 213899;

-- Glyphen
INSERT INTO world.npc_vendor VALUES (43299, 0, 43419, 0, 0, 0, 0), (43299, 0, 49084, 0, 0, 0, 0), (43299, 0, 43400, 0, 0, 0, 0),
(43299, 0, 43415, 0, 0, 0, 0), (43299, 0, 45790, 0, 0, 0, 0), (43299, 0, 45792, 0, 0, 0, 0), (43299, 0, 45793, 0, 0, 0, 0),
(43299, 0, 45794, 0, 0, 0, 0), (43299, 0, 45795, 0, 0, 0, 0), (43299, 0, 45797, 0, 0, 0, 0), (43299, 0, 43412, 0, 0, 0, 0),
(43299, 0, 43421, 0, 0, 0, 0), (43299, 0, 43425, 0, 0, 0, 0), (43299, 0, 43432, 0, 0, 0, 0), (43299, 0, 43428, 0, 0, 0, 0),
(43299, 0, 43416, 0, 0, 0, 0), (43299, 0, 43414, 0, 0, 0, 0), (43299, 0, 43426, 0, 0, 0, 0), (43299, 0, 43398, 0, 0, 0, 0),
(43299, 0, 43420, 0, 0, 0, 0), (43299, 0, 43431, 0, 0, 0, 0), (43299, 0, 43424, 0, 0, 0, 0), (43299, 0, 43422, 0, 0, 0, 0),
(43299, 0, 43396, 0, 0, 0, 0), (43299, 0, 43427, 0, 0, 0, 0), (43299, 0, 43429, 0, 0, 0, 0), (43299, 0, 43417, 0, 0, 0, 0),
(43299, 0, 43399, 0, 0, 0, 0), (43299, 0, 43430, 0, 0, 0, 0), (43299, 0, 43397, 0, 0, 0, 0), (43299, 0, 43413, 0, 0, 0, 0),
(43299, 0, 43423, 0, 0, 0, 0), (43299, 0, 43395, 0, 0, 0, 0), (43299, 0, 43418, 0, 0, 0, 0);


-- Paladin - Händler
INSERT INTO world.creature_template VALUES ('43300', '0', '0', '0', '0', '0', '22968', '0', '0', '0', 'Pali Glyph', 'Glyphen (Paladin)', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213900', '43300', '571', '0', '0', '1', '1', '0', '0', '5782.65', '591.99', '609.886', '1.72916', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0'w);
UPDATE world.creature SET id = 43300 WHERE guid = 213900;

-- Glyphen
INSERT INTO world.npc_vendor VALUES (43300, 0, 41107, 0, 0, 0, 0), (43300, 0, 41101, 0, 0, 0, 0), (43300, 0, 43867, 0, 0, 0, 0),
(43300, 0, 43868, 0, 0, 0, 0), (43300, 0, 43869, 0, 0, 0, 0), (43300, 0, 41097, 0, 0, 0, 0), (43300, 0, 45741, 0, 0, 0, 0),
(43300, 0, 45742, 0, 0, 0, 0), (43300, 0, 45743, 0, 0, 0, 0), (43300, 0, 45744, 0, 0, 0, 0), (43300, 0, 45745, 0, 0, 0, 0),
(43300, 0, 45746, 0, 0, 0, 0), (43300, 0, 45747, 0, 0, 0, 0), (43300, 0, 41109, 0, 0, 0, 0), (43300, 0, 41104, 0, 0, 0, 0),
(43300, 0, 41110, 0, 0, 0, 0), (43300, 0, 43369, 0, 0, 0, 0), (43300, 0, 41102, 0, 0, 0, 0), (43300, 0, 41094, 0, 0, 0, 0),
(43300, 0, 41098, 0, 0, 0, 0), (43300, 0, 41099, 0, 0, 0, 0), (43300, 0, 41103, 0, 0, 0, 0), (43300, 0, 41105, 0, 0, 0, 0),
(43300, 0, 43365, 0, 0, 0, 0), (43300, 0, 43368, 0, 0, 0, 0), (43300, 0, 41100, 0, 0, 0, 0), (43300, 0, 41096, 0, 0, 0, 0),
(43300, 0, 41108, 0, 0, 0, 0), (43300, 0, 43366, 0, 0, 0, 0), (43300, 0, 41095, 0, 0, 0, 0), (43300, 0, 43367, 0, 0, 0, 0),
(43300, 0, 41092, 0, 0, 0, 0), (43300, 0, 41106, 0, 0, 0, 0), (43300, 0, 43340, 0, 0, 0, 0);


-- Hunter - Händler
INSERT INTO world.creature_template VALUES ('43306', '0', '0', '0', '0', '0', '32467', '0', '0', '0', 'Hunti Glyph', 'Glyphen (Hunter)', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213914', '43306', '571', '0', '0', '1', '1', '0', '1', '5776.01', '592.315', '609.887', '1.49788', '300', '0', '0', '10635', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43306 WHERE guid = 213914;


-- Equip
INSERT INTO world.creature_equip_template VALUES ('43306','1','18282','0','0','0');

-- Glyphen
INSERT INTO world.npc_vendor VALUES (43306, 0, 42913, 0, 0, 0, 0), (43306, 0, 42914, 0, 0, 0, 0), (43306, 0, 42902, 0, 0, 0, 0),
(43306, 0, 42915, 0, 0, 0, 0), (43306, 0, 42916, 0, 0, 0, 0), (43306, 0, 42917, 0, 0, 0, 0), (43306, 0, 45625, 0, 0, 0, 0),
(43306, 0, 45731, 0, 0, 0, 0), (43306, 0, 45732, 0, 0, 0, 0), (43306, 0, 45733, 0, 0, 0, 0), (43306, 0, 45734, 0, 0, 0, 0),
(43306, 0, 45735, 0, 0, 0, 0), (43306, 0, 43355, 0, 0, 0, 0), (43306, 0, 42899, 0, 0, 0, 0), (43306, 0, 43351, 0, 0, 0, 0),
(43306, 0, 42906, 0, 0, 0, 0), (43306, 0, 42911, 0, 0, 0, 0), (43306, 0, 42897, 0, 0, 0, 0), (43306, 0, 42903, 0, 0, 0, 0),
(43306, 0, 42904, 0, 0, 0, 0), (43306, 0, 42905, 0, 0, 0, 0), (43306, 0, 42910, 0, 0, 0, 0), (43306, 0, 42908, 0, 0, 0, 0),
(43306, 0, 42901, 0, 0, 0, 0), (43306, 0, 42909, 0, 0, 0, 0), (43306, 0, 43338, 0, 0, 0, 0), (43306, 0, 43354, 0, 0, 0, 0),
(43306, 0, 43356, 0, 0, 0, 0), (43306, 0, 43350, 0, 0, 0, 0), (43306, 0, 42898, 0, 0, 0, 0), (43306, 0, 42907, 0, 0, 0, 0),
(43306, 0, 42900, 0, 0, 0, 0), (43306, 0, 42912, 0, 0, 0, 0);


-- Todesritter - Händler
INSERT INTO world.creature_template VALUES ('43302', '0', '0', '0', '0', '0', '25478', '0', '0', '0', 'Todi Glyph', 'Glyphen (Todesritter)', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213902', '43302', '571', '0', '0', '1', '1', '0', '0', '5767.62', '595.098', '609.887', '0.888785', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43302 WHERE guid = 213902;

-- Glyphen
INSERT INTO world.npc_vendor VALUES (43302, 0, 43533, 0, 0, 0, 0), (43302, 0, 43534, 0, 0, 0, 0), (43302, 0, 43535, 0, 0, 0, 0),
(43302, 0, 43536, 0, 0, 0, 0), (43302, 0, 43537, 0, 0, 0, 0), (43302, 0, 43538, 0, 0, 0, 0), (43302, 0, 43539, 0, 0, 0, 0),
(43302, 0, 43541, 0, 0, 0, 0), (43302, 0, 43542, 0, 0, 0, 0), (43302, 0, 43543, 0, 0, 0, 0), (43302, 0, 43544, 0, 0, 0, 0),
(43302, 0, 43545, 0, 0, 0, 0), (43302, 0, 43546, 0, 0, 0, 0), (43302, 0, 43547, 0, 0, 0, 0), (43302, 0, 43548, 0, 0, 0, 0),
(43302, 0, 43549, 0, 0, 0, 0), (43302, 0, 43550, 0, 0, 0, 0), (43302, 0, 43551, 0, 0, 0, 0), (43302, 0, 43552, 0, 0, 0, 0),
(43302, 0, 43553, 0, 0, 0, 0), (43302, 0, 43554, 0, 0, 0, 0), (43302, 0, 43671, 0, 0, 0, 0), (43302, 0, 43672, 0, 0, 0, 0),
(43302, 0, 43673, 0, 0, 0, 0), (43302, 0, 43825, 0, 0, 0, 0), (43302, 0, 43826, 0, 0, 0, 0), (43302, 0, 43827, 0, 0, 0, 0),
(43302, 0, 44432, 0, 0, 0, 0), (43302, 0, 45799, 0, 0, 0, 0), (43302, 0, 45800, 0, 0, 0, 0), (43302, 0, 45803, 0, 0, 0, 0),
(43302, 0, 45804, 0, 0, 0, 0), (43302, 0, 45805, 0, 0, 0, 0), (43302, 0, 45806, 0, 0, 0, 0);


-- Schamane - Händler
INSERT INTO world.creature_template VALUES ('43303', '0', '0', '0', '0', '0', '17626', '0', '0', '0', 'Schami Glyph', 'Glyphen (Schamane)', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213903', '43303', '571', '0', '0', '1', '1', '0', '1', '5764', '601.829', '609.886', '0.300928', '300', '0', '0', '5040000', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43303 WHERE guid = 213903;
INSERT INTO world.creature_equip_template VALUES ('43303', '1', '1406', '0', '0', '0');

-- Glyphen
INSERT INTO world.npc_vendor VALUES (43303, 0, 41529, 0, 0, 0, 0), (43303, 0, 41524, 0, 0, 0, 0), (43303, 0, 44923, 0, 0, 0, 0),
(43303, 0, 41552, 0, 0, 0, 0), (43303, 0, 41517, 0, 0, 0, 0), (43303, 0, 41538, 0, 0, 0, 0), (43303, 0, 41539, 0, 0, 0, 0),
(43303, 0, 45770, 0, 0, 0, 0), (43303, 0, 45771, 0, 0, 0, 0), (43303, 0, 45772, 0, 0, 0, 0), (43303, 0, 45775, 0, 0, 0, 0),
(43303, 0, 45776, 0, 0, 0, 0), (43303, 0, 45777, 0, 0, 0, 0), (43303, 0, 45778, 0, 0, 0, 0), (43303, 0, 41518, 0, 0, 0, 0),
(43303, 0, 41527, 0, 0, 0, 0), (43303, 0, 41542, 0, 0, 0, 0), (43303, 0, 43381, 0, 0, 0, 0), (43303, 0, 43385, 0, 0, 0, 0),
(43303, 0, 43388, 0, 0, 0, 0), (43303, 0, 41533, 0, 0, 0, 0), (43303, 0, 41535, 0, 0, 0, 0), (43303, 0, 41541, 0, 0, 0, 0),
(43303, 0, 41547, 0, 0, 0, 0), (43303, 0, 43344, 0, 0, 0, 0), (43303, 0, 43386, 0, 0, 0, 0), (43303, 0, 41530, 0, 0, 0, 0),
(43303, 0, 43725, 0, 0, 0, 0), (43303, 0, 41531, 0, 0, 0, 0), (43303, 0, 41532, 0, 0, 0, 0), (43303, 0, 41540, 0, 0, 0, 0),
(43303, 0, 41537, 0, 0, 0, 0), (43303, 0, 41526, 0, 0, 0, 0), (43303, 0, 41534, 0, 0, 0, 0), (43303, 0, 41536, 0, 0, 0, 0);


-- Hexenmeister - Händler
INSERT INTO world.creature_template VALUES ('43304', '0', '0', '0', '0', '0', '23040', '0', '0', '0', 'Hexi Glyph', 'Glyphen (Hexenmeister)', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213904', '43304', '571', '0', '0', '1', '1', '0', '1', '5761.17', '609.105', '609.886', '6.28055', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43304 WHERE guid = 213904;
INSERT INTO world.creature_equip_template VALUES ('43304','1','30310','0','0','0');

-- Glyphen
INSERT INTO world.npc_vendor VALUES (43304, 0, 43392, 0, 0, 0, 0), (43304, 0, 43394, 0, 0, 0, 0), (43304, 0, 42459, 0, 0, 0, 0),
(43304, 0, 42472, 0, 0, 0, 0), (43304, 0, 42457, 0, 0, 0, 0), (43304, 0, 42454, 0, 0, 0, 0), (43304, 0, 42463, 0, 0, 0, 0),
(43304, 0, 45779, 0, 0, 0, 0), (43304, 0, 45780, 0, 0, 0, 0), (43304, 0, 45781, 0, 0, 0, 0), (43304, 0, 45782, 0, 0, 0, 0),
(43304, 0, 45783, 0, 0, 0, 0), (43304, 0, 45785, 0, 0, 0, 0), (43304, 0, 45789, 0, 0, 0, 0), (43304, 0, 42460, 0, 0, 0, 0),
(43304, 0, 42469, 0, 0, 0, 0), (43304, 0, 42453, 0, 0, 0, 0), (43304, 0, 42471, 0, 0, 0, 0), (43304, 0, 43393, 0, 0, 0, 0),
(43304, 0, 42468, 0, 0, 0, 0), (43304, 0, 42466, 0, 0, 0, 0), (43304, 0, 42470, 0, 0, 0, 0), (43304, 0, 43391, 0, 0, 0, 0),
(43304, 0, 42461, 0, 0, 0, 0), (43304, 0, 42455, 0, 0, 0, 0), (43304, 0, 42462, 0, 0, 0, 0), (43304, 0, 42473, 0, 0, 0, 0),
(43304, 0, 50077, 0, 0, 0, 0), (43304, 0, 42456, 0, 0, 0, 0), (43304, 0, 42458, 0, 0, 0, 0), (43304, 0, 42465, 0, 0, 0, 0),
(43304, 0, 43390, 0, 0, 0, 0), (43304, 0, 42464, 0, 0, 0, 0), (43304, 0, 42467, 0, 0, 0, 0), (43304, 0, 43389, 0, 0, 0, 0);


-- Druide - Händler
INSERT INTO world.creature_template VALUES ('43305', '0', '0', '0', '0', '0', '17285', '0', '0', '0', 'Drudi Glyph', 'Glyphen (Druide)', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213905', '43305', '571', '0', '0', '1', '1', '0', '0', '5766.08', '616.44', '609.886', '5.40501', '300', '0', '0', '5040000', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43305 WHERE guid = 213905;

-- Glyphen
INSERT INTO world.npc_vendor VALUES (43305, 0, 40915, 0, 0, 0, 0), (43305, 0, 44928, 0, 0, 0, 0), (43305, 0, 44922, 0, 0, 0, 0),
(43305, 0, 40921, 0, 0, 0, 0), (43305, 0, 40900, 0, 0, 0, 0), (43305, 0, 40906, 0, 0, 0, 0), (43305, 0, 40908, 0, 0, 0, 0),
(43305, 0, 40920, 0, 0, 0, 0), (43305, 0, 45601, 0, 0, 0, 0), (43305, 0, 45602, 0, 0, 0, 0), (43305, 0, 45603, 0, 0, 0, 0),
(43305, 0, 45604, 0, 0, 0, 0), (43305, 0, 45622, 0, 0, 0, 0), (43305, 0, 45623, 0, 0, 0, 0), (43305, 0, 40896, 0, 0, 0, 0),
(43305, 0, 43334, 0, 0, 0, 0), (43305, 0, 40903, 0, 0, 0, 0), (43305, 0, 40901, 0, 0, 0, 0), (43305, 0, 40902, 0, 0, 0, 0),
(43305, 0, 40909, 0, 0, 0, 0), (43305, 0, 40916, 0, 0, 0, 0), (43305, 0, 40919, 0, 0, 0, 0), (43305, 0, 43331, 0, 0, 0, 0),
(43305, 0, 43316, 0, 0, 0, 0), (43305, 0, 43674, 0, 0, 0, 0), (43305, 0, 46372, 0, 0, 0, 0), (43305, 0, 48720, 0, 0, 0, 0),
(43305, 0, 40912, 0, 0, 0, 0), (43305, 0, 40899, 0, 0, 0, 0), (43305, 0, 40923, 0, 0, 0, 0), (43305, 0, 43332, 0, 0, 0, 0),
(43305, 0, 40897, 0, 0, 0, 0), (43305, 0, 40914, 0, 0, 0, 0), (43305, 0, 40924, 0, 0, 0, 0), (43305, 0, 40913, 0, 0, 0, 0),
(43305, 0, 50125, 0, 0, 0, 0), (43305, 0, 40922, 0, 0, 0, 0), (43305, 0, 43335, 0, 0, 0, 0);

/************************* Essen/Bandagen ****************************************/
-- Händler
INSERT INTO world.creature_template VALUES ('43326', '0', '0', '0', '0', '0', '17285', '0', '0', '0', 'McDonalds', 'Essen und Bandagen', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213980', '32334', '571', '0', '0', '1', '1', '0', '0', '5842.5', '674.336', '609.887', '3.29215', '300', '0', '0', '5617', '7981', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43326 WHERE guid = 213980;

INSERT INTO world.npc_vendor VALUES (43326, 0, 34753, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43326, 0, 38640, 0, 0, 0, 0);


/************************* Trankhändler ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43291', '0', '0', '0', '0', '0', '1390', '0', '0', '0', 'Zosimus', 'Tränke & Elixiere', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213874', '43291', '571', '0', '0', '1', '1', '0', '0', '5783.53', '630.242', '609.158', '4.73913', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43291 WHERE guid = 213874;

-- Tränke
INSERT INTO world.npc_vendor  VALUES (43291, 0, 46379, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43291, 0, 46378, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43291, 0, 46377, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43291, 0, 46376, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43291, 0, 33447, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43291, 0, 33448, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43291, 0, 13442, 0, 0, 0, 0);


/************************* Gifthändler ****************************************/
INSERT INTO world.creature VALUES ('213976', '4585', '571', '0', '0', '1', '1', '0', '1', '5783.16', '625.29', '609.158', '1.93217', '300', '0', '0', '1003', '0', '0', '0', '0', '0', '', '0');


/************************* Pfeilhändler ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43308', '0', '0', '0', '0', '0', '3608', '0', '0', '0', 'William Wallace', 'Pfeile & Bolzen', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213923', '43308', '571', '0', '0', '1', '1', '0', '1', '5823.02', '685.34', '609.886', '4.35042', '300', '0', '0', '10635', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43308 WHERE guid = 213923;
INSERT INTO world.creature_equip_template VALUES ('43308', '1', '42445', '0', '0', '0');

-- Pfeile

INSERT INTO world.npc_vendor VALUES (43308, 0, 52021, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43308, 0, 52020, 0, 0, 0, 0);


/************************* Edelsteinhändler ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43309', '0', '0', '0', '0', '0', '4979', '0', '0', '0', 'Lady Cartier', 'Edelsteine & Glänzig', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213941', '43309', '571', '0', '0', '1', '1', '0', '1', '5791.3', '658.024', '609.158', '5.36514', '300', '0', '0', '10635', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43309 WHERE guid = 213941;

-- Edelsteine

INSERT INTO world.npc_vendor VALUES (43309, 0, 40119, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 40120, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 40121, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 40122, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 40123, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 40124, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 40125, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 40126, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 40127, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 40128, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41285, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41307, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41333, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41335, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41339, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41375, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41376, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41377, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41378, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41379, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41400, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41380, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41381, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41382, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41385, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41389, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41395, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41396, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41397, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41398, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 41401, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 49110, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 40111, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 40112, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 40113, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 40114, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 40115, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 40116, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 40117, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43309, 0, 40118, 0, 0, 0, 0);


/************************* Tiernahrung Händler ****************************************/

-- Händler
--

-- Items
INSERT INTO world.npc_vendor VALUES (28951, 0, 33454, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (28951, 0, 35949, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (28951, 0, 35947, 0, 0, 0, 0);


/************************* Reagenzien-Händler ****************************************/

INSERT INTO world.creature_template VALUES ('43325', '0', '0', '0', '0', '0', '6446', '0', '0', '0', 'Zonkos Scherzartikel', 'Reagenzien', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213973', '43325', '571', '0', '0', '1', '1', '0', '0', '5848.98', '663.385', '609.158', '2.8731', '300', '0', '0', '5617', '7981', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43325 WHERE guid = 213973;

INSERT INTO world.npc_vendor VALUES (43325, 0, 17031, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 17032, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 17020, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 17056, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 17034, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 17030, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 17057, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 17058, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 17028, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 44614, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 44605, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 21177, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 17033, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 22147, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 22148, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 44615, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 16583, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 17026, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 17029, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 17038, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 5565, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 37201, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 17024, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 17037, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 8147, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 17019, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 2927, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 17036, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 5518, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 17035, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 5654, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43325, 0, 5517, 0, 0, 0, 0);

/************************* Hunter-Pets ****************************************/

-- DELETE old
DELETE FROM world.creature WHERE guid = 97709;
DELETE FROM world.creature WHERE guid = 208788;
DELETE FROM world.creature WHERE guid = 208787;
DELETE FROM world.creature WHERE guid = 97653;
DELETE FROM world.creature WHERE guid = 97556;
DELETE FROM world.creature WHERE guid = 97503;

-- Gerissenheit-Pets
INSERT INTO world.creature VALUES ('213950', '43310', '571', '0', '0', '1', '1', '0', '0', '5853.33', '551.604', '652.656', '1.96827', '3', '0', '0', '42', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template VALUES ('43310', '0', '0', '0', '0', '0', '4767', '0', '0', '0', 'Tamable Serpent', '', '', '0', '80', '80', '0', '7', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '35', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');
INSERT INTO world.creature VALUES ('213953', '43311', '571', '0', '0', '1', '1', '0', '0', '5855.58', '547.243', '652.656', '1.85439', '3', '0', '0', '42', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template VALUES ('43311', '0', '0', '0', '0', '0', '23520', '0', '0', '0', 'Tamable Spider', '', '', '0', '80', '80', '0', '7', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '3', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');
INSERT INTO world.creature VALUES ('213949', '43312', '571', '0', '0', '1', '1', '0', '0', '5848.01', '551.309', '652.656', '0.224703', '3', '0', '0', '42', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template VALUES ('43312', '0', '0', '0', '0', '0', '20833', '0', '0', '0', 'Tamable Sporebat', '', '', '0', '80', '80', '0', '7', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '33', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');
INSERT INTO world.creature VALUES ('213940', '43313', '571', '0', '0', '1', '1', '0', '0', '5851.73', '548.228', '652.656', '1.3596', '3', '0', '0', '42', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template VALUES ('43313', '0', '0', '0', '0', '0', '1561', '0', '0', '0', 'Tamable Silithid (exotisch)', '', '', '0', '80', '80', '0', '7', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '41', '0', '0', '0', '0', '1', '65537', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');
INSERT INTO world.creature VALUES ('213939', '43314', '571', '0', '0', '1', '1', '0', '0', '5852.09', '543.549', '652.656', '1.58344', '3', '0', '0', '42', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template VALUES ('43314', '0', '0', '0', '0', '0', '28646', '0', '0', '0', 'Tamable Chimaera (exotisch)', '', '', '0', '80', '80', '0', '7', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '38', '0', '0', '0', '0', '1', '65537', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');

-- Hartnäckigkeit
INSERT INTO world.creature VALUES ('213946', '43315', '571', '0', '0', '1', '1', '0', '0', '5860.81', '552.822', '652.656', '2.12851', '3', '0', '0', '42', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template VALUES ('43315', '0', '0', '0', '0', '0', '27690', '0', '0', '0', 'Tamable Turtle', '', '', '0', '80', '80', '0', '7', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '21', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');
INSERT INTO world.creature VALUES ('213947', '43316', '571', '0', '0', '1', '1', '0', '0', '5858.45', '547.012', '652.656', '0.938635', '3', '0', '0', '42', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template VALUES ('43316', '0', '0', '0', '0', '0', '744', '0', '0', '0', 'Tamable Boar', '', '', '0', '80', '80', '0', '7', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '5', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');
INSERT INTO world.creature VALUES ('213948', '43317', '571', '0', '0', '1', '1', '0', '0', '5865.65', '544.619', '652.656', '2.39083', '3', '0', '0', '42', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template VALUES ('43317', '0', '0', '0', '0', '0', '822', '0', '0', '0', 'Tamable Bear', '', '', '0', '80', '80', '0', '7', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '4', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');
INSERT INTO world.creature VALUES ('213936', '43318', '571', '0', '0', '1', '1', '0', '0', '5865.55', '549.059', '652.656', '2.98067', '3', '0', '0', '42', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template VALUES ('43318', '0', '0', '0', '0', '0', '9031', '0', '0', '0', 'Tamable Worm (exotisch)', '', '', '0', '80', '80', '0', '7', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '42', '0', '0', '0', '0', '1', '65537', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');
INSERT INTO world.creature VALUES ('213935', '43319', '571', '0', '0', '1', '1', '0', '0', '5861.87', '543.5', '652.656', '1.81907', '3', '0', '0', '42', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template VALUES ('43319', '0', '0', '0', '0', '0', '28648', '0', '0', '0', 'Tamable Rhino (exotisch)', '', '', '0', '80', '80', '0', '7', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '43', '0', '0', '0', '0', '1', '65537', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');

-- Wildheit
INSERT INTO world.creature VALUES ('213944', '43320', '571', '0', '0', '1', '1', '0', '0', '5868.92', '555.58', '652.656', '2.82438', '3', '0', '0', '42', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template VALUES ('43320', '0', '0', '0', '0', '0', '246', '0', '0', '0', 'Tamable Wolf', '', '', '0', '80', '80', '0', '7', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '1', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');
INSERT INTO world.creature VALUES ('213945', '43321', '571', '0', '0', '1', '1', '0', '0', '5870.26', '559.963', '652.656', '4.09672', '3', '0', '0', '42', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template VALUES ('43321', '0', '0', '0', '0', '0', '23514', '0', '0', '0', 'Tamable Carrion Bird', '', '', '0', '80', '80', '0', '7', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '7', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');
INSERT INTO world.creature VALUES ('213937', '43322', '571', '0', '0', '1', '1', '0', '0', '5872.92', '552.224', '652.656', '2.49373', '3', '0', '0', '42', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template VALUES ('43327', '0', '0', '0', '0', '0', '2031', '0', '0', '0', 'Tamable Cat', '', '', '0', '80', '80', '0', '7', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '2', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');
INSERT INTO world.creature VALUES ('213981', '43327', '571', '0', '0', '1', '1', '0', '0', '5866.13', '554.727', '652.656', '2.33192', '3', '0', '0', '42', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template VALUES ('43328', '0', '0', '0', '0', '0', '23518', '0', '0', '0', 'Tamable Raptor', '', '', '0', '80', '80', '0', '7', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '11', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');
INSERT INTO world.creature VALUES ('213982', '43328', '571', '0', '0', '1', '1', '0', '0', '5872.6', '556.032', '652.656', '3.12127', '3', '0', '0', '42', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template VALUES ('43322', '0', '0', '0', '0', '0', '28645', '0', '0', '0', 'Tamable Core Hound (exotisch)', '', '', '0', '80', '80', '0', '7', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '45', '0', '0', '0', '0', '1', '65537', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');
INSERT INTO world.creature VALUES ('213943', '43323', '571', '0', '0', '1', '1', '0', '0', '5865.31', '559.304', '652.656', '3.24064', '3', '0', '0', '42', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template VALUES ('43323', '0', '0', '0', '0', '0', '28649', '0', '0', '0', 'Tamable Spirit Beast (exotisch)', '', '', '0', '80', '80', '0', '7', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '46', '0', '0', '0', '0', '1', '65537', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');
INSERT INTO world.creature VALUES ('213938', '43324', '571', '0', '0', '1', '1', '0', '0', '5875.25', '558.334', '652.656', '3.57443', '3', '0', '0', '42', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template VALUES ('43324', '0', '0', '0', '0', '0', '28647', '0', '0', '0', 'Tamable Devilsaur (exotisch)', '', '', '0', '80', '80', '0', '7', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '0', '2048', '0', '39', '0', '0', '0', '0', '1', '65537', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');