local mod = modutil.mod.Mod.Register(_PLUGIN.guid)

function mod.OverloadCerberus()
    local cerberusEnemyData = game.EnemyData.NPC_Cerberus_Field_01
    cerberusEnemyData.InheritFrom = { "NPC_Neutral"}
    cerberusEnemyData.CanReceiveGift=false
    cerberusEnemyData.SpecialInteractFunctionName=nil
    cerberusEnemyData.UseTextGift=nil
    cerberusEnemyData.OnUsedFunctionName="UseNPC"
    cerberusEnemyData.UseText="E: Pet Remi"
    cerberusEnemyData.AIOptions={}
    
    local frinosFamiliarData = game.FamiliarData.FrogFamiliar
    table.insert(frinosFamiliarData.SetupEvents,{
        FunctionName="OverwriteSelf",
        Args=
        {
        DefaultCostume = "FamiliarCostume_FrogNightmare",
        SpecialInteractFunctionNames=nil,
        }
    })
    frinosFamiliarData.InheritFrom = { "NPC_Neutral"}
end

function mod.OverloadFrinos()
    local frinosEnemyData = game.EnemyData.FrogFamiliar
    frinosEnemyData.InheritFrom = { "NPC_Neutral"}
    frinosEnemyData.CanReceiveGift=false
    frinosEnemyData.SpecialInteractFunctionName=nil
    frinosEnemyData.UseTextGift=nil
    frinosEnemyData.OnUsedFunctionName="UseNPC"
    frinosEnemyData.UseText="E: Pet Guillaume"
    frinosEnemyData.AIOptions={}
    
    local frinosFamiliarData = game.FamiliarData.FrogFamiliar
    table.insert(frinosFamiliarData.SetupEvents,{
        FunctionName="OverwriteSelf",
        Args=
        {
        DefaultCostume = "FamiliarCostume_FrogNightmare",
        SpecialInteractFunctionNames=nil,
        }
    })
    frinosFamiliarData.InheritFrom = { "NPC_Neutral"}
end

function mod.InsertFrinosPackage()
    local newEntry ={}
    local guiPortraitsVFXFile = rom.path.combine(rom.paths.Content(), "Game\\Animations\\GUI_Screens_VFX.sjson")
    sjson.hook(guiPortraitsVFXFile, function(data)
        for _,entry in ipairs(data.Animations) do
            if entry.Name == "FamiliarShopFrog" then
                entry.FlipHorizontal = true
                entry.OffsetX = -150
            end
        end
    end)
end
function mod.InsertAdolfPackage()
    local newEntry ={
        Name = "Portraits_Adolf_01",
        FilePath = _PLUGIN.guid .. "Adolf\\Portraits_Adolf_01",
        Scale = 1,
    }
    print(newEntry.Name, newEntry.FilePath)
    local guiPortraitsVFXFile = rom.path.combine(rom.paths.Content(), "Game\\Animations\\GUI_Portraits_VFX.sjson")
    sjson.hook(guiPortraitsVFXFile, function(data)
        table.insert(data.Animations, newEntry)
        end)
end

mod.InsertFrinosPackage()
mod.InsertAdolfPackage()
mod.OverloadFrinos()
mod.OverloadCerberus()