local PlaceId = game.PlaceId;
getgenv().binary = loadstring(game:HttpGet("https://raw.githubusercontent.com/therealbinary/BinaryBackend/main/Functions.lua", true))()
local Lists = loadstring(game:HttpGet("https://raw.githubusercontent.com/therealbinary/BinaryBackend/main/WBList.lua", true))()
if (Lists.Blacklist[game.Players.LocalPlayer.UserId]) then binary.Notify("binary | information", "user has been blacklisted from binary by its developer", 10); return; end;
local SupportedGames = {
    [8540346411] = "Rebirth Champions X";
}
if SupportedGames[PlaceId] then 
    local ScriptState = loadstring(game:HttpGet("https://raw.githubusercontent.com/therealbinary/BinaryBackend/main/Status.lua", true))()
    if ScriptState[PlaceId] then
       if ScriptState[PlaceId].ScriptDown == true then binary.Notify("binary | error", "script is down, wait for developer to restore its functionality", 4); end;
       local scs, err = pcall(function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/therealbinary/BinaryGames/main/"..PlaceId..".lua", true))()
       end)
       if scs then binary.Notify("binary | success", "script is being loaded, hang on, this shouldn't take more than 3 seconds", 4) elseif err then binary.Notify("binary | error", "script caught an error, report this issue and wait for developer to update the script", 4);end;
    end
end 
