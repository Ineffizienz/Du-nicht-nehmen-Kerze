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
INSERT INTO world.playercreateinfo_item VALUES ('0','3','44448','1'); -- Verstärkter nerubischer Köcher

INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '0', '33388', 'Apprentice Riding');
INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '0', '33391', 'Journeymap Riding');
INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '0', '34090', 'Expert Riding');
INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '0', '34093', 'Artisan Riding');
INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '0', '54197', 'Cold Weather Flying');
INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '11', '6795', 'Crowl'); -- Bär Druide
INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '3', '982', 'Revive Pet'); -- Pet wiederbeleben Jäger
INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '0', '45542', 'First Aid Grand Master'); -- First Aid
INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '0', '33359', 'Cooking Master'); -- Cooking
INSERT INTO world.playercreateinfo_spell_custom VALUES ('0', '6', '50977', 'Deathgate'); -- Grundfertigkeit Deathknight

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
DELETE FROM world.creature WHERE guid = 118225;
DELETE FROM world.creature WHERE guid = 117889;


/************************* Add Game Objects ****************************************/
--  GUID|Entry|Map|zone|area|spawnMask|phaseMask|position-x|position-y|position-z|orientation|rotation0|rotation1|rotation2|rotation3|spawntimesecs|animprogress|state|ScriptName|VerifiedBuild
-- Mailbox                            
INSERT INTO world.gameobject VALUES ('166476', '177044', '571', '0', '0', '1', '1', '5819.97', '634.524', '609.886', '4.00649', '-0', '-0', '-0.907943', '0.419094', '300', '255', '1', '', '0');

-- add Runeforge

