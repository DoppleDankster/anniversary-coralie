
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

        if entry.Id == "NPC_Narcissus_01" then
            entry.DisplayName = "David le Merveilleux"
            entry.Description = "Plus modeste que vous tous"
        end

        if entry.Id == "NPC_Nemesis_01"  then
            entry.DisplayName = "Gaël"
            entry.Description = "Tsundere du Crossroads"
        end

        if entry.Id == "NPC_Dora_01"  then
            entry.DisplayName = "Doravidou"
            entry.Description = "Ingénieur informaticien"
        end
        if entry.Id == "NPC_Zeus_01"  then
            entry.DisplayName = "Ze Gab"
            entry.Description = "Grandfather of All"
        end

        if entry.Id == "NPC_Nyx_01"  then
            entry.DisplayName = "Camille"
            entry.Description = "Cerne moi dans la nuit"
        end

        if entry.Id == "NPC_Dionysus_01"  then
            entry.DisplayName = "A(d)rien"
            entry.Description = "Godwin's Rule"
        end

        if entry.Id == "NPC_Eris_01"  then
            entry.DisplayName = "Chatbrina"
            entry.Description = "Plus chaotique qu'Eris"
        end
        if entry.Id == "NPC_Medea_01"  then
            entry.DisplayName = "Kimiya"
            entry.Description = "Necromancie de la raison pure"
        end
        if entry.Id == "NPC_Hypnos_01"  then
            entry.DisplayName = "Le Roi du duvet"
            entry.Description = ""
        end
        
    end
end)