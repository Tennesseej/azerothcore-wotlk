SET @GO_TEMPLATE = 500000; -- 8 slots
SET @GO_SPAWN = 2500000; -- 24 slots (3 x 8)

-- Add custom portal spells so we get teleported closer to where we want in Stormwind and Ironforge
DELETE FROM `spell_target_position` WHERE (`ID` = 300000);
DELETE FROM `spell_target_position` WHERE (`ID` = 300001);
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `VerifiedBuild`) VALUES
	(300000, 0, 0, -8831.144, 626.27, 93.96, 0.621, 0),     -- Stormwind GPS
  (300001, 0, 0, -4690.503, -978.247, 501.551, 0.657, 0); -- Ironforge GPS

-- Add Stormwind Spell
DELETE FROM `spell_dbc` WHERE (`ID` = 300000);
INSERT INTO `spell_dbc` (`ID`, `Category`, `DispelType`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `ShapeshiftMask`, `unk_320_2`, `ShapeshiftExclude`, `unk_320_3`, `Targets`, `TargetCreatureType`, `RequiresSpellFocus`, `FacingCasterFlags`, `CasterAuraState`, `TargetAuraState`, `ExcludeCasterAuraState`, `ExcludeTargetAuraState`, `CasterAuraSpell`, `TargetAuraSpell`, `ExcludeCasterAuraSpell`, `ExcludeTargetAuraSpell`, `CastingTimeIndex`, `RecoveryTime`, `CategoryRecoveryTime`, `InterruptFlags`, `AuraInterruptFlags`, `ChannelInterruptFlags`, `ProcTypeMask`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `PowerType`, `ManaCost`, `ManaCostPerLevel`, `ManaPerSecond`, `ManaPerSecondPerLevel`, `RangeIndex`, `Speed`, `ModalNextSpell`, `CumulativeAura`, `Totem_1`, `Totem_2`, `Reagent_1`, `Reagent_2`, `Reagent_3`, `Reagent_4`, `Reagent_5`, `Reagent_6`, `Reagent_7`, `Reagent_8`, `ReagentCount_1`, `ReagentCount_2`, `ReagentCount_3`, `ReagentCount_4`, `ReagentCount_5`, `ReagentCount_6`, `ReagentCount_7`, `ReagentCount_8`, `EquippedItemClass`, `EquippedItemSubclass`, `EquippedItemInvTypes`, `Effect_1`, `Effect_2`, `Effect_3`, `EffectDieSides_1`, `EffectDieSides_2`, `EffectDieSides_3`, `EffectRealPointsPerLevel_1`, `EffectRealPointsPerLevel_2`, `EffectRealPointsPerLevel_3`, `EffectBasePoints_1`, `EffectBasePoints_2`, `EffectBasePoints_3`, `EffectMechanic_1`, `EffectMechanic_2`, `EffectMechanic_3`, `ImplicitTargetA_1`, `ImplicitTargetA_2`, `ImplicitTargetA_3`, `ImplicitTargetB_1`, `ImplicitTargetB_2`, `ImplicitTargetB_3`, `EffectRadiusIndex_1`, `EffectRadiusIndex_2`, `EffectRadiusIndex_3`, `EffectAura_1`, `EffectAura_2`, `EffectAura_3`, `EffectAuraPeriod_1`, `EffectAuraPeriod_2`, `EffectAuraPeriod_3`, `EffectMultipleValue_1`, `EffectMultipleValue_2`, `EffectMultipleValue_3`, `EffectChainTargets_1`, `EffectChainTargets_2`, `EffectChainTargets_3`, `EffectItemType_1`, `EffectItemType_2`, `EffectItemType_3`, `EffectMiscValue_1`, `EffectMiscValue_2`, `EffectMiscValue_3`, `EffectMiscValueB_1`, `EffectMiscValueB_2`, `EffectMiscValueB_3`, `EffectTriggerSpell_1`, `EffectTriggerSpell_2`, `EffectTriggerSpell_3`, `EffectPointsPerCombo_1`, `EffectPointsPerCombo_2`, `EffectPointsPerCombo_3`, `EffectSpellClassMaskA_1`, `EffectSpellClassMaskA_2`, `EffectSpellClassMaskA_3`, `EffectSpellClassMaskB_1`, `EffectSpellClassMaskB_2`, `EffectSpellClassMaskB_3`, `EffectSpellClassMaskC_1`, `EffectSpellClassMaskC_2`, `EffectSpellClassMaskC_3`, `SpellVisualID_1`, `SpellVisualID_2`, `SpellIconID`, `ActiveIconID`, `SpellPriority`, `Name_Lang_enUS`, `Name_Lang_enGB`, `Name_Lang_koKR`, `Name_Lang_frFR`, `Name_Lang_deDE`, `Name_Lang_enCN`, `Name_Lang_zhCN`, `Name_Lang_enTW`, `Name_Lang_zhTW`, `Name_Lang_esES`, `Name_Lang_esMX`, `Name_Lang_ruRU`, `Name_Lang_ptPT`, `Name_Lang_ptBR`, `Name_Lang_itIT`, `Name_Lang_Unk`, `Name_Lang_Mask`, `NameSubtext_Lang_enUS`, `NameSubtext_Lang_enGB`, `NameSubtext_Lang_koKR`, `NameSubtext_Lang_frFR`, `NameSubtext_Lang_deDE`, `NameSubtext_Lang_enCN`, `NameSubtext_Lang_zhCN`, `NameSubtext_Lang_enTW`, `NameSubtext_Lang_zhTW`, `NameSubtext_Lang_esES`, `NameSubtext_Lang_esMX`, `NameSubtext_Lang_ruRU`, `NameSubtext_Lang_ptPT`, `NameSubtext_Lang_ptBR`, `NameSubtext_Lang_itIT`, `NameSubtext_Lang_Unk`, `NameSubtext_Lang_Mask`, `Description_Lang_enUS`, `Description_Lang_enGB`, `Description_Lang_koKR`, `Description_Lang_frFR`, `Description_Lang_deDE`, `Description_Lang_enCN`, `Description_Lang_zhCN`, `Description_Lang_enTW`, `Description_Lang_zhTW`, `Description_Lang_esES`, `Description_Lang_esMX`, `Description_Lang_ruRU`, `Description_Lang_ptPT`, `Description_Lang_ptBR`, `Description_Lang_itIT`, `Description_Lang_Unk`, `Description_Lang_Mask`, `AuraDescription_Lang_enUS`, `AuraDescription_Lang_enGB`, `AuraDescription_Lang_koKR`, `AuraDescription_Lang_frFR`, `AuraDescription_Lang_deDE`, `AuraDescription_Lang_enCN`, `AuraDescription_Lang_zhCN`, `AuraDescription_Lang_enTW`, `AuraDescription_Lang_zhTW`, `AuraDescription_Lang_esES`, `AuraDescription_Lang_esMX`, `AuraDescription_Lang_ruRU`, `AuraDescription_Lang_ptPT`, `AuraDescription_Lang_ptBR`, `AuraDescription_Lang_itIT`, `AuraDescription_Lang_Unk`, `AuraDescription_Lang_Mask`, `ManaCostPct`, `StartRecoveryCategory`, `StartRecoveryTime`, `MaxTargetLevel`, `SpellClassSet`, `SpellClassMask_1`, `SpellClassMask_2`, `SpellClassMask_3`, `MaxTargets`, `DefenseType`, `PreventionType`, `StanceBarOrder`, `EffectChainAmplitude_1`, `EffectChainAmplitude_2`, `EffectChainAmplitude_3`, `MinFactionID`, `MinReputation`, `RequiredAuraVision`, `RequiredTotemCategoryID_1`, `RequiredTotemCategoryID_2`, `RequiredAreasID`, `SchoolMask`, `RuneCostID`, `SpellMissileID`, `PowerDisplayID`, `EffectBonusMultiplier_1`, `EffectBonusMultiplier_2`, `EffectBonusMultiplier_3`, `SpellDescriptionVariableID`, `SpellDifficultyID`) VALUES
(300000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 5, 77, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 25, 25, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1482, 0, 0, 'Portal Effect: Stormwind', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712188, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712188, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0);

