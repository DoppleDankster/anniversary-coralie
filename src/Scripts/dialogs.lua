
local function OverrideZagreusChat()
    local chatName = _PLUGIN.guid .. '-' .."Zagreus"
    game.EnemyData.NPC_Zagreus_01.InteractTextLineSets[chatName] = {

        Name = chatName,
        GameStateRequirements={},
        {
           Text =  "C'est l'anniversaire dans tous les recoins"
        },
        {
            Text = "c'est presque tous les ans qu'on a l'anniversaire, grâce à cet anni c'est la joie c'est pratique", 
        },
        {
            Text = "c'est au moins un principe à retenir pour faire la frite, cette année c'est bien l'anniversaire tombe à pic !", 
        },
    }
    table.insert(game.NarrativeData.NPC_Zagreus_01.InteractTextLinePriorities,1,chatName)
end

local function OverrideNemesisChat()
    local chatName = _PLUGIN.guid .. '-' .."Nemesis"

    LoadPackages({"Nemesis"})
    game.EnemyData.NPC_Nemesis_01.InteractTextLineSets[chatName] = {

        Name = chatName,
        GameStateRequirements={},
        {
            Text = "Tant de mal se répand dehors, sans personne pour l’arrêter… Et pourtant, nous sommes tous rassemblés pour célébrer ton anniversaire",
        },
        {
            Text = "Qu’est-ce que tu fais encore là ? Tu attends vraiment quelque chose de moi ?",
        },
        {
			Portrait = "Portrait_Nemesis_Averted_01",			
            Text = "Joyeux anniversaire… Maintenant, disparais",
        },
    }
    table.insert(game.NarrativeData.NPC_Nemesis_01.InteractTextLinePriorities,1,chatName)
end

local function OverrideCharonChat()
    local chatName = _PLUGIN.guid .. '-' .."Charon" 
    game.NarrativeData.NPC_Charon_01 = {InteractTextLinePriorities = {}, GiftTextLinePriorities = {}}
    game.EnemyData.NPC_Charon_01.InteractTextLineSets = {}
    game.EnemyData.NPC_Charon_01.InteractTextLineSets[chatName] = {

        Name = chatName,
        GameStateRequirements={},
        {
            Text = "{#Emph} Hhhhaaaaaaaaghhhhhhhhhhhppy birthhhhhhhdayyyyghhhhhh queen ! <3", 
        },
    } 
    table.insert(game.NarrativeData.NPC_Charon_01.InteractTextLinePriorities,1,chatName)
end

local function OverrideNyxChat()
    local chatName = _PLUGIN.guid .. '-' .."Nax" 
    game.NarrativeData.NPC_Nyx_Story_01 = {InteractTextLinePriorities = {}, GiftTextLinePriorities = {}}
    game.EnemyData.NPC_Nyx_Story_01.InteractTextLineSets = {}
    game.EnemyData.NPC_Nyx_Story_01.InteractTextLineSets[chatName] = {

        Name = chatName,
        GameStateRequirements={},
        {
            Text = "En ce cycle nouveau, je t’accorde mes bénédictions", 
        },
        {
            Text = "que ta curiosité t’ouvre encore des mondes", 
        },
        {
            Text = "que tes éclats de rire secouent même les nuits les plus denses", 
        },
        {
            Text = "et que tes histoires — drôles ou non — continuent d’enchanter ceux qui te connaissent", 
        },
    }
    table.insert(game.NarrativeData.NPC_Nyx_Story_01.InteractTextLinePriorities,1,chatName)
end

local function OverrideDionysusChat()
    local chatName = _PLUGIN.guid .. '-' .."Dionysus"
    game.EnemyData.NPC_Dionysus_01.InteractTextLineSets[chatName] = {

        Name = chatName,
        GameStateRequirements={},
        {
            Portrait = "Portraits_Adolf_01",
            Text = "text",
        },
    }
    table.insert(game.NarrativeData.NPC_Dionysus_01.InteractTextLinePriorities,1,chatName)
end

local function OverrideSeleneChat()
    local chatName = _PLUGIN.guid .. '-' .."Selene"
    game.EnemyData.NPC_Selene_01.InteractTextLineSets[chatName] = {

        Name = chatName,
        GameStateRequirements={},
        {
            Text = "avant les U-tuber, ensuite les V-tuber, bienôt les...",
        },
        
    }
    table.insert(game.NarrativeData.NPC_Selene_01.InteractTextLinePriorities,1,chatName)
end


