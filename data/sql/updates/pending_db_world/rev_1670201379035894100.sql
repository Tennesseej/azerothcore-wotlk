-- Set IMMUNE_TO_PC & IMMUNE_TO_NPC
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|768 WHERE (`entry` = 18161);
