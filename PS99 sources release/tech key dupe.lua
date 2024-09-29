repeat task.wait(1) until game.PlaceId ~= nil
repeat task.wait(1) until game:GetService("Players") and game:GetService("Players").LocalPlayer
repeat task.wait(1) until not game.Players.LocalPlayer.PlayerGui:FindFirstChild("__INTRO")

print("doing shit")
local playerName = game.Players.LocalPlayer.Name

-- Find the local player by name
local player = game.Players:FindFirstChild(playerName)

if player then
    -- Set the desired coordinates
    local teleportPosition = Vector3.new(-9815.037109375, 25.061790466308594, -590.3173828125)
    
    -- Create a part at the teleport position
    local part = Instance.new("Part")
    part.Name = "part" -- Set the part's name to player's name
    part.Position = teleportPosition
    part.Anchored = true
    part.Size = Vector3.new(4, 1, 4)  -- Adjust the size of the part as needed
    part.BrickColor = BrickColor.new("Bright red")  -- Change color if desired
    part.Parent = game.Workspace
    
    -- Teleport the player to the part
    player.Character:MoveTo(part.Position)
    print("Teleported " .. playerName .. " to the created part at (-9815.037, 25.062, -590.317)")
    
    -- Remove specified objects from workspace
    local objectsToRemove = {"Map2", "ALWAYS_RENDERING_2", "Border", "Border2", "FlyBorder", "FlyBorder2"}
    for _, objectName in ipairs(objectsToRemove) do
        local object = game.Workspace:FindFirstChild(objectName)
        if object then
            object:Destroy()
            print("Removed workspace." .. objectName)
        else
            print("workspace." .. objectName .. " not found.")
        end
    end
    

else
    print(playerName .. " not found.")
end
print("done")

local noti = game:GetService("Players").LocalPlayer.PlayerGui.Notifications
    noti:GetPropertyChangedSignal("Enabled"):Connect(
        function()
            noti.Enabled = false
        end
    )
noti.Enabled = false

pcall(function()
    for _, v in pairs(game:GetService("Workspace"):FindFirstChild("__THINGS"):GetChildren()) do
        if table.find({"ShinyRelics", "Ornaments", "Instances", "Ski Chairs"}, v.Name) then
            v:Destroy()
        end
    end

    for _, v in pairs(game:GetService("Workspace"):FindFirstChild("__THINGS").__INSTANCE_CONTAINER.Active.AdvancedFishing:GetChildren()) do
        if string.find(v.Name, "Model") or string.find(v.Name, "Water") or string.find(v.Name, "Debris") or string.find(v.Name, "Interactable") then
            v:Destroy()
        end

        if v.Name == "Map" then
            for _, v in pairs(v:GetChildren()) do
                if v.Name ~= "Union" then
                    v:Destroy()
                end
            end
        end
    end

    game:GetService("Workspace"):WaitForChild("ALWAYS_RENDERING"):Destroy()
end)

wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,304,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti Afk Kick Script"ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,304,0,107)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,304,0,21)_b.Font=Enum.Font.Arial;_b.Text="Made by XxSwordmaster_2xX"
_b.TextColor3=Color3.new(1,1,1)_b.TextSize=20;ab.Parent=da
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377379,0)
ab.Size=UDim2.new(0,304,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Script Started"
ab.TextColor3=Color3.new(1,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text="You went idle and ROBLOX tried to kick you but we reflected it!"wait(2)ab.Text="Script Re-Enabled"end)

local autoOrbConnection = nil
local autoLootBagConnection = nil
local RepStor = game:GetService("ReplicatedStorage")
local Library = require(RepStor.Library)
workspace = game:GetService("Workspace")
for i, v in workspace.__THINGS.Orbs:GetChildren() do
    Library.Network.Fire("Orbs: Collect",{tonumber(v.Name)})
    Library.Network.Fire("Orbs_ClaimMultiple",{[1]={[1]=v.Name}})
    task.wait()
    v:Destroy()
end
for i, v in workspace.__THINGS.Lootbags:GetChildren() do
    Library.Network.Fire("Lootbags_Claim",{v.Name})
    task.wait()
    v:Destroy()
end
autoOrbConnection = workspace.__THINGS.Orbs.ChildAdded:Connect(function(v)
    Library.Network.Fire("Orbs: Collect",{tonumber(v.Name)})
    Library.Network.Fire("Orbs_ClaimMultiple",{[1]={[1]=v.Name}})
    task.wait()
    v:Destroy()
end)
autoLootBagConnection = workspace.__THINGS.Lootbags.ChildAdded:Connect(function(v)
    Library.Network.Fire("Lootbags_Claim",{v.Name})
    task.wait()
    v:Destroy()
end)

local Workspace = game:GetService("Workspace")
local Terrain = Workspace:WaitForChild("Terrain")
Terrain.WaterReflectance = 0
Terrain.WaterTransparency = 1
Terrain.WaterWaveSize = 0
Terrain.WaterWaveSpeed = 0

local Lighting = game:GetService("Lighting")
Lighting.Brightness = 0
Lighting.GlobalShadows = false
Lighting.FogEnd = 9e100
Lighting.FogStart = 0

sethiddenproperty(Lighting, "Technology", 2)
sethiddenproperty(Terrain, "Decoration", false)

local function clearTextures(v)
    if v:IsA("BasePart") and not v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.Transparency = 1
    elseif (v:IsA("Decal") or v:IsA("Texture")) then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    elseif v:IsA("SpecialMesh")  then
        v.TextureId = 0
    elseif v:IsA("ShirtGraphic") then
        v.Graphic = 1
    elseif (v:IsA("Shirt") or v:IsA("Pants")) then
        v[v.ClassName .. "Template"] = 1
    elseif v.Name == "Foilage" and v:IsA("Folder") then
        v:Destroy()
    elseif string.find(v.Name, "Tree") or string.find(v.Name, "Water") or string.find(v.Name, "Bush") or string.find(v.Name, "grass") then
        task.wait()
        v:Destroy()
    end
end

game:GetService("Lighting"):ClearAllChildren()

for _, v in pairs(Workspace:GetDescendants()) do
    clearTextures(v)
end

Workspace.DescendantAdded:Connect(function(v)
    clearTextures(v)
end)

for _, v in pairs(game.Players:GetChildren()) do
    for _, v2 in pairs(v.Character:GetDescendants()) do
        if v2:IsA("BasePart") or v2:IsA("Decal") then
            v2.Transparency = 1
        end
    end
end

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        for _, v in pairs(character:GetDescendants()) do
            if v:IsA("BasePart") or v:IsA("Decal") then
                v.Transparency = 1
            end
        end
    end)
end)

for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
    if v:IsA("ScreenGui") then
        v.Enabled = false
    end
end

for i, v in pairs(game:GetService("StarterGui"):GetChildren()) do
    if v:IsA("ScreenGui") then
        v.Enabled = false
    end
end

for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v:IsA("ScreenGui") then
        v.Enabled = false
    end
end
setfpscap(60)

a = 0
while true do
    wait(0.1)
    a = a + 1
    spawn(function()
        while true do
            game:GetService("ReplicatedStorage").Network.TechKey_Unlock:InvokeServer()
        end
    end)
    if a == 50 then
        break
    end
end
game:GetService("RunService"):Set3dRenderingEnabled(false)


-- game:GetService("ReplicatedStorage").Network.CrystalKey_Unlock:InvokeServer()


-- SERVERHOP

local function serverhop1()
    print("Server hop is triggered")
    local response = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=50"))
    if response and response["data"] then
        for i, v in pairs(response["data"]) do
            if v["playing"] ~= v["maxPlayers"] then
                game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v["id"])
                break
            end
        end
    else
        print("Error: failed to decode JSON response or missing data field.")
    end
end
while true do
wait(0.1)
serverhop1()
end


game:GetService("RunService"):Set3dRenderingEnabled(false)


game:GetService("RunService"):Set3dRenderingEnabled(true)