INSERT INTO world.gameobject VALUES ('166428', '190557', '571', '0', '0', '1', '1', '5798.03', '591.872', '609.158', '2.55028', '-0', '-0', '-0.956611', '-0.291369', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166016', '191746', '571', '0', '0', '1', '1', '5798.03', '591.872', '609.158', '2.55028', '-0', '-0', '-0.956611', '-0.291369', '300', '255', '1', '', '0');


INSERT INTO world.gameobject VALUES ('166105', '192825', '571', '0', '0', '1', '1', '5810.09', '651.532', '609.885', '4.32448', '-0', '-0', '-0.830137', '0.55756', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166106', '192824', '571', '0', '0', '1', '1', '5810.06', '651.775', '609.885', '4.41637', '-0', '-0', '-0.803652', '0.5951', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166103', '191945', '571', '0', '0', '1', '1', '5811.21', '652.117', '609.886', '4.19488', '-0', '-0', '-0.8645', '0.502633', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166113', '2139', '571', '0', '0', '1', '1', '5810.94', '611.198', '613.678', '2.30601', '-0', '-0', '-0.913988', '-0.405741', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166108', '2139', '571', '0', '0', '1', '1', '5836.67', '647.266', '613.058', '2.37747', '-0', '-0', '-0.927898', '-0.372834', '300', '255', '1', '', '0');

-- Tisch neben der Seelenschmiede
INSERT INTO world.gameobject VALUES ('166150', '192547', '571', '0', '0', '1', '1', '5780.38', '583.22', '609.158', '1.65236', '-0', '-0', '-0.735349', '-0.677689', '300', '255', '1', '', '0');

UPDATE world.gameobject_template SET name = "Zosimus Alchemy" WHERE entry = 50486;

-- Pfeilhändler Zubehör

INSERT INTO world.gameobject VALUES ('166297', '13952', '571', '0', '0', '1', '1', '5818.07', '688.37', '610.545', '5.11403', '-0', '-0', '-0.551845', '0.833947', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166301', '244609', '571', '0', '0', '1', '1', '5826.18', '687.784', '609.886', '4.56504', '-0', '-0', '-0.757237', '0.65314', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166391', '244610', '571', '0', '0', '1', '1', '5814.57', '682.079', '609.158', '4.85619', '-0', '-0', '-0.654484', '0.756076', '300', '255', '1', '', '0');

-- Entry|type|displayId|name|IconName|castBarCaption|unk1|size|Data1|Data2|Data3|Data4|Data5|Data6|Data7|Data8|Data9|Data10|Data11|Data12|Data13|Data14|Data15|Data16|Data17|Data18|Data19|Data20|Data21|Data22|Data23|AIName|ScriptName|VerifiedBuild
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

-- Pilze
INSERT INTO world.gameobject VALUES ('166360', '142144', '571', '0', '0', '1', '1', '5764.62', '602.981', '609.886', '0.486309', '-0', '-0', '-0.240766', '-0.970583', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166363', '152094', '571', '0', '0', '1', '1', '5762.08', '601.034', '609.887', '0.288399', '-0', '-0', '-0.1437', '-0.989621', '300', '255', '1', '', '0');

-- Tisch
INSERT INTO world.gameobject VALUES ('166393', '180324', '571', '0', '0', '1', '1', '5790.74', '616.082', '609.886', '0.702622', '-0', '-0', '-0.344129', '-0.938922', '300', '255', '1', '', '0');

-- Neue Objekte
INSERT INTO world.gameobject VALUES ('166587', '195191', '571', '0', '0', '1', '1', '5791.43', '638.632', '609.886', '0.0987313', '-0', '-0', '-0.0493458', '-0.998782', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166902', '188659', '571', '0', '0', '1', '1', '5766.42', '580.605', '613.733', '4.03062', '-0', '-0', '-0.902821', '0.430017', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166901', '188659', '571', '0', '0', '1', '1', '5767.52', '581.764', '613.751', '3.97564', '-0', '-0', '-0.914299', '0.40504', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166545', '195191', '571', '0', '0', '1', '1', '5766.01', '599.429', '609.886', '0.553474', '-0', '-0', '-0.273218', '-0.961952', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166792', '187114', '571', '0', '0', '1', '1', '5768.65', '617.965', '609.886', '0.580142', '-0', '-0', '-0.28602', '-0.958224', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166714', '180698', '571', '0', '0', '1', '1', '5829.63', '646.964', '609.158', '2.67819', '-0', '-0', '-0.973278', '-0.229631', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166717', '1619', '571', '0', '0', '1', '1', '5829.91', '647.581', '610.286', '2.23052', '-0', '-0', '-0.898024', '-0.439946', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166718', '2912', '571', '0', '0', '1', '1', '5829.94', '646.804', '610.286', '2.23837', '-0', '-0', '-0.899745', '-0.436416', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166759', '180339', '571', '0', '0', '1', '1', '5828.93', '646.78', '610.286', '2.76281', '-0', '-0', '-0.982119', '-0.18826', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166760', '180338', '571', '0', '0', '1', '1', '5829.09', '646.969', '610.286', '2.4408', '-0', '-0', '-0.939237', '-0.343271', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166761', '180340', '571', '0', '0', '1', '1', '5828.74', '647.087', '610.286', '3.35186', '-0', '-0', '-0.994479', '0.10494', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166769', '193610', '571', '0', '0', '1', '1', '5829.4', '646.262', '610.286', '3.29585', '-0', '-0', '-0.997027', '0.0770527', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166841', '180631', '571', '0', '0', '1', '1', '5779.79', '627.628', '609.158', '0.144998', '-0', '-0', '-0.0724353', '-0.997373', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166838', '50486', '571', '0', '0', '1', '1', '5780.77', '623.647', '609.887', '1.0655', '-0', '-0', '-0.507905', '-0.861413', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166884', '182258', '571', '0', '0', '1', '1', '5790.08', '655.277', '609.414', '5.6738', '-0', '-0', '-0.299998', '0.95394', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166888', '184307', '571', '0', '0', '1', '1', '5793.36', '656.802', '610.046', '5.34394', '-0', '-0', '-0.45255', '0.891739', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166895', '189305', '571', '0', '0', '1', '1', '5791.55', '655.818', '610.046', '5.53087', '-0', '-0', '-0.367348', '0.930083', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166896', '164927', '571', '0', '0', '1', '1', '5793.52', '657.538', '610.046', '5.11461', '-0', '-0', '-0.551606', '0.834105', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166779', '191128', '571', '0', '0', '1', '1', '5803.42', '652.508', '610.774', '1.07709', '-0', '-0', '-0.512887', '-0.858456', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166561', '180324', '571', '0', '0', '1', '1', '5802.76', '652.93', '609.886', '4.81584', '-0', '-0', '-0.669602', '0.74272', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166569', '105175', '571', '0', '0', '1', '1', '5802.76', '652.978', '610.774', '3.73592', '-0', '-0', '-0.95617', '0.292812', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166564', '105175', '571', '0', '0', '1', '1', '5801.46', '652.674', '610.774', '4.8237', '-0', '-0', '-0.666678', '0.745346', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166567', '193981', '571', '0', '0', '1', '1', '5803.88', '653.098', '610.774', '4.7216', '-0', '-0', '-0.703843', '0.710356', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166577', '178439', '571', '0', '0', '1', '1', '5801.96', '653.476', '610.774', '4.84805', '-0', '-0', '-0.657555', '0.753406', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166777', '83763', '571', '0', '0', '1', '1', '5804.15', '653.774', '610.774', '5.53031', '-0', '-0', '-0.36761', '0.92998', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166832', '190693', '571', '0', '0', '1', '1', '5803.41', '655.965', '609.886', '3.21749', '-0', '-0', '-0.99928', '0.0379418', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166831', '190693', '571', '0', '0', '1', '1', '5800.92', '655.707', '609.887', '0.103396', '-0', '-0', '-0.0516751', '-0.998664', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166906', '180672', '571', '0', '0', '1', '1', '5800.2', '595.677', '609.158', '5.18874', '-0', '-0', '-0.520318', '0.853972', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166908', '181063', '571', '0', '0', '1', '1', '5769.48', '618.445', '610.82', '5.97806', '-0', '-0', '-0.151973', '0.988385', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166909', '182063', '571', '0', '0', '1', '1', '5769.48', '618.445', '610.82', '1.25781', '-0', '-0', '-0.588261', '-0.808671', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166910', '178229', '571', '0', '0', '1', '1', '5768.58', '617.55', '610.819', '6.15477', '-0', '-0', '-0.0641641', '0.997939', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166917', '180338', '571', '0', '0', '1', '1', '5767.45', '617.334', '610.818', '1.44081', '-0', '-0', '-0.65969', '-0.751538', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166914', '105175', '571', '0', '0', '1', '1', '5767.95', '617.43', '610.821', '1.89477', '-0', '-0', '-0.811893', '-0.583806', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166798', '2489', '571', '0', '0', '1', '1', '5853.09', '686.736', '610.731', '4.70113', '-0', '-0', '-0.711078', '0.703114', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166741', '195191', '571', '0', '0', '1', '1', '5860.12', '713.665', '609.158', '3.81834', '-0', '-0', '-0.943295', '0.331954', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166890', '181369', '571', '0', '0', '1', '1', '5860.07', '722.586', '609.158', '1.13328', '-0', '-0', '-0.5368', '-0.84371', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166889', '148504', '571', '0', '0', '1', '1', '5857.57', '723.335', '609.158', '1.2668', '-0', '-0', '-0.591887', '-0.806021', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('166930', '2870', '571', '0', '0', '1', '1', '5843.17', '692.991', '612.651', '3.98943', '-0', '-0', '-0.911484', '0.411336', '300', '255', '1', '', '0'); -- Lichtsäule
INSERT INTO world.gameobject VALUES ('166946', '177415', '571', '0', '0', '1', '1', '5848.4', '689.966', '610.737', '5.64545', '-0', '-0', '-0.31349', '0.949591', '300', '255', '1', '', '0'); -- Lichtschimmer
INSERT INTO world.gameobject VALUES ('166950', '146082', '571', '0', '0', '1', '1', '5853.06', '686.84', '611.237', '1.74988', '-0', '-0', '-0.767506', '-0.641042', '300', '255', '1', '', '0'); -- Lichtsäule
INSERT INTO world.gameobject VALUES ('167009', '192058', '571', '0', '0', '1', '1', '5793.92', '660.127', '609.158', '0.0102806', '-0', '-0', '-0.00514265', '-0.999987', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('167011', '2891', '571', '0', '0', '1', '1', '5860.35', '717.722', '609.158', '0.673935', '-0', '-0', '-0.330627', '-0.943762', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('167012', '2891', '571', '0', '0', '1', '1', '5860.46', '718.594', '609.158', '0.768185', '-0', '-0', '-0.374718', '-0.927139', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('167013', '2891', '571', '0', '0', '1', '1', '5858.69', '717.082', '609.159', '0.763472', '-0', '-0', '-0.372532', '-0.928019', '300', '255', '1', '', '0');

/************************* Add Ombrok ****************************************/


-- Ombrok der Verschnupfte Script
-- entry|difficulty_entry_1|difficulty_entry_2|difficulty_entry_3|KillCredit1|KillCredit2|modelid1|modelid2|modelid3|modelid4|name|subname|IconName|gossip_menu_id|minilevl|maxlevel|exp|faction|npcflag|speed_walk|speed_run|scale|rank|dmgschool|BaseAttackTime|BaseVariance|RangeVariance|unit_class|unit_flags|unit_flags2|dynamicflags|family|trainer_type|trainer_spell|trainer_class|trainer_race|type|type_flags|lootid|pickpocketloot|skinloot|resistance1|resistance2|resistance3|resistance4|resistance5|resistance6|spell1|spell2|spell3|spell4|spell5|spell6|spell7|spell8|PetSpellDataId|VehicleId|mingold|maxgold|AIName|MovementType|InhabitType|HoveHeight|HealtModifier|ManaModifier|ArmorModifier|DamageModifier|ExperienceModifer|RacialLeader|movementId|RegenHealth|mechanic_immune_mask|flags_extra|ScriptName|VerifiedBuild
INSERT INTO world.creature_template VALUES ('43285', '0', '0', '0', '0', '0', '10038', '0', '0', '0', 'Ombrok der Verschnupfte', '', '', '57020', '83', '83', '2', '2', '3', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '2', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '12340');

-- guid|id(entry)|map|zoneId|areaId|spawnMask|phaseMask|modelid|equipment_id|position_x|position_y|position_z|orientation|spawntimesecs|spawndist|currentwaypoint|curhealth|curmana|MovementType|npcflag|unit_flags|dynamicflags|ScriptName|VerifiedBuild
INSERT INTO world.creature VALUES('213857', '43285', '571', '0', '0', '1', '1', '0', '1', '5813.02', '650.658', '609.886', '4.01124', '300', '0', '0', '5578000', '68128', '0', '0', '134217984', '0', '', '0');

INSERT INTO world.npc_text VALUES ('50016', 'Willkommen in Nordend werter Reisender. Ich bin Ombrok der Verschnupfte.... *Hatschi* Auf dem Schwarzmarkt von Dalaran seht ihr alles, was das Kämpferherz begehrt. Bedient euch, aber bedenkt, dass ihr nicht alles tragen könnt. *Haaaaaaaatschiiii* Gott verdammtes Wetter...', NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '', NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO world.gossip_menu VALUES ('57020','50016','0');

INSERT INTO world.broadcast_text VALUES ('77866', '0', 'Willkommen Reisender', '3', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0');
UPDATE world.npc_text SET BroadcastTextID0 = 77866 WHERE id = 50016;

/************************* Add NPCs ****************************************/

-- Lepragnom
INSERT INTO world.creature VALUES ('213878', '18722', '571', '0', '0', '1', '1', '0', '0', '5783.18', '639.219', '609.158', '2.71286', '300', '0', '0', '102', '0', '0', '0', '0', '0', '', '0');

-- Wasser Elementar
INSERT INTO world.creature_template VALUES ('43330', '0', '0', '0', '0', '0', '4449', '0', '0', '0', 'Water Elemental', 'Blubb?', NULL, '0', '56', '56', '0', '35', '2', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '2', '0', '2048', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '2', '', '12340');
INSERT INTO world.creature VALUES ('214006', '43330', '571', '0', '0', '1', '1', '525', '0', '5828.46', '675.108', '609.886', '6.08814', '300', '0', '0', '2159', '2163', '0', '0', '0', '0', '', '0');

-- Imp
INSERT INTO world.creature_template VALUES ('43331', '0', '0', '0', '0', '0', '4449', '0', '0', '0', 'Impsy', 'Rebel', NULL, '0', '56', '56', '0', '35', '2', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '2', '0', '2048', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '2', '', '12340');
INSERT INTO world.creature VALUES ('214003', '43331', '571', '0', '0', '1', '1', '0', '0', '5789.51', '642.133', '609.886', '5.99646', '300', '0', '0', '2159', '2163', '0', '0', '0', '0', '', '0');

-- Lydia
INSERT INTO world.creature_template VALUES ('43332', '0', '0', '0', '0', '0', '4449', '0', '0', '0', 'Lydia', "Grol'dar's Minion", NULL, '0', '56', '56', '0', '35', '2', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '2', '0', '2048', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '2', '', '12340');
INSERT INTO world.creature VALUES ('214004', '43332', '571', '0', '0', '1', '1', '159', '0', '5790.3', '635.502', '609.886', '0.0939924', '300', '0', '0', '2159', '2163', '0', '0', '0', '0', '', '0');

-- Celine (Dance)
INSERT INTO world.creature_template VALUES ('43334', '0', '0', '0', '0', '0', '17651', '0', '0', '0', 'Celine', 'Tänzerin', NULL, '0', '60', '60', '0', '1604', '209', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '512', '2048', '0', '0', '2', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '1', '3', '1', '1.02', '1', '1', '1', '1', '0', '0', '1', '0', '2', '', '12340');
INSERT INTO world.creature VALUES ('214010', '43334', '571', '0', '0', '1', '1', '0', '0', '5848.51', '693.211', '610.698', '3.96759', '300', '0', '0', '3114', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template_addon VALUES ('43334', '0', '0', '0', '0', '10', NULL); -- Dance

-- Cynthia (Dance)
INSERT INTO world.creature_template VALUES ('43335', '0', '0', '0', '0', '0', '2232', '0', '0', '0', 'Cynthia', 'Tänzerin', NULL, '0', '60', '60', '0', '1604', '209', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '512', '2048', '0', '0', '2', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '1', '3', '1', '1.02', '1', '1', '1', '1', '0', '0', '1', '0', '2', '', '12340');
INSERT INTO world.creature VALUES ('214011', '43335', '571', '0', '0', '1', '1', '0', '0', '5851.1', '690.788', '610.701', '4.09908', '300', '0', '0', '3114', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template_addon VALUES ('43335', '0', '0', '0', '0', '10', NULL); -- Dance

-- Training Dummys
INSERT INTO world.creature VALUES ('213971', '31146', '571', '0', '0', '1', '1', '0', '0', '5826.22', '695.486', '609.157', '5.44291', '300', '0', '0', '24009944', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213972', '31146', '571', '0', '0', '1', '1', '0', '0', '5834.67', '698.593', '609.157', '4.86957', '300', '0', '0', '24009944', '0', '0', '0', '0', '0', '', '0');


-- Waffenmeister/-lehrer
INSERT INTO world.creature VALUES ('213886', '16621', '571', '0', '0', '1', '1', '0', '0', '5828.03', '639.228', '609.689', '2.25305', '300', '0', '0', '737', '2175', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213885', '11869', '571', '0', '0', '1', '1', '0', '1', '5836.21', '637.711', '611.754', '2.4871', '300', '0', '0', '15505', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213883', '11870', '571', '0', '0', '1', '1', '0', '1', '5833.77', '641.266', '609.158', '2.36537', '300', '0', '0', '15505', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213882', '11868', '571', '0', '0', '1', '1', '0', '1', '5834.62', '635.703', '611.974', '2.45568', '300', '0', '0', '15505', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213881', '2704', '571', '0', '0', '1', '1', '0', '1', '5831.86', '638.649', '609.158', '2.35594', '300', '0', '0', '15505', '0', '0', '0', '0', '0', '', '0');

-- Klassen-Trainer

-- Todesritter
INSERT INTO world.creature VALUES ('213954', '29194', '571', '0', '0', '1', '1', '0', '0', '5788.97', '588.816', '609.158', '2.03097', '300', '0', '0', '126000', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature_template SET subname = "Todesritterlehrer" WHERE entry = 29194;
-- Krieger
INSERT INTO world.creature VALUES ('213955', '3353', '571', '0', '0', '1', '1', '0', '1', '5760.65', '581.828', '613.71', '2.15194', '300', '0', '0', '4121', '0', '0', '0', '0', '0', '', '0');
-- Paladin
INSERT INTO world.creature_template VALUES ('43329', '0', '0', '0', '0', '0', '21264', '0', '0', '0', 'Master Pyreanor', 'Paladin Trainer', NULL, '6647', '70', '70', '1', '1695', '49', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '32768', '2048', '0', '0', '0', '0', '2', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '603', '', '1', '3', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '2', '', '12340');
INSERT INTO world.creature VALUES ('213956', '43329', '571', '0', '0', '1', '1', '0', '1', '5848.49', '690.105', '610.736', '3.97856', '300', '0', '0', '6986', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_template_addon VALUES ('43329', '0', '0', '0', '0', '10', NULL);
-- Druide 
INSERT INTO world.creature VALUES ('213957', '3034', '571', '0', '0', '1', '1', '0', '1', '5764.76', '597.581', '609.886', '0.514203', '300', '0', '0', '4121', '0', '0', '0', '0', '0', '', '0');
-- Schamane
INSERT INTO world.creature VALUES ('213958', '3403', '571', '0', '0', '1', '1', '0', '1', '5826.21', '678.359', '609.886', '5.45434', '300', '0', '0', '1753', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_addon VALUES (213958, 0, 0, 0, 0, 469, NULL); -- cast spell
-- Priester
INSERT INTO world.creature VALUES ('213959', '16660', '571', '0', '0', '1', '1', '0', '0', '5767.19', '618.818', '609.885', '5.25719', '300', '0', '0', '1077', '3191', '0', '0', '0', '0', '', '0');
-- Schurke
INSERT INTO world.creature VALUES ('213960', '4583', '571', '0', '0', '1', '1', '0', '1', '5862.03', '714.069', '609.159', '3.79242', '300', '0', '0', '2769', '0', '0', '0', '0', '0', '', '0');
-- Magier
INSERT INTO world.creature VALUES ('213966', '5882', '571', '0', '0', '1', '1', '0', '1', '5804.09', '651.26', '609.886', '1.66247', '300', '0', '0', '4121', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_addon VALUES (213966, 0, 0, 0, 0, 69, NULL); -- is standing?
-- Hexenmeister
INSERT INTO world.creature VALUES ('213979', '3324', '571', '0', '0', '1', '1', '0', '1', '5789.99', '637.592', '609.886', '0.123816', '300', '0', '0', '2769', '0', '0', '0', '0', '0', '', '0');
-- Hunter
INSERT INTO world.creature VALUES ('213965', '3406', '571', '0', '0', '1', '1', '0', '1', '5807.17', '613.264', '609.158', '2.28293', '300', '0', '0', '2769', '0', '0', '0', '0', '0', '', '0');

/************************* Schurke Item  ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43286', '0', '0', '0', '0', '0', '10732', '0', '0', '0', 'Annika Düster', 'Schurke Ausrüstung', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213866', '43286', '571', '0', '0', '1', '1', '0', '0', '5861.04', '715.377', '609.159', '3.79242', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
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


/************************* Magier Item ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43287', '0', '0', '0', '0', '0', '28144', '0', '0', '0', 'Jenn Pillette', 'Magier Ausrüstung', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213870', '43287', '571', '0', '0', '1', '1', '0', '0', '5801.12', '650.645', '609.886', '0.983103', '300', '0', '0', '5040000', '0', '0', '0', '0', '0', '', '0');
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


/************************* Druide Item ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43288', '0', '0', '0', '0', '0', '14425', '0', '0', '0', '<Vorname> Mondschauer', 'Druiden Ausrüstung', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213868', '43288', '571', '0', '0', '1', '1', '0', '0', '5762.9', '602.796', '609.886', '5.70408', '300', '0', '0', '5040000', '0', '0', '0', '0', '0', '', '0');
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
INSERT INTO world.npc_vendor VALUES (43288, 0, 45518, 0, 0, 0, 0);

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

/************************* Hunter Item ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43289', '0', '0', '0', '0', '0', '28185', '0', '0', '0', 'Huntress', 'Jäger Ausrüstung', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213863', '43289', '571', '0', '0', '1', '1', '0', '0', '5811.66', '619.56', '609.158', '2.32924', '300', '0', '0', '5040000', '0', '0', '0', '0', '0', '', '0');
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


/************************* Priest Item ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43290', '0', '0', '0', '0', '0', '23546', '0', '0', '0', 'Nachtschatten', 'Priester Ausrüstung', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213867', '43290', '571', '0', '0', '1', '1', '0', '0', '5768.58', '619.663', '609.885', '5.27683', '300', '0', '0', '5040000', '0', '0', '0', '0', '0', '', '0');
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
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50286, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 44008, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 45618, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50263, 0, 0, 0, 0);

-- Weapons
INSERT INTO world.npc_vendor  VALUES (43290, 0, 51004, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50051, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50805, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 51582, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50966, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 51788, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43290, 0, 50793, 0, 0, 0, 0);


/************************* Hexenmeister Item ****************************************/

-- Händler
UPDATE world.creature SET position_x = "5789.48" AND position_y = "639.875" AND position_z = "609.886" AND orientation = "0.0948043" WHERE guid = 102749; 
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


/************************* Warrior Item ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43292', '0', '0', '0', '0', '0', '23006', '0', '0', '0', 'Facepalm', 'Krieger Ausrüstung', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213861', '43292', '571', '0', '0', '1', '1', '0', '0', '5755.75', '584.511', '613.72', '6.25779', '300', '0', '0', '5040000', '0', '0', '0', '0', '0', '', '0');
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


/************************* Deathknight Item ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43293', '0', '0', '0', '0', '0', '24935', '0', '0', '0', 'Maade Jha', 'Todesritter Ausrüstung', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213864', '43293', '571', '0', '0', '1', '1', '0', '0', '5787.19', '594.858', '609.886', '5.04353', '300', '0', '0', '5040000', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43293 WHERE guid = 213864;
INSERT INTO world.creature_template_addon VALUES (43293, 0, 0, 0, 0, 398, NULL); -- canibalizes

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
INSERT INTO world.creature VALUES ('213890', '43295', '571', '0', '0', '1', '1', '0', '0', '5832.38', '674.427', '609.886', '3.03138', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43295 WHERE guid = 213890;
INSERT INTO world.creature_template_addon VALUES (43295, 0, 0, 0, 0, 468, NULL); -- casts spell

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
INSERT INTO world.creature_template VALUES ('43296', '0', '0', '0', '0', '0', '21666', '0', '0', '0', 'Pali', 'Schamanen Ausrüstung', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213891', '43296', '571', '0', '0', '1', '1', '0', '0', '5843.28', '693.039', '612.649', '4.03746', '300', '0', '0', '5040000', '0', '0', '0', '0', '0', '', '0');
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
INSERT INTO world.creature VALUES ('213887', '43294', '571', '0', '0', '1', '1', '0', '0', '5766.19', '616.601', '609.886', '0.434838', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
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
INSERT INTO world.creature_template VALUES ('43297', '0', '0', '0', '0', '0', '21022', '0', '0', '0', 'Schurki Glyph', 'Glyphen (Schurke)', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213895', '43297', '571', '0', '0', '1', '1', '0', '0', '5862.45', '717.295', '610.864', '3.57644', '300', '0', '0', '5040000', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43297 WHERE guid = 213895;
INSERT INTO world.creature_template_addon VALUES (43297, 0, 0, 0, 0, 398, NULL); -- Vendor canibalize

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
INSERT INTO world.creature VALUES ('213898', '43298', '571', '0', '0', '1', '1', '0', '0', '5805.56', '654.165', '609.886', '3.98754', '300', '0', '0', '5040000', '0', '0', '0', '0', '0', '', '0');
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
INSERT INTO world.creature VALUES ('213899', '43299', '571', '0', '0', '1', '1', '0', '0', '5751.02', '595.389', '613.752', '0.589117', '300', '0', '0', '5040000', '0', '0', '0', '0', '0', '', '0');
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
INSERT INTO world.creature VALUES ('213900', '43300', '571', '0', '0', '1', '1', '0', '0', '5853.08', '686.966', '610.744', '4.76003', '300', '0', '0', '5040000', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43300 WHERE guid = 213900;
INSERT INTO world.creature_template_addon VALUES (43300, 0, 0, 0, 0, 415, NULL); -- Vendor sits on a chair

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
INSERT INTO world.creature VALUES ('213914', '43306', '571', '0', '0', '1', '1', '0', '1', '5819.22', '622.539', '610.512', '2.59159', '300', '0', '0', '10635', '0', '0', '0', '0', '0', '', '0');
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
INSERT INTO world.creature VALUES ('213902', '43302', '571', '0', '0', '1', '1', '0', '0', '5784.7', '593.357', '609.886', '5.51084', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43302 WHERE guid = 213902;
INSERT INTO world.creature_template_addon VALUES (43302, 0, 0, 0, 0, 398, NULL); -- Vendor canibalizes

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
INSERT INTO world.creature VALUES ('213903', '43303', '571', '0', '0', '1', '1', '0', '1', '5825.87', '671.044', '609.886', '1.05235', '300', '0', '0', '5040000', '0', '0', '0', '0', '0', '', '0');
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
INSERT INTO world.creature VALUES ('213904', '43304', '571', '0', '0', '1', '1', '0', '1', '5789.48', '639.875', '609.886', '0.0948043', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
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
INSERT INTO world.creature VALUES ('213905', '43305', '571', '0', '0', '1', '1', '0', '0', '5763.8', '599.312', '609.886', '0.506349', '300', '0', '0', '5040000', '0', '0', '0', '0', '0', '', '0');
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
INSERT INTO world.creature VALUES ('213980', '43326', '571', '0', '0', '1', '1', '0', '0', '5831.75', '652.735', '609.158', '2.32393', '300', '0', '0', '5617', '7981', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43326 WHERE guid = 213980;

INSERT INTO world.npc_vendor VALUES (43326, 0, 34753, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43326, 0, 38640, 0, 0, 0, 0);


/************************* Trankhändler ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43291', '0', '0', '0', '0', '0', '18517', '0', '0', '0', 'Zosimus', 'Tränke & Elixiere', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213874', '43291', '571', '0', '0', '1', '1', '0', '0', '5781.04', '630.22', '609.158', '5.51892', '300', '0', '0', '8025', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43291 WHERE guid = 213874;

-- Tränke
INSERT INTO world.npc_vendor  VALUES (43291, 0, 46379, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43291, 0, 46378, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43291, 0, 46377, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43291, 0, 46376, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43291, 0, 33447, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43291, 0, 33448, 0, 0, 0, 0);
INSERT INTO world.npc_vendor  VALUES (43291, 0, 13442, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43291, 0, 22522, 0, 0, 0, 0);


/************************* Gifthändler ****************************************/
INSERT INTO world.creature VALUES ('213976', '4585', '571', '0', '0', '1', '1', '0', '1', '5780.83', '626.868', '609.159', '2.62292', '300', '0', '0', '1003', '0', '0', '0', '0', '0', '', '0');
INSERT INTO world.creature_addon VALUES (213976, 0, 0, 0, 0, 69, NULL); -- is standing


/************************* Pfeilhändler ****************************************/

-- Händler
INSERT INTO world.creature_template VALUES ('43308', '0', '0', '0', '0', '0', '3608', '0', '0', '0', 'William Wallace', 'Pfeile & Bolzen', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213923', '43308', '571', '0', '0', '1', '1', '0', '1', '5813.25', '613.988', '609.159', '5.62478', '300', '0', '0', '10635', '0', '0', '0', '0', '0', '', '0');
UPDATE world.creature SET id = 43308 WHERE guid = 213923;
INSERT INTO world.creature_equip_template VALUES ('43308', '1', '42445', '0', '0', '0');
INSERT INTO world.creature_template_addon VALUES (43308, 0, 0, 0, 0, 69, NULL); -- Use emote

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
INSERT INTO world.npc_vendor VALUES (43309, 0, 41611, 0, 0, 0, 0);


-- Brittany Bling
INSERT INTO world.creature_template VALUES ('43333', '0', '0', '0', '0', '0', '4979', '0', '0', '0', 'Brittany Bling', 'Lady Cartiers Gehilfe', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('214007', '43333', '571', '0', '0', '1', '1', '25608', '0', '5794.6', '658.139', '609.158', '3.81856', '300', '0', '0', '2159', '2163', '0', '0', '0', '0', '', '0');

INSERT INTO world.npc_vendor VALUES (43333, 0, 40142, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40144, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40145, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40143, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40146, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40147, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40148, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40149, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40150, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40151, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40152, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40153, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40154, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40155, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40156, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40157, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40158, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40159, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40160, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40161, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40162, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40163, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40129, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40130, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40131, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40132, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40133, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40134, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40135, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40136, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40137, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40138, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40139, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40140, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40141, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40164, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40165, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40166, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40167, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40168, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40169, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40170, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40171, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40172, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40173, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40174, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40175, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40176, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40177, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40178, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40179, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40180, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40181, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (43333, 0, 40182, 0, 0, 0, 0);


/************************* Tiernahrung Händler ****************************************/

-- Händler
--

-- Items
INSERT INTO world.npc_vendor VALUES (28951, 0, 33454, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (28951, 0, 35949, 0, 0, 0, 0);
INSERT INTO world.npc_vendor VALUES (28951, 0, 35947, 0, 0, 0, 0);


/************************* Reagenzien-Händler ****************************************/

INSERT INTO world.creature_template VALUES ('43325', '0', '0', '0', '0', '0', '6446', '0', '0', '0', 'Zonkos Scherzartikel', 'Reagenzien', 'Buy', '0', '80', '80', '2', '2', '128', '1', '1.38571', '1', '1', '0', '2000', '2000', '1', '1', '1', '256', '2048', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '400', '16', '1', '7.5', '1', '0', '0', '1', '0', '0', '', '0');
INSERT INTO world.creature VALUES ('213973', '43325', '571', '0', '0', '1', '1', '0', '0', '5829.93', '649.561', '609.158', '2.39146', '300', '0', '0', '5617', '7981', '0', '0', '0', '0', '', '0');
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