-- Add Ironforge Spell
DELETE FROM `spell_dbc` WHERE (`ID` = 300001);
INSERT INTO `spell_dbc` (`ID`, `Category`, `DispelType`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `ShapeshiftMask`, `unk_320_2`, `ShapeshiftExclude`, `unk_320_3`, `Targets`, `TargetCreatureType`, `RequiresSpellFocus`, `FacingCasterFlags`, `CasterAuraState`, `TargetAuraState`, `ExcludeCasterAuraState`, `ExcludeTargetAuraState`, `CasterAuraSpell`, `TargetAuraSpell`, `ExcludeCasterAuraSpell`, `ExcludeTargetAuraSpell`, `CastingTimeIndex`, `RecoveryTime`, `CategoryRecoveryTime`, `InterruptFlags`, `AuraInterruptFlags`, `ChannelInterruptFlags`, `ProcTypeMask`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `PowerType`, `ManaCost`, `ManaCostPerLevel`, `ManaPerSecond`, `ManaPerSecondPerLevel`, `RangeIndex`, `Speed`, `ModalNextSpell`, `CumulativeAura`, `Totem_1`, `Totem_2`, `Reagent_1`, `Reagent_2`, `Reagent_3`, `Reagent_4`, `Reagent_5`, `Reagent_6`, `Reagent_7`, `Reagent_8`, `ReagentCount_1`, `ReagentCount_2`, `ReagentCount_3`, `ReagentCount_4`, `ReagentCount_5`, `ReagentCount_6`, `ReagentCount_7`, `ReagentCount_8`, `EquippedItemClass`, `EquippedItemSubclass`, `EquippedItemInvTypes`, `Effect_1`, `Effect_2`, `Effect_3`, `EffectDieSides_1`, `EffectDieSides_2`, `EffectDieSides_3`, `EffectRealPointsPerLevel_1`, `EffectRealPointsPerLevel_2`, `EffectRealPointsPerLevel_3`, `EffectBasePoints_1`, `EffectBasePoints_2`, `EffectBasePoints_3`, `EffectMechanic_1`, `EffectMechanic_2`, `EffectMechanic_3`, `ImplicitTargetA_1`, `ImplicitTargetA_2`, `ImplicitTargetA_3`, `ImplicitTargetB_1`, `ImplicitTargetB_2`, `ImplicitTargetB_3`, `EffectRadiusIndex_1`, `EffectRadiusIndex_2`, `EffectRadiusIndex_3`, `EffectAura_1`, `EffectAura_2`, `EffectAura_3`, `EffectAuraPeriod_1`, `EffectAuraPeriod_2`, `EffectAuraPeriod_3`, `EffectMultipleValue_1`, `EffectMultipleValue_2`, `EffectMultipleValue_3`, `EffectChainTargets_1`, `EffectChainTargets_2`, `EffectChainTargets_3`, `EffectItemType_1`, `EffectItemType_2`, `EffectItemType_3`, `EffectMiscValue_1`, `EffectMiscValue_2`, `EffectMiscValue_3`, `EffectMiscValueB_1`, `EffectMiscValueB_2`, `EffectMiscValueB_3`, `EffectTriggerSpell_1`, `EffectTriggerSpell_2`, `EffectTriggerSpell_3`, `EffectPointsPerCombo_1`, `EffectPointsPerCombo_2`, `EffectPointsPerCombo_3`, `EffectSpellClassMaskA_1`, `EffectSpellClassMaskA_2`, `EffectSpellClassMaskA_3`, `EffectSpellClassMaskB_1`, `EffectSpellClassMaskB_2`, `EffectSpellClassMaskB_3`, `EffectSpellClassMaskC_1`, `EffectSpellClassMaskC_2`, `EffectSpellClassMaskC_3`, `SpellVisualID_1`, `SpellVisualID_2`, `SpellIconID`, `ActiveIconID`, `SpellPriority`, `Name_Lang_enUS`, `Name_Lang_enGB`, `Name_Lang_koKR`, `Name_Lang_frFR`, `Name_Lang_deDE`, `Name_Lang_enCN`, `Name_Lang_zhCN`, `Name_Lang_enTW`, `Name_Lang_zhTW`, `Name_Lang_esES`, `Name_Lang_esMX`, `Name_Lang_ruRU`, `Name_Lang_ptPT`, `Name_Lang_ptBR`, `Name_Lang_itIT`, `Name_Lang_Unk`, `Name_Lang_Mask`, `NameSubtext_Lang_enUS`, `NameSubtext_Lang_enGB`, `NameSubtext_Lang_koKR`, `NameSubtext_Lang_frFR`, `NameSubtext_Lang_deDE`, `NameSubtext_Lang_enCN`, `NameSubtext_Lang_zhCN`, `NameSubtext_Lang_enTW`, `NameSubtext_Lang_zhTW`, `NameSubtext_Lang_esES`, `NameSubtext_Lang_esMX`, `NameSubtext_Lang_ruRU`, `NameSubtext_Lang_ptPT`, `NameSubtext_Lang_ptBR`, `NameSubtext_Lang_itIT`, `NameSubtext_Lang_Unk`, `NameSubtext_Lang_Mask`, `Description_Lang_enUS`, `Description_Lang_enGB`, `Description_Lang_koKR`, `Description_Lang_frFR`, `Description_Lang_deDE`, `Description_Lang_enCN`, `Description_Lang_zhCN`, `Description_Lang_enTW`, `Description_Lang_zhTW`, `Description_Lang_esES`, `Description_Lang_esMX`, `Description_Lang_ruRU`, `Description_Lang_ptPT`, `Description_Lang_ptBR`, `Description_Lang_itIT`, `Description_Lang_Unk`, `Description_Lang_Mask`, `AuraDescription_Lang_enUS`, `AuraDescription_Lang_enGB`, `AuraDescription_Lang_koKR`, `AuraDescription_Lang_frFR`, `AuraDescription_Lang_deDE`, `AuraDescription_Lang_enCN`, `AuraDescription_Lang_zhCN`, `AuraDescription_Lang_enTW`, `AuraDescription_Lang_zhTW`, `AuraDescription_Lang_esES`, `AuraDescription_Lang_esMX`, `AuraDescription_Lang_ruRU`, `AuraDescription_Lang_ptPT`, `AuraDescription_Lang_ptBR`, `AuraDescription_Lang_itIT`, `AuraDescription_Lang_Unk`, `AuraDescription_Lang_Mask`, `ManaCostPct`, `StartRecoveryCategory`, `StartRecoveryTime`, `MaxTargetLevel`, `SpellClassSet`, `SpellClassMask_1`, `SpellClassMask_2`, `SpellClassMask_3`, `MaxTargets`, `DefenseType`, `PreventionType`, `StanceBarOrder`, `EffectChainAmplitude_1`, `EffectChainAmplitude_2`, `EffectChainAmplitude_3`, `MinFactionID`, `MinReputation`, `RequiredAuraVision`, `RequiredTotemCategoryID_1`, `RequiredTotemCategoryID_2`, `RequiredAreasID`, `SchoolMask`, `RuneCostID`, `SpellMissileID`, `PowerDisplayID`, `EffectBonusMultiplier_1`, `EffectBonusMultiplier_2`, `EffectBonusMultiplier_3`, `SpellDescriptionVariableID`, `SpellDifficultyID`) VALUES
(300001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 5, 77, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 25, 25, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1480, 0, 0, 'Portal Effect: Ironforge', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712172, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712188, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0);

