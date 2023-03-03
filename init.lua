local PlaceId = game.PlaceId;
local SupportedGames = {
    [8540346411] = "Rebirth Champions X";
}
if SupportedGames[PlaceId] then 
    local ScriptState = loadstring(game:HttpGet("https://raw.githubusercontent.com/therealbinary/BinaryBackend/main/Status.lua", true))()
    if ScriptState[PlaceId] then
       if ScriptState[PlaceId].ScriptDown == true then game.Players.LocalPlayer:Kick("binary | script down"); wait(3) game:Shutdown(); end;
       local scs, err = pcall(function()
          loadstring(game:HttpGet("https://github.com/therealbinary/BinaryGames/blob/main/"..PlaceId..".lua", true))()
       end)
       if scs then print("successfully loaded binary!") elseif err then game.Players.LocalPlayer:Kick("binary | script caught an error"); wait(3) game:Shutdown(); end;
    end
end 
