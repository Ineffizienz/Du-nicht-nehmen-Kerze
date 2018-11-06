-- Startspells für spezifische Klassen
UPDATE world.playercreateinfo_spell_custom SET classmask = 1024 WHERE Spell = 6795;
UPDATE world.playercreateinfo_spell_custom SET classmask = 4 WHERE Spell = 982;
UPDATE world.playercreateinfo_spell_custom SET classmask = 32 WHERE Spell = 50977;
UPDATE world.playercreateinfo_spell_custom SET classmask = 128 WHERE Spell = 11417;
UPDATE world.playercreateinfo_spell_custom SET classmask = 128 WHERE Spell = 35717;
UPDATE world.playercreateinfo_spell_custom SET classmask = 128 WHERE Spell = 32267;
UPDATE world.playercreateinfo_spell_custom SET classmask = 128 WHERE Spell = 11420;
UPDATE world.playercreateinfo_spell_custom SET classmask = 128 WHERE Spell = 11418;


-- Hunter Glyph Model-ID
UPDATE world.creature_template SET modelid1 = 23467 WHERE entry = 43306;

-- Hexenmeister Ausrüstung Position
UPDATE world.creature SET position_x = 5790.69 WHERE guid = 102749;