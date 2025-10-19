local mod = modutil.mod.Mod.Register(_PLUGIN.guid)

mod.EncounterName = "ModEncounter"
mod.CauldronID = 558175
mod.FrinosId = 576169

mod.EasySpawnX = 800
mod.EasySpawnY = 1000

local customAdolfPackage = _PLUGIN.guid .. "Adolf"

game.david = mod

local SpawnData = {
    Frinos = {
        Packages = {"FrogFamiliar"},
        Offset = {X = -1200,Y = -450},
        UnitName = "FrogFamiliar",
        TableData = game.EnemyData.FrogFamiliar
    },
    Nyx = {
        Packages = {"Nyx"},
        Offset = {X = -550,Y = 350},
        UnitName = "NPC_Nyx_Story_01",
        TableData = game.EnemyData.NPC_Nyx_Story_01
    },

    Cerberus = {
        Packages = {"Cerberus","Hades","BiomeI"},
        Offset = {X = mod.EasySpawnX,Y = mod.EasySpawnY},
        UnitName = "NPC_Cerberus_Field_01",
        TableData = game.EnemyData.NPC_Cerberus_Field_01
    },
    Zagreus = {
        Packages = {"Zagreus","BiomeC"},
        Offset = {X = -700,Y = -450},
        UnitName = "NPC_Zagreus_01",
        TableData = game.EnemyData.NPC_Zagreus_01
    },
    Selene ={
        Packages = {"Selene"},
        Offset = {X = 1950,Y = 450},
        UnitName = "NPC_Selene_01",
        TableData = game.EnemyData.NPC_Selene_01
    },
    Hades = {
        Packages = {"Hades","BiomeI"},
        Offset = {X = -200,Y = -250},
        UnitName = "NPC_Hades_02",
        TableData = game.EnemyData.NPC_Hades_02
    },
    Charon = {
        Packages = {"Charon"},
        Offset = {X = -900,Y = 400},
        UnitName = "NPC_Charon_01",
        TableData = game.EnemyData.NPC_Charon_01
    },
    Persephone = {
        Packages = {"Persephone","BiomeI"},
        Offset = {X = -3500,Y = 600},
        UnitName = "NPC_Persephone_01",
        TableData = game.EnemyData.NPC_Persephone_01
    },
    Artemis = {
        Packages = {"Artemis","BiomeF"},
        Offset = {X = -2700,Y = 400},
        UnitName = "NPC_Artemis_01",
        TableData = game.EnemyData.NPC_Artemis_01
    },
    Dionysus = {
        Packages = {"Dionysus","BiomeP"},
        Offset = {X = -3700,Y = 350},
        UnitName = "NPC_Dionysus_01",
        TableData = game.EnemyData.NPC_Dionysus_01
    },
    -- Medea = {
    --     Packages = {"Medea","BiomeN"},
    --     Offset = {X = -200,Y = 150},
    --     UnitName = "NPC_Medea_01",
    --     TableData = game.EnemyData.NPC_Medea_01
    -- },
    -- Circe = {
    --     Packages = {"Circe","BiomeO"},
    --     Offset = {X = -2500,Y = -150},
    --     UnitName = "NPC_Circe_01",
    --     TableData = game.EnemyData.NPC_Circe_01
    -- },
    -- Zeus = {
    --     Packages = {"Zeus","BiomeQEnding"},
    --     Offset = {X = 450,Y = 250},
    --     UnitName = "NPC_Zeus_Story_01",
    --     TableData = game.EnemyData.NPC_Zeus_Story_01
    -- },
    -- Hera = {
    --     Packages = {"Hera","BiomeQEnding"},
    --     Offset = {X = 1800,Y = 0},
    --     UnitName = "NPC_Hera_Story_01",
    --     TableData = game.EnemyData.NPC_Hera_Story_01
    -- },
    -- Hermes = {
    --     Packages = {"Hermes","BiomeQ"},
    --     Offset = {X = -1200,Y = 150},
    --     UnitName = "NPC_Hermes_01",
    --     TableData = game.EnemyData.NPC_Hermes_01
    -- },
    -- Icarus = {
    --     Packages = {"Icarus","BiomeO"},
    --     Offset = {X = 2550,Y = 750},
    --     UnitName = "NPC_Icarus_01",
    --     TableData = game.EnemyData.NPC_Icarus_01
    -- },
    
}
function mod.Spawn(name)
    local entry = SpawnData[name]
    print("----------------------------------------------SPAWNING" .. entry.UnitName)

    LoadPackages({Name = entry.Packages})
    local currentRun = game.CurrentRun
    local currentRoom = game.CurrentRun.CurrentRoom
    local currentEncounter = game.EncounterData[mod.EncounterName] 
    local newUnit = game.DeepCopyTable(entry.TableData) or {}

    newUnit.RequireUseToGift=false
    newUnit.RequireRoomInteraction=false
    newUnit.SpecialInteractFunctionNames = {}
    newUnit.SpecialInteractFunctionName = nil
    newUnit.CanReceiveGift = false
    newUnit.OnUsedFunctionName = "UseNPC"

    local spawnPointId = game.SelectSpawnPoint(currentRoom, newUnit,
    { SpawnNearId = currentRun.Hero.ObjectId, SpawnRadius = 0 })
    if spawnPointId == nil then
        spawnPointId = currentRun.Hero.ObjectId
    end

    newUnit.ObjectId = SpawnUnit({ Name = entry.UnitName, Group = "Standing", DestinationId = mod.CauldronID, OffsetX= entry.Offset.X,OffsetY= entry.Offset.Y })
    game.SetupUnit(newUnit, game.CurrentRun, { IgnoreAI = true, PreLoadBinks = true, IgnoreAssert = true, })
    SpawnData[name].ObjectId = newUnit.ObjectId
    if name == "Cerberus" then
        SetScale({Id = newUnit.ObjectId, Fraction = 0.4}) 
    end

    if name == "Frinos" then
        LoadPackages({Names = {customFrinosPackage}})
        SetScale({Id = newUnit.ObjectId, Fraction = 4}) 
    end

    if name ~= "Artemis" then
        Track({ Ids = { newUnit.ObjectId }, DestinationIds = { CurrentRun.Hero.ObjectId } })
    end
    if name == "Dionysus" then
        LoadPackages({Names = { _PLUGIN.guid .. "Adolf"}})
    end
    
    if name == "Artemis" then
        SetAngle({Id=newUnit.ObjectId, Angle=180})
    end
    CheckAvailableTextLines(newUnit)
end



function mod.SpawnEveryone()
    for name, _ in pairs(SpawnData) do
       mod.Spawn(name)
    end
end


function mod.InitCrossroad()
    game.GlobalVoiceLines = {}
    game.EncounterData[mod.EncounterName] = { Units = SpawnData}
    mod.SpawnEveryone()
    game._modunits = game.EncounterData[mod.EncounterName].Units


    thread( DisplayInfoBanner, nil, { 
		Text = "AthenaMessage", 
		Delay = 0.2,
		TextFadeColor = {1, 0.8, 0.4, 1},
		AnimationName = "InfoBannerAthenaIn",
		AnimationOutName = "InfoBannerAthenaOut", 
		FontScale = 0.9,
	} )
end

-- Run the Init Function when the room is loaded
table.insert(game.HubRoomData.Hub_Main.OnLoadEvents,{FunctionName = _PLUGIN.guid .. "." .. "InitCrossroad"})


