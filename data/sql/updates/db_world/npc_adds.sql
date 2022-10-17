-- Get the last create GUID, add a few thousand and then start there


-- DECLARE @LastCreatureGuid INT
SET @AddCreatureGuid := 3112421;


SET @CurrentLastCreatureGuid := (SELECT GUID FROM creature ORDER BY GUID DESC LIMIT 1);


DELIMITER $$

DROP PROCEDURE IF EXISTS AddNpcs $$
CREATE PROCEDURE AddNpcs(IN AddGuid INT, IN CurrentGuid INT)
BEGIN
    IF AddGuid >= CurrentGuid THEN

      -- NPC Buffer
      DELETE from creature where GUID = AddGuid;
      INSERT INTO creature (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
      ( AddGuid + 0, 601016, 0, 0, 0, 0, 0, 1, 1, 1,-4677.980, -968.300, 501.660, 3.708, 300, 0, 0, 5342, 0, 0, 0, 0, 0, 0);

    END IF;
END$$

DELIMITER ;

-- NPC Buffer
call AddNpcs(@AddCreatureGuid, @CurrentLastCreatureGuid);



  