local function OverrideHadesChat()
    local chatName = _PLUGIN.guid .. '-' .."Hades"


    LoadPackages({"Hades","NPC_Hades_02","NPC_Hades_Field_01","BiomeI"})
    game.NarrativeData.NPC_Hades_02 = {InteractTextLinePriorities = {}}
    game.EnemyData.NPC_Hades_02.InteractTextLineSets = {}
    game.EnemyData.NPC_Hades_02.InteractTextLineSets[chatName] = {

        Name = chatName,
        GameStateRequirements={},
        {
            Portrait = "Portrait_Hades_Past_01",
            Text = "{#Emph} RAAAAAAAAH!",
        },
        {
            Portrait = "Portrait_LordHades_01",
            Text = "Par le Cybermage, moi Bernard transféré dans cet avatar",
        },
        {
            Portrait = "Portrait_LordHades_Averted_01",
            Text = "Je te souhaite comme ton père qui t'aime,",
        },
        {
            Portrait = "Portrait_LordHades_01",
            Text = "bon anniversaire et long vie à toi Coralie!",
        },
        {
            Portrait = "Portrait_Hades_Past_01",
            Text = "(émoji de cadeaux, de confettis, de gros sac de pognon et de gâteau)",
        },
    }
    table.insert(game.NarrativeData.NPC_Hades_02.InteractTextLinePriorities,1,chatName)
end

local function OverridePersephoneChat()
    local chatName = _PLUGIN.guid .. '-' .."Persephone"
    game.NarrativeData.NPC_Persephone_01 = {InteractTextLinePriorities = {}}
    game.EnemyData.NPC_Persephone_01.InteractTextLineSets = {}
    game.EnemyData.NPC_Persephone_01.InteractTextLineSets[chatName] = {

        Name = chatName,
        GameStateRequirements={},
        {
            Portrait = "Portrait_Persephone_Queen_Joyful_01",
            Text = "Bonjour mon satellite",
        },
        {
            Portrait = "Portrait_Persephone_Queen_Joyful_01",
            Text = "ça fait 34 ans que tu es entrée dans mon orbite.",
        },
        {
            Portrait = "Portrait_Persephone_Queen_Joyful_01",
            Text = "34 ans de joies, d'amours et de bon moments.",
        },
        {
            Portrait = "Portrait_Persephone_Queen_Joyful_01",
            Text = "Merci de faire partie de ma galaxie, je t'aime...",
        },
    }
    table.insert(game.NarrativeData.NPC_Persephone_01.InteractTextLinePriorities,1,chatName)
end

local function OverrideDoraChat()
    local chatName = _PLUGIN.guid .. '-' .."Dora"
    LoadPackages({"Dora"})

    game.EnemyData.NPC_Dora_01.InteractTextLineSets[chatName] = {
        Name = chatName,
        GameStateRequirements={},
        {
            Portrait = "Portrait_Dora_Hardhat",
            Text = "Guillaume près des autres grenouilles c'est plus RP...",
        },
        {
            Portrait = "Portrait_Dora_Hardhat",
            Text = "Nathan pas trop de loin de sa kween sinon il va râler...",
        },
        {
            Portrait = "Portrait_Dora_Thoughtful_01",
            Text = "Bon ça à l'air pas mal comme ça",
        },
        {
            Portrait = "Portrait_Dora_Default_01",
            Text = "Hey salut Coralie",
        },
        {
            Portrait = "Portrait_Dora_Spooky_01",
            Text = "CORALIE !?",
            Emote = "PortraitEmoteSurprise",
        },
        {
            Portrait = "Portrait_Dora_Spooky_01",
            Text = "Vite tout le monde en place... ",
            Emote = "PortraitEmoteFiredUp",
        },
    }
    table.insert(game.NarrativeData.NPC_Dora_01.InteractTextLinePriorities,1,chatName)
end

local function OverrideZeusChat()
    local chatName = _PLUGIN.guid .. '-' .."Zeus" 
    LoadPackages({"Zeus","BiomeQEnding"})
    game.EnemyData.NPC_Zeus_Story_01.InteractTextLineSets[chatName] = {


        Name = chatName,
        GameStateRequirements={},
        {
            Portrait = "Portrait_Zeus_Pleased_01",
            Text = "Je prend note de tes efforts pour rattraper mon age avancé. Pathétique.",
        },
        {
            Text = "Pas le peine de courir après Kronos, tu ne me rattrapera jamais.",
        },
        {
            Text = "Alors profite bien de ta petite fête, lance ton petit run, et reviens boire un coup une fois que tu te seras fait peter le huk par un titan ou un poulpe."
        },
        {
            Text = "Comment-ça ? moi ? Grumpy ? Non, cela n'a absolument AUCUN Rapport avec la partie de Commander que…",
        },
        {
            Text = "Putain d'Y'shtola...",
        },
    }
    table.insert(game.NarrativeData.NPC_Zeus_Story_01.InteractTextLinePriorities,1,chatName)
end


