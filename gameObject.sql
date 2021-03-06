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
INSERT INTO world.gameobject VALUES ('166108', '2139', '571', '0', '0', '1', '1', '5833.74', '638.559', '613.754', '2.37747', '-0', '-0', '-0.927898', '-0.372834', '300', '255', '1', '', '0');

-- Tisch neben der Seelenschmiede
INSERT INTO world.gameobject VALUES ('166150', '192547', '571', '0', '0', '1', '1', '5780.38', '583.22', '609.158', '1.65236', '-0', '-0', '-0.735349', '-0.677689', '300', '255', '1', '', '0');

UPDATE world.gameobject_template SET name = "Zosimus Alchemy" WHERE entry = 50486;

-- Pfeilhändler Zubehör

INSERT INTO world.gameobject VALUES ('166297', '13952', '571', '0', '0', '1', '1', '5815.87', '617.085', '609.158', '5.11403', '-0', '-0', '-0.972495', '-0.232924', '300', '255', '1', '', '0');

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
INSERT INTO world.gameobject VALUES ('167196', '185130', '571', '0', '0', '1', '1', '5829.04', '647.529', '610.286', '5.23438', '-0', '-0', '-0.500695', '0.865624', '300', '255', '1', '', '0');

-- Erzkarren
INSERT INTO world.gameobject VALUES ('167009', '192058', '571', '0', '0', '1', '1', '5793.92', '660.127', '609.158', '0.0102806', '-0', '-0', '-0.00514265', '-0.999987', '300', '255', '1', '', '0');

-- Schädelhaufen
INSERT INTO world.gameobject VALUES ('167011', '2891', '571', '0', '0', '1', '1', '5860.35', '717.722', '609.158', '0.673935', '-0', '-0', '-0.330627', '-0.943762', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('167012', '2891', '571', '0', '0', '1', '1', '5860.46', '718.594', '609.158', '0.768185', '-0', '-0', '-0.374718', '-0.927139', '300', '255', '1', '', '0');
INSERT INTO world.gameobject VALUES ('167013', '2891', '571', '0', '0', '1', '1', '5858.69', '717.082', '609.159', '0.763472', '-0', '-0', '-0.372532', '-0.928019', '300', '255', '1', '', '0');

-- Pfeilander-Schild
INSERT INTO world.gameobject VALUES ('167038', '244610', '571', '0', '0', '1', '1', '5806.78', '608.773', '609.158', '1.70889', '-0', '-0', '-0.754206', '-0.656638', '300', '255', '1', '', '0');

-- Priester Kerze
INSERT INTO world.gameobject VALUES ('167041', '180340', '571', '0', '0', '1', '1', '5767.62', '617.386', '610.82', '5.89949', '-0', '-0', '-0.190672', '0.981654', '300', '255', '1', '', '0');

-- offenes Buch Magier
INSERT INTO world.gameobject VALUES ('167044', '179706', '571', '0', '0', '1', '1', '5802.27', '652.292', '610.774', '4.54469', '-0', '-0', '-0.763844', '0.645401', '300', '255', '1', '', '0');

-- Kiste VZ
INSERT INTO world.gameobject VALUES ('167141', '180403', '571', '0', '0', '1', '1', '5808.2', '677.813', '609.158', '5.67932', '-0', '-0', '-0.297364', '0.954764', '300', '255', '1', '', '0');

-- Herz VZ
INSERT INTO world.gameobject VALUES ('167148', '194159', '571', '0', '0', '1', '1', '5806.56', '679.25', '614.129', '5.52843', '-0', '-0', '-0.368483', '0.929634', '300', '255', '1', '', '0');

-- Kristall Gems
INSERT INTO world.gameobject VALUES ('167169', '188140', '571', '0', '0', '1', '1', '5790.8', '660.495', '610.476', '5.59269', '-0', '-0', '-0.338428', '0.940992', '300', '255', '1', '', '0');

-- Textänderungen GObjects
UPDATE world.page_text SET Text = "Ein großes Dankeschön gehen an Linda und Mayon für die technische Unterstützung, Dennis und Mayon für das Design, Mayon, Steffi und Kitty für die Guides und Danny, Daniel, Dennis, Kitty, Mayon, Linda, Malte für die Beta-Tests :D" WHERE ID = 3605;
UPDATE world.page_text_locale SET Text = "Ein großes Dankeschön gehen an Linda und Mayon für die technische Unterstützung, Dennis und Mayon für das Design, Mayon, Steffi und Kitty für die Guides und Danny, Daniel, Dennis, Kitty, Mayon, Linda, Malte für die Beta-Tests :D" WHERE ID = 3605 AND locale = "deDE";
UPDATE world.gameobject_template SET name = "Waffenexpertise" WHERE entry = 2139;