-- Add all Gameobject Portals we want
DELETE FROM `gameobject_template` WHERE `entry` IN (
    @GO_TEMPLATE + 0,
    @GO_TEMPLATE + 1,
    @GO_TEMPLATE + 2,
    @GO_TEMPLATE + 3,
    @GO_TEMPLATE + 4,
    @GO_TEMPLATE + 5,
    @GO_TEMPLATE + 6,
    @GO_TEMPLATE + 7
);

-- displayID is found via "npm run start -- --search="{*} >= 0 && {*} <= 50000" --columns=ID GameObjectDisplayInfo > models.txt"
-- Data0 is the Spell we want to cast when you click on it
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(@GO_TEMPLATE + 0, 22, 4396, 'Portal to Stormwind', '', '', '', 1, 300000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(@GO_TEMPLATE + 1, 22, 4394, 'Portal to Ironforge', '', '', '', 1, 300001, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(@GO_TEMPLATE + 2, 22, 4393, 'Portal to Darnassus', '', '', '', 1, 17608, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(@GO_TEMPLATE + 3, 22, 6955, 'Portal to Exodar', '', '', '', 1, 32268, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(@GO_TEMPLATE + 4, 22, 7848, 'Portal to Booty Bay', '', '', '', 1, 71436, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(@GO_TEMPLATE + 5, 22, 7848, 'Portal to Theramore', '', '', '', 1, 49362, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(@GO_TEMPLATE + 6, 22, 7146, 'Portal to Shattrah', '', '', '', 1, 35718, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(@GO_TEMPLATE + 7, 22, 8111, 'Portal to Dalaran', '', '', '', 1, 53141, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0);

-- Language stuff, honestly not really worrying about this outside of what's easy to add
DELETE FROM `gameobject_template_locale` WHERE `entry` BETWEEN @GO_TEMPLATE + 0 AND @GO_TEMPLATE + 7;

INSERT INTO `gameobject_template_locale` (`entry`, `locale`, `name`, `castBarCaption`, `VerifiedBuild`)
SELECT @GO_TEMPLATE + 0, L.locale, L.name, '', 0
FROM gameobject_template AS T
INNER JOIN gameobject_template_locale AS L
ON T.entry = L.entry
WHERE T.entry = 176296  #Portal to Stormwind
UNION
SELECT @GO_TEMPLATE + 1, L.locale, L.name, '', 0
FROM gameobject_template AS T
INNER JOIN gameobject_template_locale AS L
ON T.entry = L.entry
WHERE T.entry = 176497  #Portal to Ironforge
UNION
SELECT @GO_TEMPLATE + 2, L.locale, L.name, '', 0
FROM gameobject_template AS T
INNER JOIN gameobject_template_locale AS L
ON T.entry = L.entry
WHERE T.entry = 182351  #Portal to Exodar
UNION
SELECT @GO_TEMPLATE + 3, L.locale, L.name, '', 0
FROM gameobject_template AS T
INNER JOIN gameobject_template_locale AS L
ON T.entry = L.entry
WHERE T.entry = 176498;  #Portal to Darnassus

-- Add gameobject templates
DELETE FROM `gameobject_template_addon` WHERE `entry` IN (
    @GO_TEMPLATE + 0,
    @GO_TEMPLATE + 1,
    @GO_TEMPLATE + 2,
    @GO_TEMPLATE + 3,
    @GO_TEMPLATE + 4,
    @GO_TEMPLATE + 5,
    @GO_TEMPLATE + 6,
    @GO_TEMPLATE + 7
);
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`) VALUES
(@GO_TEMPLATE + 0, 1732, 0, 0, 0),
(@GO_TEMPLATE + 1, 1732, 0, 0, 0),
(@GO_TEMPLATE + 2, 1732, 0, 0, 0),
(@GO_TEMPLATE + 3, 1732, 0, 0, 0),
(@GO_TEMPLATE + 4, 1732, 0, 0, 0),
(@GO_TEMPLATE + 5, 1732, 0, 0, 0),
(@GO_TEMPLATE + 6, 1732, 0, 0, 0),
(@GO_TEMPLATE + 7, 1732, 0, 0, 0);

-- Add the actual gameobjects or actual protals that will appear
DELETE FROM `gameobject` WHERE `guid` IN (
    @GO_SPAWN + 00,
    @GO_SPAWN + 01,
    @GO_SPAWN + 02,
    @GO_SPAWN + 03,
    @GO_SPAWN + 04,
    @GO_SPAWN + 05,
    @GO_SPAWN + 06,
    @GO_SPAWN + 07,
    @GO_SPAWN + 08,
    @GO_SPAWN + 09,
    @GO_SPAWN + 10,
    @GO_SPAWN + 11,
    @GO_SPAWN + 12,
    @GO_SPAWN + 13
);

-- Add the actual gameobjects and where they will be GPS wise. GPS also tells you the "map", and the GO_TEMPLATE should match what was added in gameobject_template
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`)
VALUES
(@GO_SPAWN + 00, @GO_TEMPLATE + 00, 0, 0, 0, 1, 1, -4664.250, -977.824, 501.656, 0.772, -0, -0, -0.76223, -0.647307, 300, 0, 1, '', 0),
(@GO_SPAWN + 01, @GO_TEMPLATE + 01, 0, 0, 0, 1, 1, -8816.465, 628.973, 94.122, 0.667, -0, -0, -0.999018, -0.0442966, 300, 0, 1, '', 0),
(@GO_SPAWN + 02, @GO_TEMPLATE + 02, 0, 0, 0, 1, 1, -4653.043, -975.664, 501.657, 0.594, -0, -0, -0.76223, -0.647307, 300, 0, 1, '', 0),
(@GO_SPAWN + 03, @GO_TEMPLATE + 01, 1, 0, 0, 1, 1, 9658.313, 2520.421, 1331.686, 1.799, -0, -0, -0.999018, -0.0442966, 300, 0, 1, '', 0),
(@GO_SPAWN + 04, @GO_TEMPLATE + 03, 0, 0, 0, 1, 1, -4641.326, -966.322, 501.660, 0.940, -0, -0, -0.76223, -0.647307, 300, 0, 1, '', 0),
(@GO_SPAWN + 05, @GO_TEMPLATE + 01, 530, 0, 0, 1, 1, -4041.432, -11571.490, -138.427, 2.810, -0, -0, -0.999018, -0.0442966, 300, 0, 1, '', 0),
(@GO_SPAWN + 06, @GO_TEMPLATE + 04, 0, 0, 0, 1, 1, -4647.705, -942.471, 501.660, 0.651, -0, -0, -0.76223, -0.647307, 300, 0, 1, '', 0),
(@GO_SPAWN + 07, @GO_TEMPLATE + 01, 0, 0, 0, 1, 1, -14455.680, 488.762, 15.120, 5.492, -0, -0, -0.999018, -0.0442966, 300, 0, 1, '', 0),
(@GO_SPAWN + 08, @GO_TEMPLATE + 05, 0, 0, 0, 1, 1, -4669.474, -932.312, 501.660, 0.670, -0, -0, -0.76223, -0.647307, 300, 0, 1, '', 0),
(@GO_SPAWN + 09, @GO_TEMPLATE + 01, 1, 0, 0, 1, 1, -3715.378, -4417.946, 25.435, 0.163, -0, -0, -0.999018, -0.0442966, 300, 0, 1, '', 0),
(@GO_SPAWN + 10, @GO_TEMPLATE + 06, 0, 0, 0, 1, 1, -4680.801, -941.932, 501.670, 0.713, -0, -0, -0.76223, -0.647307, 300, 0, 1, '', 0),
(@GO_SPAWN + 11, @GO_TEMPLATE + 01, 530, 0, 0, 1, 1, -1892.924, 5439.405, -12.427, 5.956, -0, -0, -0.999018, -0.0442966, 300, 0, 1, '', 0),
(@GO_SPAWN + 12, @GO_TEMPLATE + 07, 0, 0, 0, 1, 1, -4684.826, -952.091, 501.660, 0.720, -0, -0, -0.76223, -0.647307, 300, 0, 1, '', 0),
(@GO_SPAWN + 13, @GO_TEMPLATE + 01, 571, 0, 0, 1, 1, 5798.330, 631.574, 647.418, 0.825, -0, -0, -0.999018, -0.0442966, 300, 0, 1, '', 0);