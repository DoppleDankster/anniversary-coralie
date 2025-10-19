
local charactersFile = rom.path.combine(rom.paths.Content(), "Game\\Text\\en\\HelpText.en.sjson")

sjson.hook(charactersFile, function(data)
    table.insert(data.Texts, {
        Id = "Frinos",
        DisplayName = "Guillaume",
        Description = "Amphibia Maximum"
    })
    table.insert(data.Texts, {
        Id = "FrogFamiliar",
        DisplayName = "Guillaume",
        Description = "Amphibia Maximum"
    })
end)

sjson.hook(charactersFile, function(data)
    for _, entry in ipairs(data.Texts) do
        if entry.Id == "PlayerUnit"  then
        entry.DisplayName = "Coralie"
        entry.Description = "Queen of Sauce"
        end

        if entry.Id == "AthenaMessage"  then
            entry.DisplayName = "Divine Birthday Party"
        end

        if entry.Id == "NPC_Hades_02"  then
            entry.DisplayName = "Bernard"
            entry.Description = "Bourru mais pas bourré"
        end
        if entry.Id == "NPC_Persephone_01"  then
            entry.DisplayName = "Marie Christine"
            entry.Description = "MC Circulaire"
        end
        if entry.Id == "NPC_Cerberus_01"  then
            entry.DisplayName = "Remigrrrr"
            entry.Description = "gentil chien chien"
        end

        if entry.Id == "NPC_Zagreus_01"  then
            entry.DisplayName = "Nyathan"
            entry.Description = "Fruisse à Moto"
        end

        if entry.Id == "NPC_Charon_01"  then
            entry.DisplayName = "Rebecharon"
            entry.Description = "Tema la taille du Rat"
        end

        if entry.Id == "NPC_Nemesis_01"  then
            entry.DisplayName = "Gaël"
            entry.Description = "Femme à Barbe"
        end

        if entry.Id == "NPC_Dora_01"  then
            entry.DisplayName = "Doravidou"
            entry.Description = "Ingénieur informaticien"
        end

        if entry.Id == "NPC_Selene_01"  then
            entry.DisplayName = "Bryan"
            entry.Description = "Ne montre pas facilement sa lune"
        end

        if entry.Id == "NPC_Zeus_01"  then
            entry.DisplayName = "Adrien"
            entry.Description = "L'ami des animaux"
        end

        if entry.Id == "NPC_Nyx_01"  then
            entry.DisplayName = "Gargamille"
            entry.Description = "La folle aux chats"
        end

        -- if entry.Id == "NPC_Dionysus_01"  then
        --     entry.DisplayName = "new-dionysus"
        --     entry.Description = "Mécène du Parrain"
        -- end

        -- if entry.Id == "NPC_Medea_01"  then
        --     entry.DisplayName = "new-medea"
        --     entry.Description = "mommyyyyyyy"
        -- end

        -- if entry.Id == "NPC_Hera_Story_01"  then
        --     entry.DisplayName = "new-hera"
        -- end

        -- if entry.Id == "NPC_Hecate_01"  then
        --     entry.DisplayName = "new-hecate"
        -- end
        -- if entry.Id == "NPC_Hermes_01"  then
        --     entry.DisplayName = "new-hermes"
        -- end
        -- if entry.Id == "NPC_Chronos_01"  then
        --     entry.DisplayName = "new-chronos"
        -- end
        -- if entry.Id == "NPC_Apollo_01"  then
        --     entry.DisplayName = "new-apollo"
        -- end
        -- if entry.Id == "NPC_Arthemis_01"  then
        --     entry.DisplayName = "new-arthemis"
        -- end
        -- if entry.Id == "NPC_Athena_01"  then
        --     entry.DisplayName = "new-athena"
        -- end
        -- if entry.Id == "NPC_Heracles_01"  then
        --     entry.DisplayName = "new-heracles"
        -- end
        -- if entry.Id == "NPC_Narcissus_01"  then
        --     entry.DisplayName = "new-narcissus"
        -- end
        -- if entry.Id == "NPC_Moros_01"  then
        --     entry.DisplayName = "new-moros"
        -- end
        -- if entry.Id == "NPC_Dusa_01"  then
        --     entry.DisplayName = "new-dusa"
        -- end
        -- if entry.Id == "NPC_Orpheus_01"  then
        --     entry.DisplayName = "new-orpheus"
        -- end
        -- if entry.Id == "SatyrLancer"  then
        --     entry.DisplayName = "Nyathan"
        -- end
    end
end)