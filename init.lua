local PlaceId = game.PlaceId;
getgenv().f = loadstring(game:HttpGet("https://raw.githubusercontent.com/therealbinary/BinaryBackend/main/Functions.lua", true))()
local Lists = loadstring(game:HttpGet("https://raw.githubusercontent.com/therealbinary/BinaryBackend/main/WBList.lua", true))()
if (Lists.Blacklist[game.Players.LocalPlayer.UserId]) then binary.Notify("binary | information", "user has been blacklisted from binary by its developer", 10); return; end;
local ScriptState = loadstring(game:HttpGet("https://raw.githubusercontent.com/therealbinary/BinaryBackend/main/Status.lua", true))()
if ScriptState[PlaceId] then 
    if ScriptState[PlaceId].ScriptDown == true then f.Notify("binary | error", "script is down, wait for developer to restore its functionality", 4); end;
    local scs, err = pcall(function()
          local vu = game:GetService("VirtualUser")game:GetService("Players").LocalPlayer.Idled:connect(function()   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)   wait(1)   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end)
          loadstring(game:HttpGet("https://raw.githubusercontent.com/therealbinary/BinaryGames/main/"..PlaceId..".lua", true))()
    end)
    if scs then f.Notify("binary | success", "script is being loaded, hang on, this shouldn't take more than 3 seconds", 4) elseif err then f.Notify("binary | error", "script caught an error, report this issue and wait for developer to update the script", 4);end;
else
    f.Notify("binary | error", "game is not yet supported by binary", 4)
end