local function OverrideFrinosChat()
    local chatName = _PLUGIN.guid .. '-' .."Frinos"

    game.NarrativeData.FrogFamiliar = {InteractTextLinePriorities = {}}
    game.EnemyData.FrogFamiliar.InteractTextLineSets = {}
    game.EnemyData.FrogFamiliar.InteractTextLineSets[chatName] = {
        Name = chatName,
        GameStateRequirements={},
        {
            Portrait = "FamiliarShopFrog",
            Text = "Joyeux Anniversaire Coco.",
        },
        {
            Portrait = "FamiliarShopFrog",
            Text = "Pour cette occasion spéciale, souhaitez-vous recevoir des faits intéressants sur les grenouilles?",
        },
        {
            Portrait = "FamiliarShopFrog",
            Text = "Vous êtes désormais inscrite aux faits intéressants sur les grenouilles.",
        },
        {
            Portrait = "FamiliarShopFrog",
            Text = "La grenouille aux yeux rouges change de couleur la nuit du vert au violet pour mieux se camoufler.",
        },
        {
            Portrait = "FamiliarShopFrog",
            Text = "La terrible dendrobate ou Phyllobates terribilis, peut tuer 10 hommes.",
        },
        {
            Portrait = "FamiliarShopFrog",
            Text = "Pour se camoufler certaines grenouilles ont évolué pour ressembler à des feuilles mortes, de la mousse ou même des cacas d'oiseau.",
        },
        {
            Portrait = "FamiliarShopFrog",
            Text = "Les Phyllomedusa, ou grenouilles singes sécrètent leur propre crème solaire et se l'étalent régulièrement sur tout le corps.",
        },
        {
            Portrait = "FamiliarShopFrog",
            Text = "Merci d'avoir suivi les faits intéressants sur les grenouilles.",
        },
        {
            Portrait = "FamiliarShopFrog",
            Text = "Vous receverez prochainement plus de  faits intéressants sur les grenouilles",
        },
        
    }

    table.insert(game.NarrativeData.FrogFamiliar.InteractTextLinePriorities,1,chatName)
end

local function OverrideNarcissusChat()
    local chatName = _PLUGIN.guid .. '-' .."Narcissus" 
    
    game.EnemyData.NPC_Narcissus_Field_01.InteractTextLineSets = {}
    game.EnemyData.NPC_Narcissus_Field_01.InteractTextLineSets[chatName] = {

        Name = chatName,
        GameStateRequirements={},
        {
            Text = "{#Emph}Si incroyable...",
        },
        {
            Text = "{#Emph}Si beauuuu...",
        },
        {
            Text = "{#Emph}Si intelliiiiiiigent...",
        },
        {
            Text = "{#Emph}Si talentueuuuuuuuuuuuuuuuuuux..",
        },
        {
            Text = "Mais... qui vient parasiter mon reflet?",
            Emote = "PortraitEmoteSurprise",
        },
        {
            Text = "Comment? ton anniversaire?",
        },
        {
            Text = "Oui bon anniversaire on a compris. tu as perdu l'âge du christ et probablement gagnée une ride en échange",
        },
        {
            Text = "Voici mon cadeau pour toi: me regarder. Qu'elle belle journée pour avoir des yeux je sais...",
        },
    }
    table.insert(game.NarrativeData.NPC_Narcissus_Field_01.InteractTextLinePriorities,1,chatName)
end

local function OverrideCerberusChat()
    local chatName = _PLUGIN.guid .. '-' .."Cerberus"

    game.NarrativeData.NPC_Cerberus_Field_01 = {InteractTextLinePriorities = {}}
    game.EnemyData.NPC_Cerberus_Field_01.InteractTextLineSets = {}
    game.EnemyData.NPC_Cerberus_Field_01.InteractTextLineSets[chatName] = {
        Name = chatName,
        GameStateRequirements={},
        {
            Text = "Woof! Comment appel-t-on une Coco qui prend soin des gens? Woof!",
        },
        {
            Text = "{#Emph} la Biblio take care Woof!",
        },
        {
            Text = "Joyeux woof anniversaire!! Woof",
        },
        
    }

    table.insert(game.NarrativeData.NPC_Cerberus_Field_01.InteractTextLinePriorities,1,chatName)
end


local function OverrideErisChat()
    local chatName = _PLUGIN.guid .. '-' .."Eris" 
    
    game.EnemyData.NPC_Eris_01.InteractTextLineSets = {}
    game.EnemyData.NPC_Eris_01.InteractTextLineSets[chatName] = {

        Name = chatName,
        GameStateRequirements={},
        {
            Text = "{#Emph}Si incroyable...",
        },
        {
            Text = "{#Emph}Si beauuuu...",
        },
    }
    table.insert(game.NarrativeData.NPC_Eris_01.InteractTextLinePriorities,1,chatName)
end

local function OverrideOdysseusChat()
    local chatName = _PLUGIN.guid .. '-' .."Odysseus" 
    game.EnemyData.NPC_Odysseus_01.InteractTextLineSets[chatName] = {

        Name = chatName,
        GameStateRequirements={},
        {
            Text = "text",
        },
    }
    table.insert(game.NarrativeData.NPC_Odysseus_01.InteractTextLinePriorities,1,chatName)
end

OverrideOdysseusChat()
OverrideCerberusChat()
OverrideErisChat()
OverrideNarcissusChat()
OverrideFrinosChat()
OverrideDoraChat()
OverrideHadesChat()
OverridePersephoneChat()
OverrideZeusChat()
OverrideSeleneChat()
OverrideZagreusChat()
OverrideCharonChat()
OverrideNyxChat()
OverrideDionysusChat()
OverrideNemesisChat()
